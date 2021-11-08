"use strict";

const { NotFoundError, BadRequestError } = require("../expressError");
const db = require("../db.js");
const Quote = require("./quote.js");
const {
  commonBeforeAll,
  commonBeforeEach,
  commonAfterEach,
  commonAfterAll,
  testQuoteIds,
} = require("./_testCommon");

beforeAll(commonBeforeAll);
beforeEach(commonBeforeEach);
afterEach(commonAfterEach);
afterAll(commonAfterAll);

/************************************** create */

describe("create", function () {
  let newQuote = {
    authorHandle: "c1",
    title: "Test",
    salary: 100,
    equity: "0.1",
  };

  test("works", async function () {
    let quote = await Quote.create(newQuote);
    expect(quote).toEqual({
      ...newQuote,
      id: expect.any(Number),
    });
  });
});

/************************************** findAll */

describe("findAll", function () {
  test("works: no filter", async function () {
    let quotes = await Quote.findAll();
    expect(quotes).toEqual([
      {
        id: testQuoteIds[0],
        title: "Quote1",
        salary: 100,
        equity: "0.1",
        authorHandle: "c1",
        authorName: "C1",
      },
      {
        id: testQuoteIds[1],
        title: "Quote2",
        salary: 200,
        equity: "0.2",
        authorHandle: "c1",
        authorName: "C1",
      },
      {
        id: testQuoteIds[2],
        title: "Quote3",
        salary: 300,
        equity: "0",
        authorHandle: "c1",
        authorName: "C1",
      },
      {
        id: testQuoteIds[3],
        title: "Quote4",
        salary: null,
        equity: null,
        authorHandle: "c1",
        authorName: "C1",
      },
    ]);
  });

  test("works: by min salary", async function () {
    let quotes = await Quote.findAll({ minSalary: 250 });
    expect(quotes).toEqual([
      {
        id: testQuoteIds[2],
        title: "Quote3",
        salary: 300,
        equity: "0",
        authorHandle: "c1",
        authorName: "C1",
      },
    ]);
  });

  test("works: by equity", async function () {
    let quotes = await Quote.findAll({ hasEquity: true });
    expect(quotes).toEqual([
      {
        id: testQuoteIds[0],
        title: "Quote1",
        salary: 100,
        equity: "0.1",
        authorHandle: "c1",
        authorName: "C1",
      },
      {
        id: testQuoteIds[1],
        title: "Quote2",
        salary: 200,
        equity: "0.2",
        authorHandle: "c1",
        authorName: "C1",
      },
    ]);
  });

  test("works: by min salary & equity", async function () {
    let quotes = await Quote.findAll({ minSalary: 150, hasEquity: true });
    expect(jquote).toEqual([
      {
        id: testQuoteIds[1],
        title: "Quote2",
        salary: 200,
        equity: "0.2",
        authorHandle: "c1",
        authorName: "C1",
      },
    ]);
  });

  test("works: by name", async function () {
    let quotes = await Quote.findAll({ title: "ob1" });
    expect(quotes).toEqual([
      {
        id: testQuoteIds[0],
        title: "Quote1",
        salary: 100,
        equity: "0.1",
        authorHandle: "c1",
        authorName: "C1",
      },
    ]);
  });
});

/************************************** get */

describe("get", function () {
  test("works", async function () {
    let quote = await Quote.get(testQuoteIds[0]);
    expect(quote).toEqual({
      id: testQuoteIds[0],
      title: "Quote1",
      salary: 100,
      equity: "0.1",
      author: {
        handle: "c1",
        name: "C1",
        description: "Desc1",
        numEmployees: 1,
        logoUrl: "http://c1.img",
      },
    });
  });

  test("not found if no such quote", async function () {
    try {
      await Quote.get(0);
      fail();
    } catch (err) {
      expect(err instanceof NotFoundError).toBeTruthy();
    }
  });
});

/************************************** update */

describe("update", function () {
  let updateData = {
    title: "New",
    salary: 500,
    equity: "0.5",
  };
  test("works", async function () {
    let quote = await Quote.update(testQuoteIds[0], updateData);
    expect(quote).toEqual({
      id: testQuoteIds[0],
      authorHandle: "c1",
      ...updateData,
    });
  });

  test("not found if no such quote", async function () {
    try {
      await Quote.update(0, {
        title: "test",
      });
      fail();
    } catch (err) {
      expect(err instanceof NotFoundError).toBeTruthy();
    }
  });

  test("bad request with no data", async function () {
    try {
      await Quote.update(testQuoteIds[0], {});
      fail();
    } catch (err) {
      expect(err instanceof BadRequestError).toBeTruthy();
    }
  });
});

/************************************** remove */

describe("remove", function () {
  test("works", async function () {
    await Quote.remove(testQuoteIds[0]);
    const res = await db.query(
        "SELECT id FROM quotes WHERE id=$1", [testQuoteIds[0]]);
    expect(res.rows.length).toEqual(0);
  });

  test("not found if no such quote", async function () {
    try {
      await Quote.remove(0);
      fail();
    } catch (err) {
      expect(err instanceof NotFoundError).toBeTruthy();
    }
  });
});
