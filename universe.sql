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
    speed integer,
    description text,
    galaxy_types integer
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
-- Name: milky_way; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.milky_way (
    milky_way_id integer NOT NULL,
    name character varying(30) NOT NULL,
    suckage integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL
);


ALTER TABLE public.milky_way OWNER TO freecodecamp;

--
-- Name: milky_way_milky_way_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.milky_way_milky_way_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.milky_way_milky_way_id_seq OWNER TO freecodecamp;

--
-- Name: milky_way_milky_way_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.milky_way_milky_way_id_seq OWNED BY public.milky_way.milky_way_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    craters character varying(30) NOT NULL,
    has_dust boolean NOT NULL,
    planet_id integer NOT NULL
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
    distance_from_earth numeric,
    has_life boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    rings character varying(30)
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
    mass integer NOT NULL,
    color character varying(30) NOT NULL,
    distance_from_earth integer DEFAULT 500000 NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    twinkles character varying(30)
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
-- Name: milky_way milky_way_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milky_way ALTER COLUMN milky_way_id SET DEFAULT nextval('public.milky_way_milky_way_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'nosfera', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'rim', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'grem', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'ispo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'helical', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'fraxis', NULL, NULL, NULL);


--
-- Data for Name: milky_way; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.milky_way VALUES (1, 'tardis', NULL, NULL, false);
INSERT INTO public.milky_way VALUES (2, 'tardis2', NULL, NULL, false);
INSERT INTO public.milky_way VALUES (3, 'tardis3', NULL, NULL, false);
INSERT INTO public.milky_way VALUES (4, 'tardis4', NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'sag', 'crater_1', true, 2);
INSERT INTO public.moon VALUES (2, 'leo', 'crater_2', true, 2);
INSERT INTO public.moon VALUES (3, 'scorpio', 'crater_3', true, 3);
INSERT INTO public.moon VALUES (4, 'taurus', 'crater_4', true, 4);
INSERT INTO public.moon VALUES (5, 'aries', 'crater_5', true, 2);
INSERT INTO public.moon VALUES (6, 'capricorn', 'crater_6', true, 3);
INSERT INTO public.moon VALUES (7, 'cancer', 'crater_7', false, 2);
INSERT INTO public.moon VALUES (8, 'gemini', 'crater_8', true, 3);
INSERT INTO public.moon VALUES (9, 'libra', 'crater_9', true, 2);
INSERT INTO public.moon VALUES (10, 'aquarius', 'crater_10', true, 3);
INSERT INTO public.moon VALUES (11, 'pisces', 'crater_11', true, 2);
INSERT INTO public.moon VALUES (12, 'virgo', 'crater_12', true, 2);
INSERT INTO public.moon VALUES (13, 'billy', 'crater_13', true, 2);
INSERT INTO public.moon VALUES (14, 'bobby', 'crater_14', false, 3);
INSERT INTO public.moon VALUES (15, 'josie', 'crater_15', true, 2);
INSERT INTO public.moon VALUES (16, 'jinger', 'crater_16', true, 3);
INSERT INTO public.moon VALUES (17, 'jessa', 'crater_17', true, 2);
INSERT INTO public.moon VALUES (18, 'jana', 'crater_18', true, 2);
INSERT INTO public.moon VALUES (19, 'joe', 'crater_19', true, 2);
INSERT INTO public.moon VALUES (20, 'jedi', 'crater_20', true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'venus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'venus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'mars', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'pluto', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'neptune', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'jupiter', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'mercury', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'saturn', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'eris', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (11, 'ceres', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'gallifrey', NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (13, 'mondas', NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (14, 'skaro', NULL, false, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 247, 'red', 500000, 'leo', 1, NULL);
INSERT INTO public.star VALUES (2, 888, 'yellow', 500000, 'aquila', 1, NULL);
INSERT INTO public.star VALUES (3, 6355, 'orange', 500000, 'david', 1, NULL);
INSERT INTO public.star VALUES (4, 922, 'green', 500000, 'luigi', 2, NULL);
INSERT INTO public.star VALUES (5, 5927, 'blue', 500000, 'mario', 2, NULL);
INSERT INTO public.star VALUES (6, 1298, 'pink', 500000, 'north', 2, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: milky_way_milky_way_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.milky_way_milky_way_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: milky_way milky_way_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milky_way
    ADD CONSTRAINT milky_way_name_key UNIQUE (name);


--
-- Name: milky_way milky_way_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milky_way
    ADD CONSTRAINT milky_way_pkey PRIMARY KEY (milky_way_id);


--
-- Name: moon moon_craters_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_craters_key UNIQUE (craters);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_rings_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_rings_key UNIQUE (rings);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_twinkles_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_twinkles_key UNIQUE (twinkles);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

