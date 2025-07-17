CREATE TABLE projects (
  id          UUID        NOT NULL DEFAULT uuid_generate_v4(),
  name        TEXT        NOT NULL DEFAULT '',
  description TEXT        NOT NULL DEFAULT '',

  metadata    JSON        NOT NULL  DEFAULT '{}'::JSON,
  created_at  TIMESTAMPTZ NOT NULL  DEFAULT now(),

  PRIMARY KEY(id)
);
