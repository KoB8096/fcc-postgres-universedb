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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    circumferance integer,
    qr_code character varying(30)
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth integer,
    laps_per_day integer,
    qr_code character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth integer,
    laps_per_day integer,
    planet_id integer,
    visible boolean,
    qr_code character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth integer,
    laps_per_day integer,
    star_id integer,
    visible boolean,
    qr_code character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth integer,
    laps_per_day text,
    galaxy_id integer,
    age_in_years numeric,
    qr_code character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'earth_1', NULL, NULL);
INSERT INTO public.earth VALUES (2, 'earth_2', NULL, NULL);
INSERT INTO public.earth VALUES (3, 'earth_3', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', NULL, NULL, 1, true, NULL);
INSERT INTO public.moon VALUES (2, 'moon_2', NULL, NULL, 2, false, NULL);
INSERT INTO public.moon VALUES (3, 'moon_3', NULL, NULL, 3, true, NULL);
INSERT INTO public.moon VALUES (4, 'moon_4', NULL, NULL, 4, true, NULL);
INSERT INTO public.moon VALUES (5, 'moon_5', NULL, NULL, 4, true, NULL);
INSERT INTO public.moon VALUES (6, 'moon_6', NULL, NULL, 4, true, NULL);
INSERT INTO public.moon VALUES (7, 'moon_7', NULL, NULL, 4, true, NULL);
INSERT INTO public.moon VALUES (8, 'moon_8', NULL, NULL, 4, true, NULL);
INSERT INTO public.moon VALUES (9, 'moon_9', NULL, NULL, 4, true, NULL);
INSERT INTO public.moon VALUES (10, 'moon_10', NULL, NULL, 10, false, NULL);
INSERT INTO public.moon VALUES (11, 'moon_11', NULL, NULL, 1, true, NULL);
INSERT INTO public.moon VALUES (12, 'moon_12', NULL, NULL, 2, true, NULL);
INSERT INTO public.moon VALUES (13, 'moon_13', NULL, NULL, 3, true, NULL);
INSERT INTO public.moon VALUES (14, 'moon_14', NULL, NULL, 4, false, NULL);
INSERT INTO public.moon VALUES (15, 'moon_15', NULL, NULL, 5, true, NULL);
INSERT INTO public.moon VALUES (16, 'moon_16', NULL, NULL, 6, true, NULL);
INSERT INTO public.moon VALUES (17, 'moon_17', NULL, NULL, 7, false, NULL);
INSERT INTO public.moon VALUES (18, 'moon_18', NULL, NULL, 8, true, NULL);
INSERT INTO public.moon VALUES (19, 'moon_19', NULL, NULL, 9, true, NULL);
INSERT INTO public.moon VALUES (20, 'moon_20', NULL, NULL, 10, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1', NULL, NULL, 1, true, NULL);
INSERT INTO public.planet VALUES (2, 'planet_2', NULL, NULL, 2, false, NULL);
INSERT INTO public.planet VALUES (3, 'planet_3', NULL, NULL, 3, true, NULL);
INSERT INTO public.planet VALUES (4, 'planet_4', NULL, NULL, 1, true, NULL);
INSERT INTO public.planet VALUES (5, 'planet_5', NULL, NULL, 2, true, NULL);
INSERT INTO public.planet VALUES (6, 'planet_6', NULL, NULL, 3, false, NULL);
INSERT INTO public.planet VALUES (7, 'planet_7', NULL, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (8, 'planet_8', NULL, NULL, 2, false, NULL);
INSERT INTO public.planet VALUES (9, 'planet_9', NULL, NULL, 3, true, NULL);
INSERT INTO public.planet VALUES (10, 'planet_10', NULL, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (11, 'planet_11', NULL, NULL, 2, false, NULL);
INSERT INTO public.planet VALUES (12, 'planet_12', NULL, NULL, 3, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', NULL, NULL, 1, 99959, NULL);
INSERT INTO public.star VALUES (2, 'star_2', NULL, NULL, 2, 99958, NULL);
INSERT INTO public.star VALUES (3, 'star_3', NULL, NULL, 3, 99957, NULL);
INSERT INTO public.star VALUES (4, 'star_4', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star_5', NULL, NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star_6', NULL, NULL, 3, NULL, NULL);


--
-- Name: earth earth_circumferance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_circumferance_key UNIQUE (circumferance);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: earth earth_qr_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_qr_code_key UNIQUE (qr_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_qr_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_qr_code_key UNIQUE (qr_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_qr_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_qr_code_key UNIQUE (qr_code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_qr_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_qr_code_key UNIQUE (qr_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_qr_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_qr_code_key UNIQUE (qr_code);


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

