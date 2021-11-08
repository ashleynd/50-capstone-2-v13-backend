"use strict";

/** Routes for quotes. */

const jsonschema = require("jsonschema");

const express = require("express");
const { BadRequestError } = require("../expressError");
const { ensureAdmin } = require("../middleware/auth");
const Quote = require("../models/quote");
const quoteNewSchema = require("../schemas/quoteNew.json");
const quoteUpdateSchema = require("../schemas/quoteUpdate.json");
const quoteSearchSchema = require("../schemas/quoteSearch.json");

const router = express.Router({ mergeParams: true });


/** POST / { quote } => { quote }
 *
 * quote should be { title, salary, equity, authorHandle }
 *
 * Returns { id, title, salary, equity, authorHandle }
 *
 * Authorization required: admin
 */

router.post("/", ensureAdmin, async function (req, res, next) {
  try {
    const validator = jsonschema.validate(req.body, quoteNewSchema);
    if (!validator.valid) {
      const errs = validator.errors.map(e => e.stack);
      throw new BadRequestError(errs);
    }

    const quote = await Quote.create(req.body);
    return res.status(201).json({ quote });
  } catch (err) {
    return next(err);
  }
});

/** GET / =>
 *   { quotes: [ { id, title, salary, equity, authorHandle, authorName }, ...] }
 *
 * Can provide search filter in query:
 * - minSalary
 * - hasEquity (true returns only quotes with equity > 0, other values ignored)
 * - title (will find case-insensitive, partial matches)

 * Authorization required: none
 */

router.get("/", async function (req, res, next) {
  const q = req.query;
  // arrive as strings from querystring, but we want as int/bool
  if (q.minSalary !== undefined) q.minSalary = +q.minSalary;
  q.hasEquity = q.hasEquity === "true";

  try {
    const validator = jsonschema.validate(q, quoteSearchSchema);
    if (!validator.valid) {
      const errs = validator.errors.map(e => e.stack);
      throw new BadRequestError(errs);
    }

    const quotes = await Quote.findAll(q);
    return res.json({ quotes });
  } catch (err) {
    return next(err);
  }
});

/** GET /[quoteId] => { quote }
 *
 * Returns { id, title, salary, equity, author }
 *   where author is { handle, name, description, numEmployees, logoUrl }
 *
 * Authorization required: none
 */

router.get("/:id", async function (req, res, next) {
  try {
    const quote = await Quote.get(req.params.id);
    return res.json({ quote });
  } catch (err) {
    return next(err);
  }
});


/** PATCH /[quoteId]  { fld1, fld2, ... } => { quote }
 *
 * Data can include: { title, salary, equity }
 *
 * Returns { id, title, salary, equity, authorHandle }
 *
 * Authorization required: admin
 */

router.patch("/:id", ensureAdmin, async function (req, res, next) {
  try {
    const validator = jsonschema.validate(req.body, quoteUpdateSchema);
    if (!validator.valid) {
      const errs = validator.errors.map(e => e.stack);
      throw new BadRequestError(errs);
    }

    const quote = await Quote.update(req.params.id, req.body);
    return res.json({ quote });
  } catch (err) {
    return next(err);
  }
});

/** DELETE /[handle]  =>  { deleted: id }
 *
 * Authorization required: admin
 */

router.delete("/:id", ensureAdmin, async function (req, res, next) {
  try {
    await Quote.remove(req.params.id);
    return res.json({ deleted: +req.params.id });
  } catch (err) {
    return next(err);
  }
});


module.exports = router;
