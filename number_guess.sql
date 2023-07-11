--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 700);
INSERT INTO public.games VALUES (2, 2, 352);
INSERT INTO public.games VALUES (3, 3, 780);
INSERT INTO public.games VALUES (4, 3, 582);
INSERT INTO public.games VALUES (5, 2, 51);
INSERT INTO public.games VALUES (6, 2, 134);
INSERT INTO public.games VALUES (7, 2, 101);
INSERT INTO public.games VALUES (8, 4, 15);
INSERT INTO public.games VALUES (9, 5, 829);
INSERT INTO public.games VALUES (10, 6, 290);
INSERT INTO public.games VALUES (11, 6, 972);
INSERT INTO public.games VALUES (12, 5, 365);
INSERT INTO public.games VALUES (13, 5, 776);
INSERT INTO public.games VALUES (14, 5, 554);
INSERT INTO public.games VALUES (15, 7, 691);
INSERT INTO public.games VALUES (16, 7, 23);
INSERT INTO public.games VALUES (17, 8, 227);
INSERT INTO public.games VALUES (18, 8, 647);
INSERT INTO public.games VALUES (19, 7, 244);
INSERT INTO public.games VALUES (20, 7, 709);
INSERT INTO public.games VALUES (21, 7, 518);
INSERT INTO public.games VALUES (22, 9, 204);
INSERT INTO public.games VALUES (23, 9, 437);
INSERT INTO public.games VALUES (24, 10, 660);
INSERT INTO public.games VALUES (25, 10, 601);
INSERT INTO public.games VALUES (26, 9, 261);
INSERT INTO public.games VALUES (27, 9, 118);
INSERT INTO public.games VALUES (28, 9, 947);
INSERT INTO public.games VALUES (29, 11, 991);
INSERT INTO public.games VALUES (30, 12, 545);
INSERT INTO public.games VALUES (31, 12, 12);
INSERT INTO public.games VALUES (32, 11, 127);
INSERT INTO public.games VALUES (33, 11, 219);
INSERT INTO public.games VALUES (34, 11, 410);
INSERT INTO public.games VALUES (35, 13, 954);
INSERT INTO public.games VALUES (36, 14, 250);
INSERT INTO public.games VALUES (37, 14, 390);
INSERT INTO public.games VALUES (38, 13, 243);
INSERT INTO public.games VALUES (39, 13, 666);
INSERT INTO public.games VALUES (40, 13, 76);
INSERT INTO public.games VALUES (41, 15, 818);
INSERT INTO public.games VALUES (42, 15, 559);
INSERT INTO public.games VALUES (43, 16, 861);
INSERT INTO public.games VALUES (44, 16, 54);
INSERT INTO public.games VALUES (45, 15, 673);
INSERT INTO public.games VALUES (46, 15, 556);
INSERT INTO public.games VALUES (47, 15, 412);
INSERT INTO public.games VALUES (48, 17, 205);
INSERT INTO public.games VALUES (49, 17, 981);
INSERT INTO public.games VALUES (50, 18, 391);
INSERT INTO public.games VALUES (51, 17, 312);
INSERT INTO public.games VALUES (52, 17, 228);
INSERT INTO public.games VALUES (53, 17, 942);
INSERT INTO public.games VALUES (54, 19, 501);
INSERT INTO public.games VALUES (55, 19, 897);
INSERT INTO public.games VALUES (56, 20, 560);
INSERT INTO public.games VALUES (57, 20, 106);
INSERT INTO public.games VALUES (58, 19, 718);
INSERT INTO public.games VALUES (59, 19, 271);
INSERT INTO public.games VALUES (60, 19, 969);
INSERT INTO public.games VALUES (61, 21, 128);
INSERT INTO public.games VALUES (62, 21, 637);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1689092368128');
INSERT INTO public.users VALUES (3, 'user_1689092368127');
INSERT INTO public.users VALUES (4, 'Elia');
INSERT INTO public.users VALUES (5, 'user_1689092431561');
INSERT INTO public.users VALUES (6, 'user_1689092431560');
INSERT INTO public.users VALUES (7, 'user_1689092547383');
INSERT INTO public.users VALUES (8, 'user_1689092547382');
INSERT INTO public.users VALUES (9, 'user_1689092663361');
INSERT INTO public.users VALUES (10, 'user_1689092663360');
INSERT INTO public.users VALUES (11, 'user_1689092764449');
INSERT INTO public.users VALUES (12, 'user_1689092764448');
INSERT INTO public.users VALUES (13, 'user_1689092777628');
INSERT INTO public.users VALUES (14, 'user_1689092777627');
INSERT INTO public.users VALUES (15, 'user_1689092787949');
INSERT INTO public.users VALUES (16, 'user_1689092787948');
INSERT INTO public.users VALUES (17, 'user_1689092796788');
INSERT INTO public.users VALUES (18, 'user_1689092796787');
INSERT INTO public.users VALUES (19, 'user_1689092807057');
INSERT INTO public.users VALUES (20, 'user_1689092807056');
INSERT INTO public.users VALUES (21, 'user_1689092871156');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 62, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

