schema
authorTableSchema
^ '
CREATE TABLE Author
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  updated TIMESTAMP WITHOUT time zone DEFAULT now() NOT NULL,
  created TIMESTAMP WITHOUT time zone DEFAULT now() NOT NULL 
)
'