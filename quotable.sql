\echo 'Delete and recreate quotable db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE quotable;
CREATE DATABASE quotable;
\connect quotable

\i quotable-schema.sql
\i quotable-seed.sql

\echo 'Delete and recreate quotable_test db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE quotable_test;
CREATE DATABASE quotable_test;
\connect quotable_test

\i quotable-schema.sql
