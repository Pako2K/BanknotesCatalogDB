-- Role: "AppAPI"
-- DROP ROLE "AppAPI";

CREATE ROLE "AppAPI" WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md53b4430c24cec00c92dfe32ec13a40388';
  
  -- Default password: "AppAPI"