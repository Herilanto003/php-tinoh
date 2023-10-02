--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: mot_cle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mot_cle (
    id_mot_cle integer NOT NULL,
    mot_cle character varying(255) NOT NULL
);


ALTER TABLE public.mot_cle OWNER TO postgres;

--
-- Name: mot_cle_id_mot_cle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mot_cle_id_mot_cle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mot_cle_id_mot_cle_seq OWNER TO postgres;

--
-- Name: mot_cle_id_mot_cle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mot_cle_id_mot_cle_seq OWNED BY public.mot_cle.id_mot_cle;


--
-- Name: nature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nature (
    id_nature integer NOT NULL,
    nature character varying(255) NOT NULL,
    abrev character varying(20)
);


ALTER TABLE public.nature OWNER TO postgres;

--
-- Name: nature_id_nature_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nature_id_nature_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nature_id_nature_seq OWNER TO postgres;

--
-- Name: nature_id_nature_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nature_id_nature_seq OWNED BY public.nature.id_nature;


--
-- Name: texte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.texte (
    id_text integer NOT NULL,
    texte text,
    situation character varying(255),
    date date,
    annee integer,
    numero character varying(20),
    id_theme integer,
    id_nature integer
);


ALTER TABLE public.texte OWNER TO postgres;

--
-- Name: texte_id_text_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.texte_id_text_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.texte_id_text_seq OWNER TO postgres;

--
-- Name: texte_id_text_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.texte_id_text_seq OWNED BY public.texte.id_text;


--
-- Name: theme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.theme (
    id_theme integer NOT NULL,
    theme character varying(255) NOT NULL,
    id_parent integer,
    id_nature integer
);


ALTER TABLE public.theme OWNER TO postgres;

--
-- Name: theme_id_theme_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.theme_id_theme_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.theme_id_theme_seq OWNER TO postgres;

--
-- Name: theme_id_theme_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.theme_id_theme_seq OWNED BY public.theme.id_theme;


--
-- Name: mot_cle id_mot_cle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mot_cle ALTER COLUMN id_mot_cle SET DEFAULT nextval('public.mot_cle_id_mot_cle_seq'::regclass);


--
-- Name: nature id_nature; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nature ALTER COLUMN id_nature SET DEFAULT nextval('public.nature_id_nature_seq'::regclass);


--
-- Name: texte id_text; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.texte ALTER COLUMN id_text SET DEFAULT nextval('public.texte_id_text_seq'::regclass);


--
-- Name: theme id_theme; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theme ALTER COLUMN id_theme SET DEFAULT nextval('public.theme_id_theme_seq'::regclass);


--
-- Name: mot_cle mot_cle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mot_cle
    ADD CONSTRAINT mot_cle_pkey PRIMARY KEY (id_mot_cle);


--
-- Name: nature nature_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nature
    ADD CONSTRAINT nature_pkey PRIMARY KEY (id_nature);


--
-- Name: texte texte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.texte
    ADD CONSTRAINT texte_pkey PRIMARY KEY (id_text);


--
-- Name: theme theme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theme
    ADD CONSTRAINT theme_pkey PRIMARY KEY (id_theme);


--
-- Name: texte texte_id_nature_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.texte
    ADD CONSTRAINT texte_id_nature_fkey FOREIGN KEY (id_nature) REFERENCES public.nature(id_nature);


--
-- Name: texte texte_id_theme_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.texte
    ADD CONSTRAINT texte_id_theme_fkey FOREIGN KEY (id_theme) REFERENCES public.theme(id_theme);


--
-- Name: theme theme_id_nature_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theme
    ADD CONSTRAINT theme_id_nature_fkey FOREIGN KEY (id_nature) REFERENCES public.nature(id_nature);


--
-- Name: theme theme_id_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theme
    ADD CONSTRAINT theme_id_parent_fkey FOREIGN KEY (id_parent) REFERENCES public.theme(id_theme);


--
-- PostgreSQL database dump complete
--

