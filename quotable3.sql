\echo 'Delete and recreate quotable3 db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE quotable3;
CREATE DATABASE quotable3;
\connect quotable3

\i quotable3-schema.sql
\i quotable3-seed.sql

\echo 'Delete and recreate quotable3_test db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE quotable3_test;
CREATE DATABASE quotable3_test;
\connect quotable3_test

\i quotable3-schema.sql
