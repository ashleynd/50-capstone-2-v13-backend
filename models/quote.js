"use strict";

const db = require("../db");
const { NotFoundError} = require("../expressError");
const { sqlForPartialUpdate } = require("../helpers/sql");


/** Related functions for authors. */

class Quote {
  /** Create a quote (from data), update db, return new quote data.
   *
   * data should be { title, salary, equity, authorHandle }
   *
   * Returns { id, title, salary, equity, authorHandle }
   **/

  static async create(data) {
    const result = await db.query(
          `INSERT INTO quotes (title,
                             salary,
                             equity,
                             author_handle)
           VALUES ($1, $2, $3, $4)
           RETURNING id, title, salary, equity, author_handle AS "authorHandle"`,
        [
          data.title,
          data.salary,
          data.equity,
          data.authorHandle,
        ]);
    let quote = result.rows[0];

    return quote;
  }

  /** Find all quotes (optional filter on searchFilters).
   *
   * searchFilters (all optional):
   * - minSalary
   * - hasEquity (true returns only quotes with equity > 0, other values ignored)
   * - title (will find case-insensitive, partial matches)
   *
   * Returns [{ id, title, salary, equity, authorHandle, authorName }, ...]
   * */

  static async findAll({ minSalary, hasEquity, title } = {}) {
    let query = `SELECT j.id,
                        j.title,
                        j.salary,
                        j.equity,
                        j.author_handle AS "authorHandle",
                        c.name AS "authorName"
                 FROM quotes j 
                   LEFT JOIN authors AS c ON c.handle = j.author_handle`;
    let whereExpressions = [];
    let queryValues = [];

    // For each possible search term, add to whereExpressions and
    // queryValues so we can generate the right SQL

    if (minSalary !== undefined) {
      queryValues.push(minSalary);
      whereExpressions.push(`salary >= $${queryValues.length}`);
    }

    if (hasEquity === true) {
      whereExpressions.push(`equity > 0`);
    }

    if (title !== undefined) {
      queryValues.push(`%${title}%`);
      whereExpressions.push(`title ILIKE $${queryValues.length}`);
    }

    if (whereExpressions.length > 0) {
      query += " WHERE " + whereExpressions.join(" AND ");
    }

    // Finalize query and return results

    query += " ORDER BY title";
    const quotesRes = await db.query(query, queryValues);
    return quotesRes.rows;
  }

  /** Given a quote id, return data about quote.
   *
   * Returns { id, title, salary, equity, authorHandle, author }
   *   where author is { handle, name, description, numEmployees, logoUrl }
   *
   * Throws NotFoundError if not found.
   **/

  static async get(id) {
    const quoteRes = await db.query(
          `SELECT id,
                  title,
                  salary,
                  equity,
                  author_handle AS "authorHandle"
           FROM quotes
           WHERE id = $1`, [id]);

    const quote = quoteRes.rows[0];

    if (!quote) throw new NotFoundError(`No quote: ${id}`);

    const authorsRes = await db.query(
          `SELECT handle,
                  name,
                  description,
                  num_employees AS "numEmployees",
                  logo_url AS "logoUrl"
           FROM authors
           WHERE handle = $1`, [quote.authorHandle]);

    delete quote.authorHandle;
    quote.author = authorsRes.rows[0];

    return quote;
  }

  /** Update quote data with `data`.
   *
   * This is a "partial update" --- it's fine if data doesn't contain
   * all the fields; this only changes provided ones.
   *
   * Data can include: { title, salary, equity }
   *
   * Returns { id, title, salary, equity, authorHandle }
   *
   * Throws NotFoundError if not found.
   */

  static async update(id, data) {
    const { setCols, values } = sqlForPartialUpdate(
        data,
        {});
    const idVarIdx = "$" + (values.length + 1);

    const querySql = `UPDATE quotes 
                      SET ${setCols} 
                      WHERE id = ${idVarIdx} 
                      RETURNING id, 
                                title, 
                                salary, 
                                equity,
                                author_handle AS "authorHandle"`;
    const result = await db.query(querySql, [...values, id]);
    const quote = result.rows[0];

    if (!quote) throw new NotFoundError(`No quote: ${id}`);

    return quote;
  }

  /** Delete given quote from database; returns undefined.
   *
   * Throws NotFoundError if author not found.
   **/

  static async remove(id) {
    const result = await db.query(
          `DELETE
           FROM quotes
           WHERE id = $1
           RETURNING id`, [id]);
    const quote = result.rows[0];

    if (!quote) throw new NotFoundError(`No quote: ${id}`);
  }
}

module.exports = Quote;
