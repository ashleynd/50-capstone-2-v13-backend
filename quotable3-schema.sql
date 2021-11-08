-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/CKfso0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "authors" (
    "handle" VARCHAR(25)   NOT NULL,
    "name" TEXT   NOT NULL,
    "num_employees" INTEGER   NOT NULL,
    "description" TEXT   NOT NULL,
    "logo_url" TEXT   NOT NULL,
    CONSTRAINT "pk_authors" PRIMARY KEY (
        "handle"
     ),
    CONSTRAINT "uc_authors_name" UNIQUE (
        "name"
    )
);

CREATE TABLE "users" (
    "username" VARCHAR(25)   NOT NULL,
    "password" TEXT   NOT NULL,
    "first_name" TEXT   NOT NULL,
    "last_name" TEXT   NOT NULL,
    "email" TEXT   NOT NULL,
    "is_admin" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_users" PRIMARY KEY (
        "username"
     )
);

CREATE TABLE "quotes" (
    "id" SERIAL   NOT NULL,
    "title" TEXT   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "equity" NUMERIC   NOT NULL,
    "author_handle" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_quotes" PRIMARY KEY (
        "id","title"
     )
);

CREATE TABLE "likes" (
    "username" VARCHAR(25)   NOT NULL,
    "quotes_id" INTEGER   NOT NULL,
    "quotes_title" TEXT   NOT NULL,
    CONSTRAINT "pk_likes" PRIMARY KEY (
        "quotes_id"
     )
);

ALTER TABLE "quotes" ADD CONSTRAINT "fk_quotes_author_handle" FOREIGN KEY("author_handle")
REFERENCES "authors" ("handle");

ALTER TABLE "likes" ADD CONSTRAINT "fk_likes_username" FOREIGN KEY("username")
REFERENCES "users" ("username");

ALTER TABLE "likes" ADD CONSTRAINT "fk_likes_quotes_id_quotes_title" FOREIGN KEY("quotes_id", "quotes_title")
REFERENCES "quotes" ("id", "title");



-- authors
-- -
-- handle VARCHAR(25) PK
-- name TEXT UNIQUE
-- num_employees INTEGER
-- description TEXT
-- logo_url TEXT

-- users
-- -
-- username VARCHAR(25) PK
-- password TEXT
-- first_name TEXT
-- last_name TEXT
-- email TEXT
-- is_admin BOOLEAN

-- quotes
-- -
-- id SERIAL PK
-- title TEXT PK
-- salary INTEGER
-- equity NUMERIC
-- author_handle VARCHAR(25) FK >- authors.handle

-- likes
-- -
-- username VARCHAR(25) FK >- users.username
-- quotes_id INTEGER PK FK >- quotes.id
-- quotes_title TEXT FK >- quotes.title