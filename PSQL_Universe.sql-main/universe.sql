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
-- Name: SuperNova; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.SuperNova (
    SuperNova_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.SuperNova OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
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
    is_spherical boolean,
    hase_life boolean,
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
    is_spherical boolean,
    hase_life boolean,
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
    is_spherical boolean,
    hase_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: SuperNova; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.SuperNova VALUES (1, 'qq', 1, 1, 1, true, true, 'qq', 1);
INSERT INTO public.SuperNova VALUES (2, 'ww', 1, 2, 1, true, true, 'ww', 2);
INSERT INTO public.SuperNova VALUES (3, 'ee', 1, 3, 1, true, true, 'ee', 3);
INSERT INTO public.SuperNova VALUES (4, 'rr', 1, 4, 1, true, true, 'rr', 4);
INSERT INTO public.SuperNova VALUES (5, 'tt', 1, 5, 1, true, true, 'tt', 5);
INSERT INTO public.SuperNova VALUES (6, 'yy', 1, 6, 1, true, true, 'yy', 6);
INSERT INTO public.SuperNova VALUES (7, 'uu', 1, 7, 1, true, true, 'uu', 1);
INSERT INTO public.SuperNova VALUES (8, 'ii', 1, 8, 1, true, true, 'ii', 2);
INSERT INTO public.SuperNova VALUES (9, 'oo', 1, 9, 1, true, true, 'oo', 3);
INSERT INTO public.SuperNova VALUES (10, 'pp', 1, 10, 1, true, true, 'pp', 4);
INSERT INTO public.SuperNova VALUES (11, 'ññ', 1, 11, 1, true, true, 'ññ', 5);
INSERT INTO public.SuperNova VALUES (12, 'll', 1, 12, 1, true, true, 'll', 6);
INSERT INTO public.SuperNova VALUES (13, 'kk', 1, 13, 1, true, true, 'kk', 1);
INSERT INTO public.SuperNova VALUES (14, 'jj', 1, 14, 1, true, true, 'jj', 2);
INSERT INTO public.SuperNova VALUES (15, 'hh', 1, 15, 1, true, true, 'hh', 3);
INSERT INTO public.SuperNova VALUES (16, 'gg', 1, 16, 1, true, true, 'gg', 4);
INSERT INTO public.SuperNova VALUES (17, 'ff', 1, 17, 1, true, true, 'ff', 5);
INSERT INTO public.SuperNova VALUES (18, 'dd', 1, 18, 1, true, true, 'dd', 6);
INSERT INTO public.SuperNova VALUES (19, 'ss', 1, 19, 1, true, true, 'ss', 1);
INSERT INTO public.SuperNova VALUES (20, 'sa', 1, 20, 1, true, true, 'sa', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'asdx', 1, 1, 1, true, true, 'asdx');
INSERT INTO public.galaxy VALUES (2, 'asdff', 1, 2, 1, true, true, 'asdff');
INSERT INTO public.galaxy VALUES (3, 'asdfff', 1, 3, 1, true, true, 'asdfff');
INSERT INTO public.galaxy VALUES (4, 'asdfff', 1, 4, 1, true, true, 'asdfff');
INSERT INTO public.galaxy VALUES (5, 'asdfre', 1, 5, 1, true, true, 'asdfre');
INSERT INTO public.galaxy VALUES (6, 'asdfft', 1, 6, 1, true, true, 'asdfft');
INSERT INTO public.galaxy VALUES (7, 'asdpff', 1, 7, 1, true, true, 'asdpff');
INSERT INTO public.galaxy VALUES (8, 'asdff', 1, 8, 1, true, true, 'asdff');
INSERT INTO public.galaxy VALUES (9, 'asdc', 1, 9, 1, true, true, 'asdc');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aa', 1, 1, 1, true, true, 'aa', 1);
INSERT INTO public.moon VALUES (2, 'bb', 1, 2, 1, true, true, 'bb', 2);
INSERT INTO public.moon VALUES (3, 'cb', 1, 3, 1, true, true, 'cc', 3);
INSERT INTO public.moon VALUES (4, 'dd', 1, 4, 1, true, true, 'dd', 4);
INSERT INTO public.moon VALUES (5, 'ee', 1, 5, 1, true, true, 'ee', 5);
INSERT INTO public.moon VALUES (6, 'ff', 1, 6, 1, true, true, 'ff', 6);
INSERT INTO public.moon VALUES (7, 'gg', 1, 7, 1, true, true, 'gg', 1);
INSERT INTO public.moon VALUES (8, 'hh', 1, 8, 1, true, true, 'hh', 2);
INSERT INTO public.moon VALUES (9, 'ii', 1, 9, 1, true, true, 'ii', 3);
INSERT INTO public.moon VALUES (10, 'jj', 1, 10, 1, true, true, 'jj', 4);
INSERT INTO public.moon VALUES (11, 'kk', 1, 11, 1, true, true, 'kk', 5);
INSERT INTO public.moon VALUES (12, 'll', 1, 12, 1, true, true, 'll', 6);
INSERT INTO public.moon VALUES (13, 'mm', 1, 13, 1, true, true, 'mm', 1);
INSERT INTO public.moon VALUES (14, 'nn', 1, 14, 1, true, true, 'nn', 2);
INSERT INTO public.moon VALUES (15, 'oo', 1, 15, 1, true, true, 'oo', 3);
INSERT INTO public.moon VALUES (16, 'pp', 1, 16, 1, true, true, 'pp', 4);
INSERT INTO public.moon VALUES (17, 'qq', 1, 17, 1, true, true, 'qq', 5);
INSERT INTO public.moon VALUES (18, 'rr', 1, 18, 1, true, true, 'rr', 6);
INSERT INTO public.moon VALUES (19, 'ss', 1, 19, 1, true, true, 'ss', 1);
INSERT INTO public.moon VALUES (20, 'tt', 1, 20, 1, true, true, 'tt', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aa', 1, 1, 1, true, true, 'aa', 1);
INSERT INTO public.planet VALUES (2, 'bb', 1, 2, 1, true, true, 'bb', 2);
INSERT INTO public.planet VALUES (3, 'cc', 1, 3, 1, true, true, 'cc', 3);
INSERT INTO public.planet VALUES (4, 'dd', 1, 4, 1, true, true, 'dd', 4);
INSERT INTO public.planet VALUES (5, 'ee', 1, 5, 1, true, true, 'ee', 5);
INSERT INTO public.planet VALUES (6, 'ff', 1, 6, 1, true, true, 'ff', 6);
INSERT INTO public.planet VALUES (7, 'gg', 1, 7, 1, true, true, 'gg', 1);
INSERT INTO public.planet VALUES (8, 'hh', 1, 8, 1, true, true, 'hh', 2);
INSERT INTO public.planet VALUES (9, 'ii', 1, 9, 1, true, true, 'ii', 3);
INSERT INTO public.planet VALUES (10, 'jj', 1, 10, 1, true, true, 'jj', 4);
INSERT INTO public.planet VALUES (11, 'kk', 1, 11, 1, true, true, 'kk', 5);
INSERT INTO public.planet VALUES (12, 'll', 1, 12, 1, true, true, 'll', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'aa', 1, 1, 1, true, true, 'aa', 1);
INSERT INTO public.star VALUES (2, 'bb', 1, 2, 1, true, true, 'bb', 2);
INSERT INTO public.star VALUES (3, 'cc', 1, 3, 1, true, true, 'cc', 3);
INSERT INTO public.star VALUES (4, 'dd', 1, 4, 1, true, true, 'dd', 4);
INSERT INTO public.star VALUES (5, 'ee', 1, 5, 1, true, true, 'ee', 5);
INSERT INTO public.star VALUES (6, 'ff', 1, 6, 1, true, true, 'ff', 6);


--
-- Name: SuperNova SuperNova_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.SuperNova
    ADD CONSTRAINT SuperNova_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: SuperNova SuperNova_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.SuperNova
    ADD CONSTRAINT SuperNova_pkey PRIMARY KEY (SuperNova_id);


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
-- Name: SuperNova SuperNova_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.SuperNova
    ADD CONSTRAINT SuperNova_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

