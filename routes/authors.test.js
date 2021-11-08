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

/************************************** POST /authors */

describe("POST /authors", function () {
  const newAuthor = {
    handle: "new",
    name: "New",
    logoUrl: "http://new.img",
    description: "DescNew",
    numEmployees: 10,
  };

  test("ok for admin", async function () {
    const resp = await request(app)
        .post("/authors")
        .send(newAuthor)
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(201);
    expect(resp.body).toEqual({
      author: newAuthor,
    });
  });

  test("unauth for non-admin", async function () {
    const resp = await request(app)
        .post("/authors")
        .send(newAuthor)
        .set("authorization", `Bearer ${u1Token}`);
    expect(resp.statusCode).toEqual(401);
  });

  test("bad request with missing data", async function () {
    const resp = await request(app)
        .post("/authors")
        .send({
          handle: "new",
          numEmployees: 10,
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });

  test("bad request with invalid data", async function () {
    const resp = await request(app)
        .post("/authors")
        .send({
          ...newAuthor,
          logoUrl: "not-a-url",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });
});

/************************************** GET /authors */

describe("GET /authors", function () {
  test("ok for anon", async function () {
    const resp = await request(app).get("/authors");
    expect(resp.body).toEqual({
      authors:
          [
            {
              handle: "c1",
              name: "C1",
              description: "Desc1",
              numEmployees: 1,
              logoUrl: "http://c1.img",
            },
            {
              handle: "c2",
              name: "C2",
              description: "Desc2",
              numEmployees: 2,
              logoUrl: "http://c2.img",
            },
            {
              handle: "c3",
              name: "C3",
              description: "Desc3",
              numEmployees: 3,
              logoUrl: "http://c3.img",
            },
          ],
    });
  });

  test("works: filtering", async function () {
    const resp = await request(app)
        .get("/authors")
        .query({ minEmployees: 3 });
    expect(resp.body).toEqual({
      authors: [
        {
          handle: "c3",
          name: "C3",
          description: "Desc3",
          numEmployees: 3,
          logoUrl: "http://c3.img",
        },
      ],
    });
  });

  test("works: filtering on all filters", async function () {
    const resp = await request(app)
        .get("/authors")
        .query({ minEmployees: 2, maxEmployees: 3, name: "3" });
    expect(resp.body).toEqual({
      authors: [
        {
          handle: "c3",
          name: "C3",
          description: "Desc3",
          numEmployees: 3,
          logoUrl: "http://c3.img",
        },
      ],
    });
  });

  test("bad request if invalid filter key", async function () {
    const resp = await request(app)
        .get("/authors")
        .query({ minEmployees: 2, nope: "nope" });
    expect(resp.statusCode).toEqual(400);
  });
});

/************************************** GET /authors/:handle */

describe("GET /authors/:handle", function () {
  test("works for anon", async function () {
    const resp = await request(app).get(`/authors/c1`);
    expect(resp.body).toEqual({
      author: {
        handle: "c1",
        name: "C1",
        description: "Desc1",
        numEmployees: 1,
        logoUrl: "http://c1.img",
        quotes: [
          { id: testQuoteIds[0], title: "J1", equity: "0.1", salary: 1 },
          { id: testQuoteIds[1], title: "J2", equity: "0.2", salary: 2 },
          { id: testQuoteIds[2], title: "J3", equity: null, salary: 3 },
        ],
      },
    });
  });

  test("works for anon: author w/o quotes", async function () {
    const resp = await request(app).get(`/authors/c2`);
    expect(resp.body).toEqual({
      author: {
        handle: "c2",
        name: "C2",
        description: "Desc2",
        numEmployees: 2,
        logoUrl: "http://c2.img",
        quotes: [],
      },
    });
  });

  test("not found for no such author", async function () {
    const resp = await request(app).get(`/authors/nope`);
    expect(resp.statusCode).toEqual(404);
  });
});

/************************************** PATCH /authors/:handle */

describe("PATCH /authors/:handle", function () {
  test("works for admin", async function () {
    const resp = await request(app)
        .patch(`/authors/c1`)
        .send({
          name: "C1-new",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.body).toEqual({
      author: {
        handle: "c1",
        name: "C1-new",
        description: "Desc1",
        numEmployees: 1,
        logoUrl: "http://c1.img",
      },
    });
  });

  test("unauth for non-admin", async function () {
    const resp = await request(app)
        .patch(`/authors/c1`)
        .send({
          name: "C1-new",
        })
        .set("authorization", `Bearer ${u1Token}`);
    expect(resp.statusCode).toEqual(401);
  });

  test("unauth for anon", async function () {
    const resp = await request(app)
        .patch(`/authors/c1`)
        .send({
          name: "C1-new",
        });
    expect(resp.statusCode).toEqual(401);
  });

  test("not found on no such author", async function () {
    const resp = await request(app)
        .patch(`/authors/nope`)
        .send({
          name: "new nope",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(404);
  });

  test("bad request on handle change attempt", async function () {
    const resp = await request(app)
        .patch(`/authors/c1`)
        .send({
          handle: "c1-new",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });

  test("bad request on invalid data", async function () {
    const resp = await request(app)
        .patch(`/authors/c1`)
        .send({
          logoUrl: "not-a-url",
        })
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(400);
  });
});

/************************************** DELETE /authors/:handle */

describe("DELETE /authors/:handle", function () {
  test("works for admin", async function () {
    const resp = await request(app)
        .delete(`/authors/c1`)
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.body).toEqual({ deleted: "c1" });
  });

  test("unauth for non-admin", async function () {
    const resp = await request(app)
        .delete(`/authors/c1`)
        .set("authorization", `Bearer ${u1Token}`);
    expect(resp.statusCode).toEqual(401);
  });

  test("unauth for anon", async function () {
    const resp = await request(app)
        .delete(`/authors/c1`);
    expect(resp.statusCode).toEqual(401);
  });

  test("not found for no such author", async function () {
    const resp = await request(app)
        .delete(`/authors/nope`)
        .set("authorization", `Bearer ${adminToken}`);
    expect(resp.statusCode).toEqual(404);
  });
});
