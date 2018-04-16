schema
entryTableSchema
^ '
CREATE TABLE Entry
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  contents TEXT NOT NULL,
  updated TIMESTAMP WITHOUT time zone DEFAULT now() NOT NULL,
  created TIMESTAMP WITHOUT time zone DEFAULT now() NOT NULL
)
'