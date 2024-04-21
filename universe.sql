--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_milions_of_years integer,
    galaxy_type integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_planet (
    galaxy_planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.galaxy_planet OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_milions_of_years numeric,
    description text,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_milions_of_years numeric,
    planet_type integer,
    description text,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_milions_of_years numeric,
    star_type integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'bear', false, 555, 1);
INSERT INTO public.galaxy VALUES (2, 'fos', false, 444, 1);
INSERT INTO public.galaxy VALUES (3, 'kos', false, 689, 2);
INSERT INTO public.galaxy VALUES (4, 'bos', false, 559, 2);
INSERT INTO public.galaxy VALUES (5, 'tos', false, 9999, 1);
INSERT INTO public.galaxy VALUES (7, 'ros', false, 559, 1);
INSERT INTO public.galaxy VALUES (8, 'pos', false, 9, 3);


--
-- Data for Name: galaxy_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_planet VALUES (1, 'NESTO', NULL);
INSERT INTO public.galaxy_planet VALUES (2, 'NSTO', NULL);
INSERT INTO public.galaxy_planet VALUES (3, 'NSO', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', false, 256, 'Earth satelite ', 384, 1);
INSERT INTO public.moon VALUES (2, 'moon-11', false, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'moon-12', false, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'moon-13', false, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'moon-14', false, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'moon-20', false, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'moon-21', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'moon-22', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'moon-23', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, 'moon-24', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'moon-28', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'moon-29', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'moon-30', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon-31', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, 'moon-32', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, 'moon-33', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'moon-34', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'moon-323', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, 'moon-35', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (21, 'moon-36', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (22, 'moon-37', false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (23, 'moon-38', false, NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 256, 33, 'Best planet on entire universe', 1, 1);
INSERT INTO public.planet VALUES (2, 'moon', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (3, 'venus', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (4, 's-55', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (5, 's-54', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (6, 's-84', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (7, 's-8d', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (8, 's-8', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (9, 's-98', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (10, 'p-98', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (11, 'p-986', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (12, 'p-186', false, 56, 3, 'Planet in solar sisteme', 1, 1);
INSERT INTO public.planet VALUES (13, 'p-1586', false, 56, 3, 'Planet in solar sisteme', 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mars', false, 444, 55, 1);
INSERT INTO public.star VALUES (2, 'pluto', false, 878, 5, 1);
INSERT INTO public.star VALUES (3, 'saturn', false, 87, 5, 1);
INSERT INTO public.star VALUES (4, 'jupiter', false, 127, 6, 1);
INSERT INTO public.star VALUES (5, 'venus', false, 427, 2, 1);
INSERT INTO public.star VALUES (6, 'neptun', false, 327, 2, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_planet galaxy_planet_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_galaxy_id_key UNIQUE (galaxy_planet_id);


--
-- Name: galaxy_planet galaxy_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_name_key UNIQUE (name);


--
-- Name: galaxy_planet galaxy_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_pkey PRIMARY KEY (galaxy_planet_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

