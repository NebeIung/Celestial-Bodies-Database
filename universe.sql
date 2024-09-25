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
-- Name: distance_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_from_earth (
    distance_from_earth_id integer NOT NULL,
    distance_in_light_years numeric NOT NULL,
    name character varying(30)
);


ALTER TABLE public.distance_from_earth OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_from_earth_distance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_from_earth_distance_id_seq OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_from_earth_distance_id_seq OWNED BY public.distance_from_earth.distance_from_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text,
    size_in_light_years integer,
    number_of_stars integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    diameter_in_km integer,
    orbital_period_days integer,
    has_atmosphere boolean DEFAULT false
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
    star_id integer,
    diameter_in_km integer,
    surface_temperature numeric,
    has_rings boolean DEFAULT false
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
    temperature integer,
    galaxy_id integer,
    mass_in_solar_masses real
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
-- Name: distance_from_earth distance_from_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth ALTER COLUMN distance_from_earth_id SET DEFAULT nextval('public.distance_from_earth_distance_id_seq'::regclass);


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
-- Data for Name: distance_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance_from_earth VALUES (1, 4.2, 'AlphaCentauri');
INSERT INTO public.distance_from_earth VALUES (2, 27.9, 'ProximaCentauri');
INSERT INTO public.distance_from_earth VALUES (3, 103.0, 'SiriusStar');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100000, 1000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2200000, 1000000000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Spiral', 50000000, 2000000000);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Spiral', 300000, 500000000);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 'Irregular', 50000, 1000000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 150000, 300000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3474, 27, false);
INSERT INTO public.moon VALUES (2, 'Io', 5, 3630, 2, false);
INSERT INTO public.moon VALUES (3, 'Europa', 5, 3122, 4, true);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 5268, 7, false);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 4821, 17, false);
INSERT INTO public.moon VALUES (6, 'Titan', 6, 5150, 16, true);
INSERT INTO public.moon VALUES (7, 'Enceladus', 6, 504, 1, true);
INSERT INTO public.moon VALUES (8, 'Rhea', 6, 1528, 5, false);
INSERT INTO public.moon VALUES (9, 'Mimas', 6, 396, 1, false);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 1469, 79, false);
INSERT INTO public.moon VALUES (11, 'Phobos', 4, 22, 0, false);
INSERT INTO public.moon VALUES (12, 'Deimos', 4, 12, 1, false);
INSERT INTO public.moon VALUES (13, 'Triton', 8, 2706, 6, true);
INSERT INTO public.moon VALUES (14, 'Charon', 4, 1212, 6, false);
INSERT INTO public.moon VALUES (15, 'Haumea I', 12, 300, 10, false);
INSERT INTO public.moon VALUES (16, 'Haumea II', 12, 200, 15, false);
INSERT INTO public.moon VALUES (17, 'Makemake I', 12, 150, 20, false);
INSERT INTO public.moon VALUES (18, 'Makemake II', 12, 100, 25, false);
INSERT INTO public.moon VALUES (19, 'Eris I', 12, 400, 30, false);
INSERT INTO public.moon VALUES (20, 'Eris II', 12, 250, 35, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4879, 430, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 12104, 460, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 12742, 15, false);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 6779, -60, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 139820, -145, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 116460, -178, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 50724, -197, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 49244, -201, true);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 2, 20400, -20, false);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 3, 12000, 30, false);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 4, 12800, 1500, false);
INSERT INTO public.planet VALUES (12, '55 Cancri e', 5, 30000, 1700, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5778, 1, 1);
INSERT INTO public.star VALUES (2, 'Cepheids', 6500, 2, 1.5);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3500, 3, 20);
INSERT INTO public.star VALUES (4, 'M33-013406.63+304147.8:', 4500, 4, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 12000, 5, 20);
INSERT INTO public.star VALUES (6, 'PA-99-N2', 30000, 6, 5);


--
-- Name: distance_from_earth_distance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_from_earth_distance_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: distance_from_earth distance_from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_pkey PRIMARY KEY (distance_from_earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: distance_from_earth unique_distance_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT unique_distance_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

