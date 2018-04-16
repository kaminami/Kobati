schema
entry2TagTableSchema
^ '
CREATE TABLE Entry2Tag
(
  id SERIAL PRIMARY KEY,
  entry_id INTEGER NOT NULL REFERENCES Entry (id) ON DELETE CASCADE,
  tag_id INTEGER NOT NULL REFERENCES Tag (id) ON DELETE CASCADE,
  created TIMESTAMP without time zone DEFAULT now() NOT NULL,
  UNIQUE (entry_id, tag_id)
)
'