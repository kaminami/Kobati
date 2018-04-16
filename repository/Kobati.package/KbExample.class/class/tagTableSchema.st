schema
tagTableSchema
^ '
CREATE TABLE Tag
(
  id SERIAL PRIMARY KEY,
  tag TEXT NOT NULL,
  updated TIMESTAMP WITHOUT time zone DEFAULT now() NOT NULL,
  created TIMESTAMP WITHOUT time zone DEFAULT now() NOT NULL 
)
'