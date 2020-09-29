--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 9.6.18

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

--
-- Name: shobha; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA shobha;


ALTER SCHEMA shobha OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: prod_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prod_id
    START WITH 101
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prod_id OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: products; Type: TABLE; Schema: shobha; Owner: postgres
--

CREATE TABLE shobha.products (
    product_id integer NOT NULL,
    product_name character varying(300),
    company character varying(300),
    type character varying(300),
    size character varying(300),
    weight character varying
);


ALTER TABLE shobha.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: shobha; Owner: postgres
--

CREATE SEQUENCE shobha.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shobha.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: shobha; Owner: postgres
--

ALTER SEQUENCE shobha.products_product_id_seq OWNED BY shobha.products.product_id;


--
-- Name: receipt; Type: TABLE; Schema: shobha; Owner: postgres
--

CREATE TABLE shobha.receipt (
    receipt_id integer NOT NULL,
    receipt_details text,
    item_list text,
    user_id integer
);


ALTER TABLE shobha.receipt OWNER TO postgres;

--
-- Name: receipt_receipt_id_seq; Type: SEQUENCE; Schema: shobha; Owner: postgres
--

CREATE SEQUENCE shobha.receipt_receipt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shobha.receipt_receipt_id_seq OWNER TO postgres;

--
-- Name: receipt_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: shobha; Owner: postgres
--

ALTER SEQUENCE shobha.receipt_receipt_id_seq OWNED BY shobha.receipt.receipt_id;


--
-- Name: stock; Type: TABLE; Schema: shobha; Owner: postgres
--

CREATE TABLE shobha.stock (
    stock_id integer NOT NULL,
    receipt_id integer,
    product_name character varying(300),
    entry_type character varying(300),
    qty integer,
    receipt_date character varying(300)
);


ALTER TABLE shobha.stock OWNER TO postgres;

--
-- Name: stock_stock_id_seq; Type: SEQUENCE; Schema: shobha; Owner: postgres
--

CREATE SEQUENCE shobha.stock_stock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shobha.stock_stock_id_seq OWNER TO postgres;

--
-- Name: stock_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: shobha; Owner: postgres
--

ALTER SEQUENCE shobha.stock_stock_id_seq OWNED BY shobha.stock.stock_id;


--
-- Name: user; Type: TABLE; Schema: shobha; Owner: postgres
--

CREATE TABLE shobha."user" (
    user_id integer NOT NULL,
    username character varying(300),
    password character varying(300),
    role character varying(300),
    last_login character varying(200),
    full_name character varying(300)
);


ALTER TABLE shobha."user" OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: shobha; Owner: postgres
--

CREATE SEQUENCE shobha.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shobha.user_user_id_seq OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: shobha; Owner: postgres
--

ALTER SEQUENCE shobha.user_user_id_seq OWNED BY shobha."user".user_id;


--
-- Name: products product_id; Type: DEFAULT; Schema: shobha; Owner: postgres
--

ALTER TABLE ONLY shobha.products ALTER COLUMN product_id SET DEFAULT nextval('shobha.products_product_id_seq'::regclass);


--
-- Name: receipt receipt_id; Type: DEFAULT; Schema: shobha; Owner: postgres
--

ALTER TABLE ONLY shobha.receipt ALTER COLUMN receipt_id SET DEFAULT nextval('shobha.receipt_receipt_id_seq'::regclass);


--
-- Name: stock stock_id; Type: DEFAULT; Schema: shobha; Owner: postgres
--

ALTER TABLE ONLY shobha.stock ALTER COLUMN stock_id SET DEFAULT nextval('shobha.stock_stock_id_seq'::regclass);


--
-- Name: user user_id; Type: DEFAULT; Schema: shobha; Owner: postgres
--

ALTER TABLE ONLY shobha."user" ALTER COLUMN user_id SET DEFAULT nextval('shobha.user_user_id_seq'::regclass);


--
-- Name: prod_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prod_id', 101, false);


--
-- Data for Name: products; Type: TABLE DATA; Schema: shobha; Owner: postgres
--

COPY shobha.products (product_id, product_name, company, type, size, weight) FROM stdin;
\.


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: shobha; Owner: postgres
--

SELECT pg_catalog.setval('shobha.products_product_id_seq', 1, true);


--
-- Data for Name: receipt; Type: TABLE DATA; Schema: shobha; Owner: postgres
--

COPY shobha.receipt (receipt_id, receipt_details, item_list, user_id) FROM stdin;
\.


--
-- Name: receipt_receipt_id_seq; Type: SEQUENCE SET; Schema: shobha; Owner: postgres
--

SELECT pg_catalog.setval('shobha.receipt_receipt_id_seq', 1, true);


--
-- Data for Name: stock; Type: TABLE DATA; Schema: shobha; Owner: postgres
--

COPY shobha.stock (stock_id, receipt_id, product_name, entry_type, qty, receipt_date) FROM stdin;
\.


--
-- Name: stock_stock_id_seq; Type: SEQUENCE SET; Schema: shobha; Owner: postgres
--

SELECT pg_catalog.setval('shobha.stock_stock_id_seq', 1, true);


--
-- Data for Name: user; Type: TABLE DATA; Schema: shobha; Owner: postgres
--

COPY shobha."user" (user_id, username, password, role, last_login, full_name) FROM stdin;
2	udgirkarsanket	pbkdf2:sha256:150000$GRFjtHEp$59d5b1a95acccc4df0bb39a81d750c262304d5b61d1363d3cf1b03f014b8fb7b	admin	2020-05-31	Sanket Udgirkar
3	yarkalwadraju	pbkdf2:sha256:150000$EjEC1tDK$35abf1a1af09282cedd297e149d996d5f8e18978348a860819d2c29372bb1d24	user	2020-05-25	Raju Yarkalwad
1	udgirkarsandip	pbkdf2:sha256:150000$nlz09F6N$b059ba532ee7219a24665170d96900cec7c2ea2dc9faf1cd15d56ab558522172	user	2020-06-01	Sandip Udgirkar
\.


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: shobha; Owner: postgres
--

SELECT pg_catalog.setval('shobha.user_user_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

