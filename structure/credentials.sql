--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-05-16 17:34:55

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
-- TOC entry 202 (class 1259 OID 16522)
-- Name: cre_credentials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cre_credentials (
    cre_username text NOT NULL,
    cre_salt text NOT NULL,
    cre_hashed_pwd text NOT NULL,
    cre_mail text NOT NULL,
    cre_is_admin integer NOT NULL,
    cre_state integer NOT NULL,
    cre_validation_code text,
    cre_last_connection text,
    cre_insert_timestamp timestamp without time zone DEFAULT (now())::timestamp(0) without time zone
);


ALTER TABLE public.cre_credentials OWNER TO postgres;

--
-- TOC entry 2820 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN cre_credentials.cre_state; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cre_credentials.cre_state IS '-1 = to be validated
0 = active
1 = 1 failed validation attempt
2 = 2 failed validation attempts
3 = 3 (and final) failed validation attempts => user is invalid
';


--
-- TOC entry 2688 (class 2606 OID 16529)
-- Name: cre_credentials cre_credentials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cre_credentials
    ADD CONSTRAINT cre_credentials_pkey PRIMARY KEY (cre_username);


--
-- TOC entry 2821 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE cre_credentials; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.cre_credentials TO "AppAPI";


-- Completed on 2020-05-16 17:34:55

--
-- PostgreSQL database dump complete
--

