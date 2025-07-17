CREATE TABLE injunctions (
  id          UUID        NOT NULL DEFAULT uuid_generate_v4(),
  name        TEXT        NOT NULL DEFAULT '',
  description TEXT        NOT NULL DEFAULT '',

  PRIMARY KEY(id)
);
