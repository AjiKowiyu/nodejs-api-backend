--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2024-03-12 21:43:48

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
-- TOC entry 219 (class 1259 OID 16511)
-- Name: api_access; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_access (
    id integer NOT NULL,
    key character varying(50),
    "limit" integer,
    owner character varying(50),
    status integer
);


ALTER TABLE public.api_access OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16510)
-- Name: api_access_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_access_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_access_id_seq OWNER TO postgres;

--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 218
-- Name: api_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_access_id_seq OWNED BY public.api_access.id;


--
-- TOC entry 3180 (class 2604 OID 16514)
-- Name: api_access id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_access ALTER COLUMN id SET DEFAULT nextval('public.api_access_id_seq'::regclass);


--
-- TOC entry 3326 (class 0 OID 16511)
-- Dependencies: 219
-- Data for Name: api_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_access (id, key, "limit", owner, status) VALUES (1, '3S1fLuu8', 1000, 'Wakid', 1);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 218
-- Name: api_access_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_access_id_seq', 1, true);


--
-- TOC entry 3182 (class 2606 OID 16516)
-- Name: api_access api_access_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_access
    ADD CONSTRAINT api_access_pkey PRIMARY KEY (id);


-- Completed on 2024-03-12 21:43:49

--
-- PostgreSQL database dump complete
--

