--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    city character varying(64) NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights (
    src character varying(64),
    dst character varying(64),
    price numeric(6,2)
);


ALTER TABLE public.flights OWNER TO postgres;

--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (city) FROM stdin;
Moscow
New-York
Frankfurt
Washington
Nashville
London
Portland
San-Francisco
Paris
Tokyo
Tashkent
Chicago
Istanbul
Helsinki
Honolulu
Rome
Managua
Miami
Zurick
\.


--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights (src, dst, price) FROM stdin;
Moscow	New-York	1815.00
Moscow	Frankfurt	535.00
Moscow	Washington	1577.00
Moscow	London	136.00
Moscow	Paris	387.00
Moscow	Tokyo	1980.00
Moscow	Tashkent	150.00
Moscow	Istanbul	141.00
Moscow	Helsinki	114.00
Moscow	Rome	133.00
Moscow	Miami	1091.00
Moscow	Zurick	270.00
New-York	Moscow	1815.00
New-York	Frankfurt	935.00
New-York	Washington	95.00
New-York	Nashville	109.00
New-York	London	765.00
New-York	Portland	171.00
New-York	San-Francisco	139.00
New-York	Paris	330.00
New-York	Tokyo	873.00
New-York	Chicago	40.00
New-York	Istanbul	1085.00
New-York	Helsinki	1297.00
New-York	Honolulu	312.00
New-York	Rome	422.00
New-York	Miami	77.00
New-York	Zurick	899.00
Frankfurt	Moscow	535.00
Frankfurt	New-York	935.00
Frankfurt	Washington	1467.00
Frankfurt	London	79.00
Frankfurt	Portland	685.00
Frankfurt	San-Francisco	658.00
Frankfurt	Paris	108.00
Frankfurt	Tokyo	1282.00
Frankfurt	Chicago	582.00
Frankfurt	Istanbul	140.00
Frankfurt	Helsinki	237.00
Frankfurt	Rome	166.00
Frankfurt	Miami	619.00
Frankfurt	Zurick	136.00
Washington	Moscow	1577.00
Washington	New-York	95.00
Washington	Frankfurt	1467.00
Washington	Nashville	59.00
Washington	London	939.00
Washington	Portland	75.00
Washington	San-Francisco	75.00
Washington	Paris	890.00
Washington	Tokyo	1930.00
Washington	Chicago	41.00
Washington	Istanbul	1099.00
Washington	Helsinki	1501.00
Washington	Honolulu	311.00
Washington	Rome	899.00
Washington	Miami	50.00
Washington	Zurick	1467.00
Nashville	New-York	109.00
Nashville	Washington	59.00
Nashville	London	1180.00
Nashville	Portland	174.00
Nashville	San-Francisco	131.00
Nashville	Tokyo	692.00
Nashville	Chicago	49.00
Nashville	Miami	73.00
London	Moscow	136.00
London	New-York	765.00
London	Frankfurt	79.00
London	Washington	939.00
London	Nashville	1180.00
London	Portland	717.00
London	San-Francisco	441.00
London	Paris	68.00
London	Tokyo	1564.00
London	Chicago	411.00
London	Istanbul	69.00
London	Helsinki	348.00
London	Rome	70.00
London	Miami	418.00
London	Zurick	54.00
Portland	New-York	151.00
Portland	Frankfurt	685.00
Portland	Washington	75.00
Portland	San-Francisco	89.00
Portland	Chicago	89.00
Portland	Honolulu	224.00
Portland	Miami	124.00
San-Francisco	New-York	139.00
San-Francisco	Frankfurt	658.00
San-Francisco	Washington	75.00
San-Francisco	Nashville	131.00
San-Francisco	London	441.00
San-Francisco	Portland	89.00
San-Francisco	Paris	1284.00
San-Francisco	Tokyo	1026.00
San-Francisco	Chicago	89.00
San-Francisco	Istanbul	1184.00
San-Francisco	Helsinki	1280.00
San-Francisco	Honolulu	180.00
San-Francisco	Rome	1073.00
San-Francisco	Miami	169.00
San-Francisco	Zurick	1584.00
Paris	Moscow	387.00
Paris	New-York	330.00
Paris	Frankfurt	108.00
Paris	Washington	890.00
Paris	London	68.00
Paris	San-Francisco	1284.00
Paris	Tokyo	1440.00
Paris	Chicago	562.00
Paris	Istanbul	88.00
Paris	Helsinki	428.00
Paris	Rome	41.00
Paris	Miami	651.00
Paris	Zurick	154.00
Tokyo	Moscow	1980.00
Tokyo	New-York	873.00
Tokyo	Frankfurt	1282.00
Tokyo	Washington	1930.00
Tokyo	London	1564.00
Tokyo	Portland	1862.00
Tokyo	San-Francisco	1026.00
Tokyo	Paris	1440.00
Tokyo	Chicago	1649.00
Tokyo	Istanbul	647.00
Tokyo	Helsinki	1754.00
Tokyo	Rome	1801.00
Tokyo	Miami	1662.00
Tokyo	Zurick	1689.00
Tashkent	Moscow	160.00
Tashkent	Istanbul	758.00
Chicago	New-York	40.00
Chicago	Frankfurt	582.00
Chicago	Washington	41.00
Chicago	Nashville	49.00
Chicago	London	411.00
Chicago	Portland	89.00
Chicago	San-Francisco	89.00
Chicago	Paris	562.00
Chicago	Tokyo	1649.00
Chicago	Istanbul	1065.00
Chicago	Helsinki	1411.00
Chicago	Honolulu	292.00
Chicago	Rome	643.00
Chicago	Miami	36.00
Chicago	Zurick	1527.00
Istanbul	Moscow	141.00
Istanbul	New-York	1085.00
Istanbul	Frankfurt	140.00
Istanbul	Washington	1099.00
Istanbul	London	69.00
Istanbul	San-Francisco	1184.00
Istanbul	Paris	88.00
Istanbul	Tokyo	647.00
Istanbul	Tashkent	758.00
Istanbul	Chicago	1065.00
Istanbul	Helsinki	331.00
Istanbul	Rome	130.00
Istanbul	Miami	678.00
Istanbul	Zurick	170.00
Helsinki	Moscow	114.00
Helsinki	New-York	1297.00
Helsinki	Frankfurt	237.00
Helsinki	Washington	1501.00
Helsinki	London	348.00
Helsinki	San-Francisco	1280.00
Helsinki	Paris	428.00
Helsinki	Tokyo	1754.00
Helsinki	Chicago	1411.00
Helsinki	Istanbul	331.00
Helsinki	Rome	324.00
Helsinki	Miami	760.00
Helsinki	Zurick	333.00
Honolulu	New-York	312.00
Honolulu	Washington	311.00
Honolulu	Portland	224.00
Honolulu	San-Francisco	180.00
Honolulu	Chicago	292.00
Honolulu	Miami	460.00
Rome	Moscow	133.00
Rome	New-York	422.00
Rome	Frankfurt	166.00
Rome	Washington	899.00
Rome	London	70.00
Rome	San-Francisco	1073.00
Rome	Paris	41.00
Rome	Tokyo	1801.00
Rome	Chicago	643.00
Rome	Istanbul	130.00
Rome	Helsinki	324.00
Rome	Miami	629.00
Rome	Zurick	122.00
Managua	Miami	135.00
Miami	Moscow	1091.00
Miami	New-York	77.00
Miami	Frankfurt	619.00
Miami	Washington	50.00
Miami	Nashville	73.00
Miami	London	418.00
Miami	Portland	124.00
Miami	San-Francisco	169.00
Miami	Paris	651.00
Miami	Tokyo	1662.00
Miami	Chicago	36.00
Miami	Istanbul	678.00
Miami	Helsinki	760.00
Miami	Rome	629.00
Miami	Managua	135.00
Miami	Zurick	760.00
Zurick	Moscow	270.00
Zurick	New-York	899.00
Zurick	Frankfurt	136.00
Zurick	Washington	1467.00
Zurick	London	54.00
Zurick	San-Francisco	1584.00
Zurick	Paris	154.00
Zurick	Tokyo	1689.00
Zurick	Chicago	1527.00
Zurick	Istanbul	170.00
Zurick	Helsinki	333.00
Zurick	Rome	122.00
Zurick	Miami	760.00
\.


--
-- Name: cities cities_city_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_city_key UNIQUE (city);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (city);


--
-- Name: flights flights_dst_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_dst_fkey FOREIGN KEY (dst) REFERENCES public.cities(city) ON DELETE CASCADE;


--
-- Name: flights flights_src_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_src_fkey FOREIGN KEY (src) REFERENCES public.cities(city) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

