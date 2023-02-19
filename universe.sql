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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_life boolean,
    has_moon boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_life boolean,
    has_moon boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_moon boolean,
    has_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_moon boolean,
    has_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_moon boolean,
    has_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'first', 100, 1000, 5000, true, true, 'aaa', 1);
INSERT INTO public.comet VALUES (2, 'second', 101, 1001, 5001, true, true, 'aaa', 2);
INSERT INTO public.comet VALUES (3, 'hird', 102, 1002, 5002, true, true, 'aaa', 3);
INSERT INTO public.comet VALUES (4, 'fourth', 103, 1003, 5003, true, true, 'aaa', 4);
INSERT INTO public.comet VALUES (5, 'fifth', 104, 1004, 5004, true, true, 'aaa', 5);
INSERT INTO public.comet VALUES (6, 'sixth', 105, 1005, 5005, true, true, 'aaa', 6);
INSERT INTO public.comet VALUES (7, 'seventh', 106, 1006, 5006, true, true, 'aaa', 1);
INSERT INTO public.comet VALUES (8, 'eight', 107, 1007, 5007, true, true, 'aaa', 2);
INSERT INTO public.comet VALUES (9, 'ninth', 108, 1008, 5008, true, true, 'aaa', 3);
INSERT INTO public.comet VALUES (10, 'tenth', 109, 1009, 5009, true, true, 'aaa', 4);
INSERT INTO public.comet VALUES (11, 'eleventh', 110, 1010, 5010, true, true, 'aaa', 5);
INSERT INTO public.comet VALUES (12, 'twelfth', 111, 1011, 5011, true, true, 'aaa', 6);
INSERT INTO public.comet VALUES (13, 'thirtheenth', 112, 1012, 5012, true, true, 'aaa', 1);
INSERT INTO public.comet VALUES (14, 'fourteenth', 113, 1013, 5013, true, true, 'aaa', 2);
INSERT INTO public.comet VALUES (15, 'fifteenth', 114, 1014, 5014, true, true, 'aaa', 3);
INSERT INTO public.comet VALUES (16, 'sixteenth', 115, 1015, 5015, true, true, 'aaa', 4);
INSERT INTO public.comet VALUES (17, 'seventeenth', 116, 1016, 5016, true, true, 'aaa', 5);
INSERT INTO public.comet VALUES (18, 'eighteenth', 117, 1017, 5017, true, true, 'aaa', 6);
INSERT INTO public.comet VALUES (19, 'nineteenth', 118, 1018, 5018, true, true, 'aaa', 1);
INSERT INTO public.comet VALUES (20, 'twentieth', 119, 1019, 5019, true, true, 'aaa', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'first', 100, 1000, 5000, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (2, 'second', 101, 1001, 5001, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (3, 'third', 102, 1002, 5002, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (4, 'fourth', 103, 1003, 5003, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (5, 'fifth', 104, 1004, 5004, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (6, 'sixth', 105, 1005, 5005, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (7, 'seventh', 106, 1006, 5006, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (8, 'eighth', 107, 1007, 5007, true, true, 'bbb');
INSERT INTO public.galaxy VALUES (9, 'ninth', 108, 1008, 5008, true, true, 'bbb');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', 100, 1000, 5000, true, true, 'ccc', 1);
INSERT INTO public.moon VALUES (2, 'two', 101, 1001, 5001, true, true, 'ccc', 2);
INSERT INTO public.moon VALUES (3, 'three', 102, 1002, 5002, true, true, 'ccc', 3);
INSERT INTO public.moon VALUES (4, 'four', 103, 1003, 5003, true, true, 'ccc', 4);
INSERT INTO public.moon VALUES (5, 'five', 103, 1004, 5003, true, true, 'ccc', 5);
INSERT INTO public.moon VALUES (6, 'six', 103, 1005, 5003, true, true, 'ccc', 6);
INSERT INTO public.moon VALUES (7, 'seven', 103, 1006, 5003, true, true, 'ccc', 1);
INSERT INTO public.moon VALUES (8, 'eight', 103, 1007, 5003, true, true, 'ccc', 2);
INSERT INTO public.moon VALUES (9, 'nine', 103, 1008, 5003, true, true, 'ccc', 3);
INSERT INTO public.moon VALUES (10, 'ten', 103, 1009, 5003, true, true, 'ccc', 4);
INSERT INTO public.moon VALUES (11, 'eleven', 103, 1010, 5003, true, true, 'ccc', 5);
INSERT INTO public.moon VALUES (12, 'tweleve', 103, 1011, 5003, true, true, 'ccc', 6);
INSERT INTO public.moon VALUES (13, 'thirteen', 103, 1012, 5003, true, true, 'ccc', 1);
INSERT INTO public.moon VALUES (14, 'fourteen', 103, 1013, 5003, true, true, 'ccc', 2);
INSERT INTO public.moon VALUES (15, 'fifteen', 103, 1014, 5003, true, true, 'ccc', 3);
INSERT INTO public.moon VALUES (16, 'sixteen', 103, 1015, 5003, true, true, 'ccc', 4);
INSERT INTO public.moon VALUES (17, 'seventeen', 103, 1016, 5003, true, true, 'ccc', 5);
INSERT INTO public.moon VALUES (18, 'eighteen', 103, 1017, 5003, true, true, 'ccc', 6);
INSERT INTO public.moon VALUES (19, 'nineteen', 103, 1018, 5003, true, true, 'ccc', 1);
INSERT INTO public.moon VALUES (20, 'twenty', 103, 1019, 5003, true, true, 'ccc', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'one', 100, 1000, 5000, true, true, 'ddd', 1);
INSERT INTO public.planet VALUES (2, 'two', 100, 1001, 5000, true, true, 'ddd', 2);
INSERT INTO public.planet VALUES (3, 'three', 100, 1002, 5000, true, true, 'ddd', 3);
INSERT INTO public.planet VALUES (4, 'four', 100, 1003, 5000, true, true, 'ddd', 4);
INSERT INTO public.planet VALUES (5, 'five', 100, 1004, 5000, true, true, 'ddd', 5);
INSERT INTO public.planet VALUES (6, 'six', 100, 1005, 5000, true, true, 'ddd', 6);
INSERT INTO public.planet VALUES (7, 'seven', 100, 1006, 5000, true, true, 'ddd', 1);
INSERT INTO public.planet VALUES (8, 'eight', 100, 1007, 5000, true, true, 'ddd', 2);
INSERT INTO public.planet VALUES (9, 'nine', 100, 1008, 5000, true, true, 'ddd', 3);
INSERT INTO public.planet VALUES (10, 'ten', 100, 1009, 5000, true, true, 'ddd', 4);
INSERT INTO public.planet VALUES (11, 'eleven', 100, 1010, 5000, true, true, 'ddd', 5);
INSERT INTO public.planet VALUES (12, 'twelve', 100, 1011, 5000, true, true, 'ddd', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'one', 100, 1000, 5000, true, true, 'eee', 1);
INSERT INTO public.star VALUES (2, 'two', 100, 1001, 5000, true, true, 'eee', 2);
INSERT INTO public.star VALUES (3, 'three', 100, 1002, 5000, true, true, 'eee', 3);
INSERT INTO public.star VALUES (4, 'fourth', 100, 1003, 5000, true, true, 'eee', 4);
INSERT INTO public.star VALUES (5, 'fifth', 100, 1004, 5000, true, true, 'eee', 5);
INSERT INTO public.star VALUES (6, 'sixth', 100, 1005, 5000, true, true, 'eee', 6);


--
-- Name: comet comet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- Name: star star_glalxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_glalxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

