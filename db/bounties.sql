DROP TABLE IF EXISTS bounties;

CREATE TABLE bounty_table (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  species VARCHAR(255),
  bounty_value INT8,
  homeworld VARCHAR(255)
);
