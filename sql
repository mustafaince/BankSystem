--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    account_id integer NOT NULL,
    balance integer
);


ALTER TABLE public.account OWNER TO postgres;

--
-- Name: account_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_account_id_seq OWNER TO postgres;

--
-- Name: account_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account.account_id;


--
-- Name: cust_transact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cust_transact (
    custid integer NOT NULL,
    transact_id integer NOT NULL
);


ALTER TABLE public.cust_transact OWNER TO postgres;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    account_id integer NOT NULL,
    c_name character varying(50),
    c_surname character varying(50),
    phonenum character varying(50)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_customer_id_seq OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- Name: online_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.online_account (
    on_account_id integer NOT NULL,
    passwrd character varying(50)
);


ALTER TABLE public.online_account OWNER TO postgres;

--
-- Name: online_account_on_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.online_account_on_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.online_account_on_account_id_seq OWNER TO postgres;

--
-- Name: online_account_on_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.online_account_on_account_id_seq OWNED BY public.online_account.on_account_id;


--
-- Name: trans_action; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trans_action (
    transaction_id integer NOT NULL,
    trans_type character varying(50),
    date character varying(20),
    amount integer
);


ALTER TABLE public.trans_action OWNER TO postgres;

--
-- Name: trans_action_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trans_action_transaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trans_action_transaction_id_seq OWNER TO postgres;

--
-- Name: trans_action_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trans_action_transaction_id_seq OWNED BY public.trans_action.transaction_id;


--
-- Name: account account_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account ALTER COLUMN account_id SET DEFAULT nextval('public.account_account_id_seq'::regclass);


--
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- Name: online_account on_account_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.online_account ALTER COLUMN on_account_id SET DEFAULT nextval('public.online_account_on_account_id_seq'::regclass);


--
-- Name: trans_action transaction_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trans_action ALTER COLUMN transaction_id SET DEFAULT nextval('public.trans_action_transaction_id_seq'::regclass);


--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (account_id, balance) FROM stdin;
\.


--
-- Data for Name: cust_transact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cust_transact (custid, transact_id) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, account_id, c_name, c_surname, phonenum) FROM stdin;
\.


--
-- Data for Name: online_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.online_account (on_account_id, passwrd) FROM stdin;
\.


--
-- Data for Name: trans_action; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trans_action (transaction_id, trans_type, date, amount) FROM stdin;
\.


--
-- Name: account_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_account_id_seq', 1, false);


--
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);


--
-- Name: online_account_on_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.online_account_on_account_id_seq', 1, false);


--
-- Name: trans_action_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trans_action_transaction_id_seq', 1, false);


--
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (account_id);


--
-- Name: cust_transact cust_transact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cust_transact
    ADD CONSTRAINT cust_transact_pkey PRIMARY KEY (custid, transact_id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- Name: online_account online_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.online_account
    ADD CONSTRAINT online_account_pkey PRIMARY KEY (on_account_id);


--
-- Name: trans_action trans_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trans_action
    ADD CONSTRAINT trans_action_pkey PRIMARY KEY (transaction_id);


--
-- Name: cust_transact cust_transact_custid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cust_transact
    ADD CONSTRAINT cust_transact_custid_fkey FOREIGN KEY (custid) REFERENCES public.customer(customer_id);


--
-- Name: cust_transact cust_transact_transact_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cust_transact
    ADD CONSTRAINT cust_transact_transact_id_fkey FOREIGN KEY (transact_id) REFERENCES public.trans_action(transaction_id);


--
-- Name: customer customer_account_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.account(account_id);


--
-- PostgreSQL database dump complete
--

