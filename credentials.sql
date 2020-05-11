--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cre_credentials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cre_credentials (
    cre_username text NOT NULL,
    cre_salt text NOT NULL,
    cre_hashed_pwd text NOT NULL,
    cre_mail text NOT NULL,
    cre_is_admin integer NOT NULL,
    cre_last_connection text
);


ALTER TABLE public.cre_credentials OWNER TO postgres;

--
-- Name: cre_credentials cre_credentials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cre_credentials
    ADD CONSTRAINT cre_credentials_pkey PRIMARY KEY (cre_username);


--
-- Name: TABLE cre_credentials; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.cre_credentials TO "AppAPI";


--
-- PostgreSQL database dump complete
--

