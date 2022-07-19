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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (53, 2018, 'Final', 4, 2, 622, 623);
INSERT INTO public.games VALUES (54, 2018, 'Third Place', 2, 0, 624, 625);
INSERT INTO public.games VALUES (55, 2018, 'Semi-Final', 2, 1, 623, 625);
INSERT INTO public.games VALUES (56, 2018, 'Semi-Final', 1, 0, 622, 624);
INSERT INTO public.games VALUES (57, 2018, 'Quarter-Final', 3, 2, 623, 631);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 2, 0, 625, 633);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 2, 1, 624, 635);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 2, 0, 622, 637);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 2, 1, 625, 639);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 1, 0, 633, 641);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 3, 2, 624, 643);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 2, 0, 635, 645);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 2, 1, 623, 647);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 2, 1, 631, 649);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 2, 1, 637, 651);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 4, 3, 622, 653);
INSERT INTO public.games VALUES (69, 2014, 'Final', 1, 0, 654, 653);
INSERT INTO public.games VALUES (70, 2014, 'Third Place', 3, 0, 656, 635);
INSERT INTO public.games VALUES (71, 2014, 'Semi-Final', 1, 0, 653, 656);
INSERT INTO public.games VALUES (72, 2014, 'Semi-Final', 7, 1, 654, 635);
INSERT INTO public.games VALUES (73, 2014, 'Quarter-Final', 1, 0, 656, 663);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 1, 0, 653, 624);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 2, 1, 635, 639);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 1, 0, 654, 622);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 2, 1, 635, 671);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 2, 0, 639, 637);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 2, 0, 622, 675);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 2, 1, 654, 677);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 2, 1, 656, 645);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 2, 1, 663, 681);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 1, 0, 653, 641);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 2, 1, 624, 685);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (622, 'France');
INSERT INTO public.teams VALUES (623, 'Croatia');
INSERT INTO public.teams VALUES (624, 'Belgium');
INSERT INTO public.teams VALUES (625, 'England');
INSERT INTO public.teams VALUES (631, 'Russia');
INSERT INTO public.teams VALUES (633, 'Sweden');
INSERT INTO public.teams VALUES (635, 'Brazil');
INSERT INTO public.teams VALUES (637, 'Uruguay');
INSERT INTO public.teams VALUES (639, 'Colombia');
INSERT INTO public.teams VALUES (641, 'Switzerland');
INSERT INTO public.teams VALUES (643, 'Japan');
INSERT INTO public.teams VALUES (645, 'Mexico');
INSERT INTO public.teams VALUES (647, 'Denmark');
INSERT INTO public.teams VALUES (649, 'Spain');
INSERT INTO public.teams VALUES (651, 'Portugal');
INSERT INTO public.teams VALUES (653, 'Argentina');
INSERT INTO public.teams VALUES (654, 'Germany');
INSERT INTO public.teams VALUES (656, 'Netherlands');
INSERT INTO public.teams VALUES (663, 'Costa Rica');
INSERT INTO public.teams VALUES (671, 'Chile');
INSERT INTO public.teams VALUES (675, 'Nigeria');
INSERT INTO public.teams VALUES (677, 'Algeria');
INSERT INTO public.teams VALUES (681, 'Greece');
INSERT INTO public.teams VALUES (685, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 685, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

