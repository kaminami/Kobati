schema
entry2AuthorTableSchema
^ '
CREATE TABLE Entry2Author
(
  id SERIAL PRIMARY KEY,
  entry_id INTEGER NOT NULL REFERENCES Entry (id) ON DELETE CASCADE,
  author_id INTEGER NOT NULL REFERENCES Author (id) ON DELETE CASCADE,
  created TIMESTAMP WITHOUT time zone DEFAULT now() NOT NULL,
  UNIQUE (entry_id, author_id)
)
'