--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Debian 15.4-1.pgdg120+1)
-- Dumped by pg_dump version 15.4 (Debian 15.4-1.pgdg120+1)

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
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    id integer NOT NULL,
    species integer,
    health_points integer DEFAULT 0 NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    nickname character varying(50),
    trainer integer
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- Name: pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokemon_id_seq OWNER TO postgres;

--
-- Name: pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;


--
-- Name: pokemon_species; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon_species (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    evolves_to integer
);


ALTER TABLE public.pokemon_species OWNER TO postgres;

--
-- Name: pokemon_species_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemon_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokemon_species_id_seq OWNER TO postgres;

--
-- Name: pokemon_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_species_id_seq OWNED BY public.pokemon_species.id;


--
-- Name: pokemon_trainers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon_trainers (
    id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.pokemon_trainers OWNER TO postgres;

--
-- Name: pokemon_trainers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemon_trainers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokemon_trainers_id_seq OWNER TO postgres;

--
-- Name: pokemon_trainers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_trainers_id_seq OWNED BY public.pokemon_trainers.id;


--
-- Name: pokemon_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon_types (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.pokemon_types OWNER TO postgres;

--
-- Name: pokemon_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemon_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokemon_types_id_seq OWNER TO postgres;

--
-- Name: pokemon_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_types_id_seq OWNED BY public.pokemon_types.id;


--
-- Name: species_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.species_types (
    species integer NOT NULL,
    type integer NOT NULL
);


ALTER TABLE public.species_types OWNER TO postgres;

--
-- Name: pokemon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);


--
-- Name: pokemon_species id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_species ALTER COLUMN id SET DEFAULT nextval('public.pokemon_species_id_seq'::regclass);


--
-- Name: pokemon_trainers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_trainers ALTER COLUMN id SET DEFAULT nextval('public.pokemon_trainers_id_seq'::regclass);


--
-- Name: pokemon_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_types ALTER COLUMN id SET DEFAULT nextval('public.pokemon_types_id_seq'::regclass);


--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon (id, species, health_points, level, nickname, trainer) FROM stdin;
10	25	30	10	\N	2
11	25	120	50	Pika Pika	2
12	6	100	30	\N	2
\.


--
-- Data for Name: pokemon_species; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon_species (id, name, evolves_to) FROM stdin;
1	Bulbasaur	\N
2	Ivysaur	\N
3	Venusaur	\N
4	Charmander	\N
5	Charmeleon	\N
6	Charizard	\N
7	Squirtle	\N
8	Wartortle	\N
9	Blastoise	\N
10	Caterpie	\N
11	Metapod	\N
12	Butterfree	\N
13	Weedle	\N
14	Kakuna	\N
15	Beedrill	\N
16	Pidgey	\N
17	Pidgeotto	\N
18	Pidgeot	\N
19	Rattata	\N
20	Raticate	\N
21	Spearow	\N
22	Fearow	\N
23	Ekans	\N
24	Arbok	\N
25	Pikachu	\N
26	Raichu	\N
27	Sandshrew	\N
28	Sandslash	\N
29	Nidoran♀	\N
30	Nidorina	\N
31	Nidoqueen	\N
32	Nidoran♂	\N
33	Nidorino	\N
34	Nidoking	\N
35	Clefairy	\N
36	Clefable	\N
37	Vulpix	\N
38	Ninetales	\N
39	Jigglypuff	\N
40	Wigglytuff	\N
41	Zubat	\N
42	Golbat	\N
43	Oddish	\N
44	Gloom	\N
45	Vileplume	\N
46	Paras	\N
47	Parasect	\N
48	Venonat	\N
49	Venomoth	\N
50	Diglett	\N
51	Dugtrio	\N
52	Meowth	\N
53	Persian	\N
54	Psyduck	\N
55	Golduck	\N
56	Mankey	\N
57	Primeape	\N
58	Growlithe	\N
59	Arcanine	\N
60	Poliwag	\N
61	Poliwhirl	\N
62	Poliwrath	\N
63	Abra	\N
64	Kadabra	\N
65	Alakazam	\N
66	Machop	\N
67	Machoke	\N
68	Machamp	\N
69	Bellsprout	\N
70	Weepinbell	\N
71	Victreebel	\N
72	Tentacool	\N
73	Tentacruel	\N
74	Geodude	\N
75	Graveler	\N
76	Golem	\N
77	Ponyta	\N
78	Rapidash	\N
79	Slowpoke	\N
80	Slowbro	\N
81	Magnemite	\N
82	Magneton	\N
83	Farfetch'd	\N
84	Doduo	\N
85	Dodrio	\N
86	Seel	\N
87	Dewgong	\N
88	Grimer	\N
89	Muk	\N
90	Shellder	\N
91	Cloyster	\N
92	Gastly	\N
93	Haunter	\N
94	Gengar	\N
95	Onix	\N
96	Drowzee	\N
97	Hypno	\N
98	Krabby	\N
99	Kingler	\N
100	Voltorb	\N
101	Electrode	\N
102	Exeggcute	\N
103	Exeggutor	\N
104	Cubone	\N
105	Marowak	\N
106	Hitmonlee	\N
107	Hitmonchan	\N
108	Lickitung	\N
109	Koffing	\N
110	Weezing	\N
111	Rhyhorn	\N
112	Rhydon	\N
113	Chansey	\N
114	Tangela	\N
115	Kangaskhan	\N
116	Horsea	\N
117	Seadra	\N
118	Goldeen	\N
119	Seaking	\N
120	Staryu	\N
121	Starmie	\N
122	Mr	\N
123	Scyther	\N
124	Jynx	\N
125	Electabuzz	\N
126	Magmar	\N
127	Pinsir	\N
128	Tauros	\N
129	Magikarp	\N
130	Gyarados	\N
131	Lapras	\N
132	Ditto	\N
133	Eevee	\N
134	Vaporeon	\N
135	Jolteon	\N
136	Flareon	\N
137	Porygon	\N
138	Omanyte	\N
139	Omastar	\N
140	Kabuto	\N
141	Kabutops	\N
142	Aerodactyl	\N
143	Snorlax	\N
144	Articuno	\N
145	Zapdos	\N
146	Moltres	\N
147	Dratini	\N
148	Dragonair	\N
149	Dragonite	\N
150	Mewtwo	\N
151	Mew	\N
158	FAKE-3	\N
162	FAKE-2	158
164	FAKE-1	162
\.


--
-- Data for Name: pokemon_trainers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon_trainers (id, username) FROM stdin;
2	Ash Ketchum
\.


--
-- Data for Name: pokemon_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon_types (id, name) FROM stdin;
1	Normal
2	Fire
3	Water
4	Grass
5	Flying
6	Fighting
7	Poison
8	Electric
9	Ground
10	Rock
11	Psychic
12	Ice
13	Bug
14	Ghost
15	Steel
16	Dragon
17	Dark
18	Fairy
\.


--
-- Data for Name: species_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.species_types (species, type) FROM stdin;
6	2
6	5
25	8
\.


--
-- Name: pokemon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemon_id_seq', 12, true);


--
-- Name: pokemon_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemon_species_id_seq', 164, true);


--
-- Name: pokemon_trainers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemon_trainers_id_seq', 2, true);


--
-- Name: pokemon_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemon_types_id_seq', 18, true);


--
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);


--
-- Name: pokemon_species pokemon_species_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_species
    ADD CONSTRAINT pokemon_species_name_key UNIQUE (name);


--
-- Name: pokemon_species pokemon_species_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_species
    ADD CONSTRAINT pokemon_species_pkey PRIMARY KEY (id);


--
-- Name: pokemon_trainers pokemon_trainers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_trainers
    ADD CONSTRAINT pokemon_trainers_pkey PRIMARY KEY (id);


--
-- Name: pokemon_trainers pokemon_trainers_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_trainers
    ADD CONSTRAINT pokemon_trainers_username_key UNIQUE (username);


--
-- Name: pokemon_types pokemon_types_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_types
    ADD CONSTRAINT pokemon_types_name_key UNIQUE (name);


--
-- Name: pokemon_types pokemon_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_types
    ADD CONSTRAINT pokemon_types_pkey PRIMARY KEY (id);


--
-- Name: species_types species_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species_types
    ADD CONSTRAINT species_types_pkey PRIMARY KEY (species, type);


--
-- Name: pokemon_species pokemon_species_evolves_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon_species
    ADD CONSTRAINT pokemon_species_evolves_to_fkey FOREIGN KEY (evolves_to) REFERENCES public.pokemon_species(id);


--
-- Name: pokemon pokemon_species_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_species_fkey FOREIGN KEY (species) REFERENCES public.pokemon_species(id);


--
-- Name: pokemon pokemon_trainer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_trainer_fkey FOREIGN KEY (trainer) REFERENCES public.pokemon_trainers(id) ON DELETE CASCADE;


--
-- Name: species_types species_types_species_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species_types
    ADD CONSTRAINT species_types_species_fkey FOREIGN KEY (species) REFERENCES public.pokemon_species(id);


--
-- Name: species_types species_types_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species_types
    ADD CONSTRAINT species_types_type_fkey FOREIGN KEY (type) REFERENCES public.pokemon_types(id);


--
-- PostgreSQL database dump complete
--

