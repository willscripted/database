CREATE TABLE people (
  id          UUID        NOT NULL  DEFAULT uuid_generate_v4(),
  short_id    VARCHAR(3)  NOT NULL  REFERENCES short_ids_for_people(id),
  first_name        TEXT        NOT NULL  DEFAULT '',
  list_name         TEXT        NOT NULL  DEFAULT '',

  metadata    JSON        NOT NULL  DEFAULT '{}'::JSON,

  created_at  TIMESTAMPTZ NOT NULL  DEFAULT now(),

  PRIMARY KEY (id)
);

CREATE TABLE short_ids_for_people (
  id VARCHAR(3) NOT NULL UNIQUE,
  people_id UUID NULL,

  PRIMARY KEY (id)
);
