CREATE TABLE processes (
  id          UUID        NOT NULL  DEFAULT uuid_generate_v4(),
  name        TEXT        NOT NULL  DEFAULT '',
  owner_id    UUID        NOT NULL,

  metadata    JSON        NOT NULL  DEFAULT '{}'::JSON,

  created_at  TIMESTAMPTZ NOT NULL  DEFAULT now(),

  PRIMARY KEY (id)
);
