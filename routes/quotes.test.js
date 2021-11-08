"use strict";

const request = require("supertest");

const app = require("../app");

const {
  commonBeforeAll,
  commonBeforeEach,
  commonAfterEach,
  commonAfterAll,
  testQuoteIds,
  u1Token,
  adminToken,
} = require("./_testCommon");

beforeAll(commonBeforeAll);
beforeEach(commonBeforeEach);
afterEach(commonAfterEach);
afterAll(commonAfterAll);

/************************************** POST /quotes */

describe("POST /quotes", function () {
  test("ok for admin", async function () {
    const resp = await request(app)
        .post(`/quotes`)
        .send({
          authorHandle: "c1",
          title: "J-new",
          salary: 10,
          equity: "0.2",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(201);
    expect(resp.body).toEqual({
      quote: {
        id: expect.any(Number),
        title: "J-new",
        salary: 10,
        equity: "0.2",
        authorHandle: "c1",
      },
    });
  });

  test("unauth for users", async function () {
    const resp = await request(app)
        .post(`/quotes`)
        .send({
          authorHandle: "c1",
          title: "J-new",
          salary: 10,
          equity: "0.2",
        })
        .set("authorization", `Bearer ${u1Token}`);
    expect(resp.statusCode).toEqual(401);
  });

  test("bad request with missing data", async function () {
    const resp = await request(app)
        .post(`/quotes`)
        .send({
          authorHandle: "c1",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });

  test("bad request with invalid data", async function () {
    const resp = await request(app)
        .post(`/quotes`)
        .send({
          authorHandle: "c1",
          title: "J-new",
          salary: "not-a-number",
          equity: "0.2",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });

});

/************************************** GET /quotes */

describe("GET /quotes", function () {
  test("ok for anon", async function () {
    const resp = await request(app).get(`/quotes`);
    expect(resp.body).toEqual({
          quotes: [
            {
              id: expect.any(Number),
              title: "J1",
              salary: 1,
              equity: "0.1",
              authorHandle: "c1",
              authorName: "C1",
            },
            {
              id: expect.any(Number),
              title: "J2",
              salary: 2,
              equity: "0.2",
              authorHandle: "c1",
              authorName: "C1",
            },
            {
              id: expect.any(Number),
              title: "J3",
              salary: 3,
              equity: null,
              authorHandle: "c1",
              authorName: "C1",
            },
          ],
        },
    );
  });

  test("works: filtering", async function () {
    const resp = await request(app)
        .get(`/quotes`)
        .query({ hasEquity: true });
    expect(resp.body).toEqual({
          quotess: [
            {
              id: expect.any(Number),
              title: "J1",
              salary: 1,
              equity: "0.1",
              authorHandle: "c1",
              authorName: "C1",
            },
            {
              id: expect.any(Number),
              title: "J2",
              salary: 2,
              equity: "0.2",
              authorHandle: "c1",
              authorName: "C1",
            },
          ],
        },
    );
  });

  test("works: filtering on 2 filters", async function () {
    const resp = await request(app)
        .get(`/quotes`)
        .query({ minSalary: 2, title: "3" });
    expect(resp.body).toEqual({
          quotes: [
            {
              id: expect.any(Number),
              title: "J3",
              salary: 3,
              equity: null,
              authorHandle: "c1",
              authorName: "C1",
            },
          ],
        },
    );
  });

  test("bad request on invalid filter key", async function () {
    const resp = await request(app)
        .get(`/quotes`)
        .query({ minSalary: 2, nope: "nope" });
    expect(resp.statusCode).toEqual(400);
  });
});

/************************************** GET /quotes/:id */

describe("GET /quotes/:id", function () {
  test("works for anon", async function () {
    const resp = await request(app).get(`/quotes/${testQuoteIds[0]}`);
    expect(resp.body).toEqual({
      quote: {
        id: testQuoteIds[0],
        title: "J1",
        salary: 1,
        equity: "0.1",
        author: {
          handle: "c1",
          name: "C1",
          description: "Desc1",
          numEmployees: 1,
          logoUrl: "http://c1.img",
        },
      },
    });
  });

  test("not found for no such quote", async function () {
    const resp = await request(app).get(`/quotes/0`);
    expect(resp.statusCode).toEqual(404);
  });
});

/************************************** PATCH /quotes/:id */

describe("PATCH /quotes/:id", function () {
  test("works for admin", async function () {
    const resp = await request(app)
        .patch(`/quotes/${testQuoteIds[0]}`)
        .send({
          title: "J-New",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.body).toEqual({
      quote: {
        id: expect.any(Number),
        title: "J-New",
        salary: 1,
        equity: "0.1",
        authorHandle: "c1",
      },
    });
  });

  test("unauth for others", async function () {
    const resp = await request(app)
        .patch(`/quotes/${testQuoteIds[0]}`)
        .send({
          title: "J-New",
        })
        .set("authorization", `Bearer ${u1Token}`);
    expect(resp.statusCode).toEqual(401);
  });

  test("not found on no such quote", async function () {
    const resp = await request(app)
        .patch(`/quotes/0`)
        .send({
          handle: "new",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });

  test("bad request on handle change attempt", async function () {
    const resp = await request(app)
        .patch(`/quotes/${testQuoteIds[0]}`)
        .send({
          handle: "new",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });

  test("bad request with invalid data", async function () {
    const resp = await request(app)
        .patch(`/quotes/${testQuoteIds[0]}`)
        .send({
          salary: "not-a-number",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });
});

/************************************** DELETE /quotes/:id */

describe("DELETE /quotes/:id", function () {
  test("works for admin", async function () {
    const resp = await request(app)
        .delete(`/quotes/${testQuoteIds[0]}`)
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.body).toEqual({ deleted: testQuoteIds[0] });
  });

  test("unauth for others", async function () {
    const resp = await request(app)
        .delete(`/quotes/${testQuoteIds[0]}`)
        .set("authorization", `Bearer ${u1Token}`);
    expect(resp.statusCode).toEqual(401);
  });

  test("unauth for anon", async function () {
    const resp = await request(app)
        .delete(`/quotes/${testQuoteIds[0]}`);
    expect(resp.statusCode).toEqual(401);
  });

  test("not found for no such quote", async function () {
    const resp = await request(app)
        .delete(`/quotes/0`)
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(404);
  });
});
