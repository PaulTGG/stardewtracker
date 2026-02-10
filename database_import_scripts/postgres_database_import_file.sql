--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

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

--
-- Name: stardewtemplate; Type: DATABASE; Schema: -; Owner: stardewuser
--

CREATE DATABASE stardewtemplate WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE stardewtemplate OWNER TO stardewuser;

\connect stardewtemplate

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: gamelist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gamelist (
    pk integer NOT NULL,
    gamename character varying(50),
    active boolean DEFAULT true
);


ALTER TABLE public.gamelist OWNER TO postgres;

--
-- Name: gamelist_pk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gamelist_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gamelist_pk_seq OWNER TO postgres;

--
-- Name: gamelist_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gamelist_pk_seq OWNED BY public.gamelist.pk;


--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    pk integer NOT NULL,
    item_name character varying(50),
    item_id integer,
    trackable boolean,
    bundle boolean,
    cooking boolean,
    crafting boolean,
    quest boolean,
    shipping boolean,
    crop boolean,
    fish boolean,
    forage boolean,
    spring boolean,
    summer boolean,
    fall boolean,
    winter boolean
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_pk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_pk_seq OWNER TO postgres;

--
-- Name: items_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_pk_seq OWNED BY public.items.pk;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes (
    pk integer NOT NULL,
    item_id integer,
    trackable_id integer,
    item_quantity integer
);


ALTER TABLE public.recipes OWNER TO postgres;

--
-- Name: recipes_pk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_pk_seq OWNER TO postgres;

--
-- Name: recipes_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_pk_seq OWNED BY public.recipes.pk;


--
-- Name: gamelist pk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gamelist ALTER COLUMN pk SET DEFAULT nextval('public.gamelist_pk_seq'::regclass);


--
-- Name: items pk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN pk SET DEFAULT nextval('public.items_pk_seq'::regclass);


--
-- Name: recipes pk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes ALTER COLUMN pk SET DEFAULT nextval('public.recipes_pk_seq'::regclass);


--
-- Data for Name: gamelist; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.items VALUES (1, 'Weeds', 0, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (2, 'Stone', 2, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (3, 'Wild Horseradish', 16, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (4, 'Daffodil', 18, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (5, 'Leek', 20, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (6, 'Dandelion', 22, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (7, 'Parsnip', 24, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (8, 'Lumber', 30, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (9, 'Emerald', 60, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (10, 'Aquamarine', 62, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (11, 'Ruby', 64, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (12, 'Amethyst', 66, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (13, 'Topaz', 68, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (14, 'Banana Sapling', 69, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (15, 'Jade', 70, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (16, 'Trimmed Lucky Purple Shorts', 71, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (17, 'Diamond', 72, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (18, 'Golden Walnut', 73, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (19, 'Prismatic Shard', 74, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (20, 'Cave Carrot', 78, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (21, 'Secret Note', 79, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (22, 'Quartz', 80, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (23, 'Fire Quartz', 82, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (24, 'Frozen Tear', 84, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (25, 'Earth Crystal', 86, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (26, 'Coconut', 88, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (27, 'Cactus Fruit', 90, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (28, 'Banana', 91, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (29, 'Sap', 92, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (30, 'Torch', 93, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (31, 'Spirit Torch', 94, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (32, 'Dwarf Scroll I', 96, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (33, 'Dwarf Scroll II', 97, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (34, 'Dwarf Scroll III', 98, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (35, 'Dwarf Scroll IV', 99, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (36, 'Chipped Amphora', 100, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (37, 'Arrowhead', 101, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (38, 'Lost Book', 102, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (39, 'Ancient Doll', 103, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (40, 'Elvish Jewelry', 104, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (41, 'Chewing Stick', 105, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (42, 'Ornamental Fan', 106, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (43, 'Dinosaur Egg', 107, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (44, 'Rare Disc', 108, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (45, 'Ancient Sword', 109, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (46, 'Rusty Spoon', 110, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (47, 'Rusty Spur', 111, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (48, 'Rusty Cog', 112, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (49, 'Chicken Statue', 113, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (50, 'Ancient Seed', 114, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (51, 'Prehistoric Tool', 115, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (52, 'Dried Starfish', 116, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (53, 'Anchor', 117, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (54, 'Glass Shards', 118, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (55, 'Bone Flute', 119, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (56, 'Prehistoric Handaxe', 120, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (57, 'Dwarvish Helm', 121, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (58, 'Dwarf Gadget', 122, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (59, 'Ancient Drum', 123, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (60, 'Golden Mask', 124, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (61, 'Golden Relic', 125, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (62, 'Strange Doll', 126, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (63, 'Pufferfish', 128, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (64, 'Anchovy', 129, true, false, false, false, false, false, false, true, false, true, false, true, false);
INSERT INTO public.items VALUES (65, 'Tuna', 130, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (66, 'Sardine', 131, true, false, false, false, false, false, false, true, false, true, false, true, true);
INSERT INTO public.items VALUES (67, 'Bream', 132, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (68, 'Largemouth Bass', 136, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (69, 'Smallmouth Bass', 137, true, false, false, false, false, false, false, true, false, true, false, true, false);
INSERT INTO public.items VALUES (70, 'Rainbow Trout', 138, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (71, 'Salmon', 139, true, false, false, false, false, false, false, true, false, false, false, true, false);
INSERT INTO public.items VALUES (72, 'Walleye', 140, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (73, 'Perch', 141, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (74, 'Carp', 142, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (75, 'Catfish', 143, true, false, false, false, false, false, false, true, false, true, false, false, false);
INSERT INTO public.items VALUES (76, 'Pike', 144, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (77, 'Sunfish', 145, true, false, false, false, false, false, false, true, false, true, true, false, false);
INSERT INTO public.items VALUES (78, 'Red Mullet', 146, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (79, 'Herring', 147, true, false, false, false, false, false, false, true, false, true, false, false, true);
INSERT INTO public.items VALUES (80, 'Eel', 148, true, false, false, false, false, false, false, true, false, true, false, true, false);
INSERT INTO public.items VALUES (81, 'Octopus', 149, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (82, 'Red Snapper', 150, true, false, false, false, false, false, false, true, false, false, true, true, true);
INSERT INTO public.items VALUES (83, 'Squid', 151, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (84, 'Seaweed', 152, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (85, 'Green Algae', 153, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (86, 'Sea Cucumber', 154, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (87, 'Super Cucumber', 155, true, false, false, false, false, false, false, true, false, false, true, true, false);
INSERT INTO public.items VALUES (88, 'Ghostfish', 156, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (89, 'White Algae', 157, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (90, 'Stonefish', 158, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (91, 'Crimsonfish', 159, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (92, 'Angler', 160, true, false, false, false, false, false, false, true, false, false, false, true, false);
INSERT INTO public.items VALUES (93, 'Ice Pip', 161, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (94, 'Lava Eel', 162, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (95, 'Legend Fish', 163, true, false, false, false, false, false, false, true, false, true, false, false, false);
INSERT INTO public.items VALUES (96, 'Sandfish', 164, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (97, 'Scorpion Carp', 165, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (98, 'Treasure Chest', 166, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (99, 'Joja Cola', 167, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (100, 'Trash', 168, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (101, 'Driftwood', 169, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (102, 'Broken Glasses', 170, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (103, 'Broken CD', 171, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (104, 'Soggy Newspaper', 172, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (105, 'Large Egg (Brown)', 174, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (106, 'Egg (Brown)', 176, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (107, 'Hay', 178, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (108, 'Egg (White)', 180, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (109, 'Large Egg (White)', 182, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (110, 'Milk', 184, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (111, 'Large Milk', 186, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (112, 'Green Bean', 188, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (113, 'Cauliflower', 190, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (114, 'Ornate Necklace', 191, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (115, 'Potato', 192, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (116, 'Fried Egg', 194, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (117, 'Omelet', 195, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (118, 'Salad', 196, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (119, 'Cheese Cauliflower', 197, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (120, 'Baked Fish', 198, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (121, 'Parsnip Soup', 199, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (122, 'Vegetable Medley', 200, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (123, 'Complete Breakfast', 201, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (124, 'Fried Calamari', 202, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (125, 'Strange Bun', 203, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (126, 'Lucky Lunch', 204, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (127, 'Fried Mushroom', 205, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (128, 'Pizza', 206, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (129, 'Bean Hotpot', 207, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (130, 'Glazed Yams', 208, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (131, 'Carp Surprise', 209, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (132, 'Hashbrowns', 210, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (133, 'Pancakes', 211, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (134, 'Salmon Dinner', 212, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (135, 'Fish Taco', 213, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (136, 'Crispy Bass', 214, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (137, 'Pepper Poppers', 215, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (138, 'Bread', 216, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (139, 'Tom Kha Soup', 218, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (140, 'Trout Soup', 219, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (141, 'Chocolate Cake', 220, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (142, 'Pink Cake', 221, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (143, 'Rhubarb Pie', 222, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (144, 'Cookie', 223, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (145, 'Spaghetti', 224, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (146, 'Fried Eel', 225, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (147, 'Spicy Eel', 226, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (148, 'Sashimi', 227, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (149, 'Maki Roll', 228, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (150, 'Tortilla', 229, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (151, 'Red Plate', 230, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (152, 'Eggplant Parmesan', 231, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (153, 'Rice Pudding', 232, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (154, 'Ice Cream', 233, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (155, 'Blueberry Tart', 234, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (156, 'Autumn''s Bounty', 235, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (157, 'Pumpkin Soup', 236, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (158, 'Super Meal', 237, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (159, 'Cranberry Sauce', 238, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (160, 'Stuffing', 239, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (161, 'Farmer''s Lunch', 240, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (162, 'Survival Burger', 241, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (163, 'Dish o'' The Sea', 242, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (164, 'Miner''s Treat', 243, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (165, 'Roots Platter', 244, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (166, 'Sugar', 245, false, false, false, false, false, false, false, false, false, false, true, true, false);
INSERT INTO public.items VALUES (167, 'Wheat Flour', 246, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (168, 'Oil', 247, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (169, 'Garlic', 248, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (170, 'Kale', 250, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (171, 'Tea Sapling', 251, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (172, 'Rhubarb', 252, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (173, 'Triple Shot Espresso', 253, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (174, 'Melon', 254, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (175, 'Tomato', 256, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (176, 'Morel', 257, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (177, 'Blueberry', 258, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (178, 'Fiddlehead Fern', 259, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (179, 'Hot Pepper', 260, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (180, 'Warp Totem: Desert', 261, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (181, 'Wheat', 262, true, false, false, false, false, true, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (182, 'Radish', 264, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (183, 'Seafoam Pudding', 265, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (184, 'Red Cabbage', 266, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (185, 'Flounder', 267, true, false, false, false, false, false, false, true, false, true, true, false, false);
INSERT INTO public.items VALUES (186, 'Starfruit', 268, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (187, 'Midnight Carp', 269, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (188, 'Corn', 270, true, false, false, false, false, true, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (189, 'Unmilled Rice', 271, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (190, 'Eggplant', 272, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (191, 'Rice Shoot', 273, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (192, 'Artichoke', 274, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (193, 'Artifact Trove', 275, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (194, 'Pumpkin', 276, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (195, 'Wilted Bouquet', 277, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (196, 'Bok Choy', 278, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (197, 'Magic Rock Candy', 279, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (198, 'Yam', 280, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (199, 'Chanterelle', 281, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (200, 'Cranberries', 282, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (201, 'Holly', 283, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (202, 'Beet', 284, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (203, 'Cherry Bomb', 286, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (204, 'Bomb', 287, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (205, 'Mega Bomb', 288, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (206, 'Ostrich Egg', 289, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (207, 'Mahogany Seed', 292, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (208, 'Brick Floor', 293, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (209, 'Twig', 294, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (210, 'Salmonberry', 296, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (211, 'Grass Starter', 297, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (212, 'Hardwood Fence', 298, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (213, 'Amaranth Seeds', 299, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (214, 'Amaranth', 300, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (215, 'Grape Starter', 301, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (216, 'Hops Starter', 302, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (217, 'Pale Ale', 303, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (218, 'Hops', 304, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (219, 'Void Egg', 305, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (220, 'Mayonnaise', 306, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (221, 'Duck Mayonnaise', 307, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (222, 'Void Mayonnaise', 308, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (223, 'Acorn', 309, false, false, false, false, false, false, false, false, false, true, true, true, false);
INSERT INTO public.items VALUES (224, 'Maple Seed', 310, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (225, 'Pine Cone', 311, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (226, 'Wood Fence', 322, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (227, 'Stone Fence', 323, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (228, 'Iron Fence', 324, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (229, 'Gate', 325, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (230, 'Dwarvish Translation Guide', 326, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (231, 'Wood Floor', 328, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (232, 'Stone Floor', 329, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (233, 'Clay', 330, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (234, 'Weathered Floor', 331, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (235, 'Crystal Floor', 333, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (236, 'Copper Bar', 334, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (237, 'Iron Bar', 335, true, false, false, true, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (238, 'Gold Bar', 336, true, false, false, true, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (239, 'Iridium Bar', 337, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (240, 'Refined Quartz', 338, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (241, 'Honey', 340, true, false, false, false, false, true, false, false, false, true, true, true, false);
INSERT INTO public.items VALUES (242, 'Tea Set', 341, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (243, 'Pickles', 342, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (244, 'Jelly', 344, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (245, 'Beer', 346, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (246, 'Rare Seed', 347, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (247, 'Wine', 348, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (248, 'Energy Tonic', 349, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (249, 'Juice', 350, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (250, 'Muscle Remedy', 351, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (251, 'Basic Fertilizer', 368, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (252, 'Quality Fertilizer', 369, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (253, 'Basic Retaining Soil', 370, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (254, 'Quality Retaining Soil', 371, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (255, 'Clam', 372, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (256, 'Golden Pumpkin', 373, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (257, 'Poppy', 376, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (258, 'Copper Ore', 378, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (259, 'Iron Ore', 380, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (260, 'Coal', 382, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (261, 'Gold Ore', 384, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (262, 'Iridium Ore', 386, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (263, 'Wood', 388, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (264, 'Nautilus Shell', 392, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (265, 'Coral', 393, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (266, 'Rainbow Shell', 394, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (267, 'Coffee', 395, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (268, 'Spice Berry', 396, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (269, 'Sea Urchin', 397, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (270, 'Grape', 398, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (271, 'Spring Onion', 399, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (272, 'Strawberry', 400, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (273, 'Straw Floor', 401, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (274, 'Sweet Pea', 402, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (275, 'Field Snack', 403, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (276, 'Common Mushroom', 404, true, false, false, false, false, true, false, false, true, true, false, true, false);
INSERT INTO public.items VALUES (277, 'Wood Path', 405, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (278, 'Wild Plum', 406, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (279, 'Gravel Path', 407, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (280, 'Hazelnut', 408, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (281, 'Crystal Path', 409, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (282, 'Blackberry', 410, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (283, 'Cobblestone Path', 411, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (284, 'Winter Root', 412, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (285, 'Blue Slime Egg', 413, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (286, 'Crystal Fruit', 414, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (287, 'Stepping Stone Path', 415, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (288, 'Snow Yam', 416, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (289, 'Sweet Gem Berry', 417, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (290, 'Crocus', 418, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (291, 'Vinegar', 419, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (292, 'Red Mushroom', 420, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (293, 'Sunflower', 421, true, false, false, false, false, true, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (294, 'Purple Mushroom', 422, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (295, 'Rice', 423, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (296, 'Cheese', 424, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (297, 'Fairy Seeds', 425, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (298, 'Goat Cheese', 426, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (299, 'Tulip Bulb', 427, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (300, 'Cloth', 428, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (301, 'Jazz Seeds', 429, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (302, 'Truffle', 430, true, false, false, false, false, true, false, false, true, true, true, true, false);
INSERT INTO public.items VALUES (303, 'Sunflower Seeds', 431, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (304, 'Truffle Oil', 432, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (305, 'Coffee Bean', 433, true, false, false, false, false, true, true, false, false, true, true, false, false);
INSERT INTO public.items VALUES (306, 'Stardrop', 434, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (307, 'Goat Milk', 436, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (308, 'Red Slime Egg', 437, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (309, 'Large Goat Milk', 438, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (310, 'Purple Slime Egg', 439, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (311, 'Wool', 440, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (312, 'Explosive Ammo', 441, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (313, 'Duck Egg', 442, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (314, 'Duck Feather', 444, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (315, 'Caviar', 445, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (316, 'Rabbit''s Foot', 446, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (317, 'Aged Roe', 447, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (318, 'Stone Base', 449, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (319, 'Poppy Seeds', 453, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (320, 'Ancient Fruit', 454, true, false, false, false, false, true, true, false, false, true, true, true, false);
INSERT INTO public.items VALUES (321, 'Spangle Seeds', 455, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (322, 'Algae Soup', 456, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (323, 'Pale Broth', 457, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (324, 'Bouquet', 458, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (325, 'Mead', 459, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (326, 'Mermaid''s Pendant', 460, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (327, 'Decorative Pot', 461, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (328, 'Drum Block', 463, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (329, 'Flute Block', 464, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (330, 'Speed-Gro', 465, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (331, 'Deluxe Speed-Gro', 466, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (332, 'Parsnip Seeds', 472, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (333, 'Bean Starter', 473, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (334, 'Cauliflower Seeds', 474, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (335, 'Potato Seeds', 475, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (336, 'Garlic Seeds', 476, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (337, 'Kale Seeds', 477, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (338, 'Rhubarb Seeds', 478, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (339, 'Melon Seeds', 479, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (340, 'Tomato Seeds', 480, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (341, 'Blueberry Seeds', 481, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (342, 'Pepper Seeds', 482, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (343, 'Wheat Seeds', 483, false, false, false, false, false, false, false, false, false, false, true, true, false);
INSERT INTO public.items VALUES (344, 'Radish Seeds', 484, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (345, 'Red Cabbage Seeds', 485, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (346, 'Starfruit Seeds', 486, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (347, 'Corn Seeds', 487, false, false, false, false, false, false, false, false, false, false, true, true, false);
INSERT INTO public.items VALUES (348, 'Eggplant Seeds', 488, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (349, 'Artichoke Seeds', 489, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (350, 'Pumpkin Seeds', 490, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (351, 'Bok Choy Seeds', 491, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (352, 'Yam Seeds', 492, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (353, 'Cranberry Seeds', 493, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (354, 'Beet Seeds', 494, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (355, 'Spring Seeds', 495, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (356, 'Summer Seeds', 496, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (357, 'Fall Seeds', 497, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (358, 'Winter Seeds', 498, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (359, 'Ancient Seeds', 499, true, false, false, true, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (360, 'Small Glow Ring', 516, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (361, 'Glow Ring', 517, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (362, 'Small Magnet Ring', 518, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (363, 'Magnet Ring', 519, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (364, 'Slime Charmer Ring', 520, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (365, 'Warrior Ring', 521, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (366, 'Vampire Ring', 522, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (367, 'Savage Ring', 523, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (368, 'Ring of Yoba', 524, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (369, 'Sturdy Ring', 525, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (370, 'Burglar''s Ring', 526, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (371, 'Iridium Band', 527, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (372, 'Jukebox Ring', 528, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (373, 'Amethyst Ring', 529, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (374, 'Topaz Ring', 530, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (375, 'Aquamarine Ring', 531, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (376, 'Jade Ring', 532, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (377, 'Emerald Ring', 533, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (378, 'Ruby Ring', 534, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (379, 'Geode', 535, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (380, 'Frozen Geode', 536, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (381, 'Magma Geode', 537, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (382, 'Alamite', 538, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (383, 'Bixite', 539, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (384, 'Baryte', 540, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (385, 'Aerinite', 541, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (386, 'Calcite', 542, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (387, 'Dolomite', 543, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (388, 'Esperite', 544, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (389, 'Fluorapatite', 545, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (390, 'Geminite', 546, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (391, 'Helvite', 547, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (392, 'Jamborite', 548, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (393, 'Jagoite', 549, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (394, 'Kyanite', 550, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (395, 'Lunarite', 551, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (396, 'Malachite', 552, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (397, 'Neptunite', 553, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (398, 'Lemon Stone', 554, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (399, 'Nekoite', 555, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (400, 'Orpiment', 556, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (401, 'Petrified Slime', 557, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (402, 'Thunder Egg', 558, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (403, 'Pyrite', 559, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (404, 'Ocean Stone', 560, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (405, 'Ghost Crystal', 561, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (406, 'Tigerseye', 562, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (407, 'Jasper', 563, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (408, 'Opal', 564, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (409, 'Fire Opal', 565, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (410, 'Celestine', 566, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (411, 'Marble', 567, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (412, 'Sandstone', 568, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (413, 'Granite', 569, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (414, 'Basalt', 570, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (415, 'Limestone', 571, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (416, 'Soapstone', 572, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (417, 'Hematite', 573, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (418, 'Mudstone', 574, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (419, 'Obsidian', 575, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (420, 'Slate', 576, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (421, 'Fairy Stone', 577, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (422, 'Star Shards', 578, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (423, 'Prehistoric Scapula', 579, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (424, 'Prehistoric Tibia', 580, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (425, 'Prehistoric Skull', 581, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (426, 'Skeletal Hand', 582, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (427, 'Prehistoric Rib', 583, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (428, 'Prehistoric Vertebra', 584, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (429, 'Skeletal Tail', 585, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (430, 'Nautilus Fossil', 586, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (431, 'Amphibian Fossil', 587, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (432, 'Palm Fossil', 588, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (433, 'Trilobite', 589, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (434, 'Artifact Spot', 590, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (435, 'Tulip', 591, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (436, 'Summer Spangle', 593, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (437, 'Fairy Rose', 595, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (438, 'Blue Jazz', 597, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (439, 'Sprinkler', 599, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (440, 'Plum Pudding', 604, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (441, 'Artichoke Dip', 605, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (442, 'Stir Fry', 606, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (443, 'Roasted Hazelnuts', 607, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (444, 'Pumpkin Pie', 608, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (445, 'Radish Salad', 609, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (446, 'Fruit Salad', 610, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (447, 'Blackberry Cobbler', 611, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (448, 'Cranberry Candy', 612, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (449, 'Apple', 613, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (450, 'Green Tea', 614, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (451, 'Bruschetta', 618, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (452, 'Quality Sprinkler', 621, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (453, 'Cherry Sapling', 628, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (454, 'Apricot Sapling', 629, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (455, 'Orange Sapling', 630, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (456, 'Peach Sapling', 631, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (457, 'Pomegranate Sapling', 632, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (458, 'Apple Sapling', 633, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (459, 'Apricot', 634, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (460, 'Orange', 635, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (461, 'Peach', 636, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (462, 'Pomegranate', 637, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (463, 'Cherry', 638, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (464, 'Iridium Sprinkler', 645, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (465, 'Coleslaw', 648, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (466, 'Fiddlehead Risotto', 649, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (467, 'Poppyseed Muffin', 651, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (468, 'Green Slime Egg', 680, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (469, 'Rain Totem', 681, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (470, 'Mutant Carp', 682, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (471, 'Bug Meat', 684, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (472, 'Bait', 685, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (473, 'Spinner', 686, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (474, 'Dressed Spinner', 687, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (475, 'Warp Totem: Farm', 688, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (476, 'Warp Totem: Mountains', 689, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (477, 'Warp Totem: Beach', 690, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (478, 'Barbed Hook', 691, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (479, 'Lead Bobber', 692, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (480, 'Treasure Hunter', 693, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (481, 'Trap Bobber', 694, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (482, 'Cork Bobber', 695, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (483, 'Sturgeon', 698, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (484, 'Tiger Trout', 699, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (485, 'Bullhead', 700, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (486, 'Tilapia', 701, true, false, false, false, false, false, false, true, false, false, true, true, false);
INSERT INTO public.items VALUES (487, 'Chub', 702, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (488, 'Magnet', 703, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (489, 'Dorado', 704, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (490, 'Albacore', 705, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (491, 'Shad', 706, true, false, false, false, false, false, false, true, false, true, true, true, false);
INSERT INTO public.items VALUES (492, 'Lingcod', 707, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (493, 'Halibut', 708, true, false, false, false, false, false, false, true, false, true, true, false, true);
INSERT INTO public.items VALUES (494, 'Hardwood', 709, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (495, 'Crab Pot', 710, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (496, 'Lobster', 715, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (497, 'Crayfish', 716, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (498, 'Crab', 717, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (499, 'Cockle', 718, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (500, 'Mussel', 719, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (501, 'Shrimp', 720, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (502, 'Snail', 721, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (503, 'Periwinkle', 722, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (504, 'Oyster', 723, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (505, 'Maple Syrup', 724, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (506, 'Oak Resin', 725, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (507, 'Pine Tar', 726, true, false, false, false, false, true, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (508, 'Chowder', 727, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (509, 'Fish Stew', 728, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (510, 'Escargot', 729, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (511, 'Lobster Bisque', 730, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (512, 'Maple Bar', 731, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (513, 'Crab Cakes', 732, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (514, 'Shrimp Cocktail', 733, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (515, 'Woodskip', 734, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (516, 'Strawberry Seeds', 745, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (517, 'Jack-O-Lantern', 746, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (518, 'Rotten Plant', 747, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (519, 'Omni Geode', 749, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (520, 'Slime', 766, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (521, 'Bat Wing', 767, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (522, 'Solar Essence', 768, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (523, 'Void Essence', 769, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (524, 'Mixed Seeds', 770, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (525, 'Fiber', 771, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (526, 'Oil of Garlic', 772, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (527, 'Life Elixir', 773, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (528, 'Wild Bait', 774, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (529, 'Glacierfish', 775, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (530, 'Battery Pack', 787, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (531, 'Lost Axe', 788, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (532, 'Lucky Purple Shorts', 789, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (533, 'Berry Basket', 790, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (534, 'Golden Coconut', 791, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (535, 'Void Salmon', 795, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (536, 'Slimejack', 796, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (537, 'Pearl', 797, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (538, 'Midnight Squid', 798, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (539, 'Spook Fish', 799, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (540, 'Blobfish', 800, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (541, 'Wedding Ring', 801, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (542, 'Cactus Seeds', 802, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (543, 'Iridium Milk', 803, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (544, 'Tree Fertilizer', 805, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (545, 'Dinosaur Mayonnaise', 807, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (546, 'Void Ghost Pendant', 808, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (547, 'Movie Ticket', 809, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (548, 'Crabshell Ring', 810, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (549, 'Napalm Ring', 811, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (550, 'Roe', 812, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (551, 'Squid Ink', 814, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (552, 'Tea Leaves', 815, true, false, false, false, false, true, true, false, false, true, true, true, false);
INSERT INTO public.items VALUES (553, 'Fossilized Skull', 820, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (554, 'Fossilized Spine', 821, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (555, 'Fossilized Tail', 822, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (556, 'Fossilized Leg', 823, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (557, 'Fossilized Ribs', 824, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (558, 'Snake Skull', 825, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (559, 'Snake Vertebrae', 826, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (560, 'Mummified Bat', 827, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (561, 'Mummified Frog', 828, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (562, 'Ginger', 829, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (563, 'Taro Root', 830, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (564, 'Taro Tuber', 831, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (565, 'Pineapple', 832, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (566, 'Pineapple Seeds', 833, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (567, 'Mango', 834, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (568, 'Mango Sapling', 835, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (569, 'Stingray', 836, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (570, 'Lionfish', 837, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (571, 'Blue Discus', 838, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (572, 'Thorns Ring', 839, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (573, 'Rustic Plank Floor', 840, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (574, 'Stone Walkway Floor', 841, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (575, 'Journal Scrap', 842, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (576, 'Cinder Shard', 848, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (577, 'Magma Cap', 851, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (578, 'Dragon Tooth', 852, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (579, 'Curiosity Lure', 856, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (580, 'Tiger Slime Egg', 857, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (581, 'Qi Gem', 858, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (582, 'Lucky Ring', 859, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (583, 'Hot Java Ring', 860, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (584, 'Protection Ring', 861, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (585, 'Soul Sapper Ring', 862, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (586, 'Phoenix Ring', 863, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (587, 'War Memento', 864, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (588, 'Gourmet Tomato Salt', 865, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (589, 'Stardew Valley Rose', 866, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (590, 'Advanced TV Remote', 867, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (591, 'Arctic Shard', 868, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (592, 'Wriggling Worm', 869, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (593, 'Pirate''s Locket', 870, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (594, 'Fairy Dust', 872, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (595, 'Pina Colada', 873, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (596, 'Bug Steak', 874, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (597, 'Ectoplasm', 875, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (598, 'Prismatic Jelly', 876, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (599, 'Quality Bobber', 877, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (600, 'Monster Musk', 879, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (601, 'Combined Ring', 880, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (602, 'Bone Fragment', 881, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (603, 'Fiber Seeds', 885, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (604, 'Warp Totem: Island', 886, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (605, 'Immunity Band', 887, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (606, 'Glowstone Ring', 888, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (607, 'Qi Fruit', 889, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (608, 'Qi Bean', 890, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (609, 'Mushroom Tree Seed', 891, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (610, 'Warp Totem: Qi''s Arena', 892, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (611, 'Fireworks (Red)', 893, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (612, 'Fireworks (Purple)', 894, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (613, 'Fireworks (Green)', 895, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (614, 'Galaxy Soul', 896, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (615, 'Pierre''s Missing Stocklist', 897, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (616, 'Son of Crimsonfish', 898, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (617, 'Ms. Angler', 899, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (618, 'Legend II', 900, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (619, 'Radioactive Carp', 901, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (620, 'Glacierfish Jr.', 902, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (621, 'Ginger Ale', 903, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (622, 'Banana Pudding', 904, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (623, 'Mango Sticky Rice', 905, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (624, 'Poi', 906, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (625, 'Tropical Curry', 907, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (626, 'Magic Bait', 908, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (627, 'Radioactive Ore', 909, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (628, 'Radioactive Bar', 910, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (629, 'Horse Flute', 911, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (630, 'Enricher', 913, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (631, 'Pressure Nozzle', 915, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (632, 'Qi Seasoning', 917, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (633, 'Hyper Speed-Gro', 918, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (634, 'Deluxe Fertilizer', 919, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (635, 'Deluxe Retaining Soil', 920, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (636, 'Squid Ink Ravioli', 921, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (637, 'SupplyCrate', 922, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (638, 'Slime Crate', 925, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (639, 'Cookout Kit', 926, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (640, 'Camping Stove', 927, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (641, 'Golden Egg', 928, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (642, 'Hedge', 929, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (643, 'Egg (Any)', 10001, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (644, 'Sturgeon Roe', 10002, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (645, 'Fish (Any)', 10003, false, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (646, 'Fruit (Any)', 10004, false, false, false, false, false, false, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (647, 'Vegetable (Any)', 10005, false, false, false, false, false, false, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (648, 'Parsnip (Gold Star)', 10006, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (649, 'Melon (Gold Star)', 10007, false, false, false, false, false, false, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (650, 'Corn (Gold Star)', 10008, false, false, false, false, false, false, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (651, 'Pumpkin (Gold Star)', 10009, false, false, false, false, false, false, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (652, 'Green Bean (Gold Star)', 10010, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (653, 'Potato (Gold Star)', 10011, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (654, 'Cauliflower (Gold Star)', 10012, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (655, 'Blueberry (Gold Star)', 10013, false, false, false, false, false, false, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (656, 'Hot Pepper (Gold Star)', 10014, false, false, false, false, false, false, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (657, 'Yam (Gold Star)', 10015, false, false, false, false, false, false, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (658, 'Eggplant (Gold Star)', 10016, false, false, false, false, false, false, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (659, 'Milk (Any)', 10017, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (660, 'Bee House', 10018, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (661, 'Cask', 10019, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (662, 'Cheese Press', 10020, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (663, 'Keg', 10021, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (664, 'Loom', 10022, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (665, 'Mayonnaise Machine', 10023, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (666, 'Oil Maker', 10024, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (667, 'Preserves Jar', 10025, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (668, 'Barrel Brazier', 10026, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (669, 'Campfire', 10027, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (670, 'Carved Brazier', 10028, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (671, 'Gold Brazier', 10029, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (672, 'Iron Lamp-post', 10030, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (673, 'Marble Brazier', 10031, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (674, 'Skull Brazier', 10032, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (675, 'Stone Brazier', 10033, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (676, 'Stump Brazier', 10034, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (677, 'Wood Lamp-post', 10035, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (678, 'Wooden Brazier', 10036, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (679, 'Bone Mill', 10037, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (680, 'Charcoal Kiln', 10038, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (681, 'Crystalarium', 10039, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (682, 'Furnace', 10040, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (683, 'Geode Crusher', 10041, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (684, 'Heavy Tapper', 10042, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (685, 'Lightning Rod', 10043, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (686, 'Ostrich Incubator', 10044, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (687, 'Recycling Machine', 10045, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (688, 'Seed Maker', 10046, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (689, 'Slime Egg-Press', 10047, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (690, 'Slime Incubator', 10048, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (691, 'Solar Panel', 10049, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (692, 'Tapper', 10050, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (693, 'Worm Bin', 10051, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (694, 'Tub o'' Flowers', 10052, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (695, 'Wicked Statue', 10053, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (696, 'Chest', 10054, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (697, 'Stone Chest', 10055, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (698, 'Dark Sign', 10056, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (699, 'Stone Sign', 10057, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (700, 'Wood Sign', 10058, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (701, 'Deluxe Scarecrow', 10059, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (702, 'Farm Computer', 10060, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (703, 'Garden Pot', 10061, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (704, 'Hopper', 10062, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (705, 'Mini-Jukebox', 10063, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (706, 'Mini-Obelisk', 10064, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (707, 'Scarecrow', 10065, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (708, 'Staircase', 10066, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (709, 'Wild Seeds', 10067, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (710, 'Mushroom (Any, + Effect)', 10068, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (711, 'Moss', 10069, true, false, false, false, false, true, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (712, 'Broccoli', 10070, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (713, 'Carrot', 10071, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (714, 'Dried Fruit', 10072, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (715, 'Dried Mushrooms', 10073, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (716, 'Mystic Syrup', 10074, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (717, 'Powdermelon', 10075, true, false, false, false, false, true, true, false, false, false, false, false, true);
INSERT INTO public.items VALUES (718, 'Raisins', 10076, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (719, 'Smoked Fish', 10077, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (720, 'Summer Squash', 10078, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (721, 'Goby', 10079, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (722, 'Cave Jelly', 10080, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (723, 'River Jelly', 10081, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (724, 'Sea Jelly', 10082, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (725, 'Moss Soup', 10083, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (726, 'Anvil', 10084, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (727, 'Bait Maker', 10085, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (728, 'Big Chest', 10086, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (729, 'Big Stone Chest', 10087, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (730, 'Blue Grass Starter', 10088, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (731, 'Challenge Bait', 10089, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (732, 'Dehydrator', 10090, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (733, 'Deluxe Bait', 10091, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (734, 'Deluxe Worm Bin', 10092, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (735, 'Fish Smoker', 10093, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (736, 'Heavy Furnace', 10094, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (737, 'Mini-Forge', 10095, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (738, 'Mushroom Log', 10096, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (739, 'Sonar Bobber', 10097, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (740, 'Statue Of Blessings', 10098, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (741, 'Statue Of The Dwarf King', 10099, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (742, 'Tent Kit', 10100, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (743, 'Text Sign', 10101, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (744, 'Treasure Totem', 10102, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (745, 'Spring Foraging Bundle', 20001, true, true, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (746, 'Summer Foraging Bundle', 20002, true, true, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (747, 'Fall Foraging Bundle', 20003, true, true, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (748, 'Winter Foraging Bundle', 20004, true, true, false, false, false, false, false, false, false, false, false, false, true);
INSERT INTO public.items VALUES (749, 'Construction Bundle', 20005, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (750, 'Exotic Foraging Bundle', 20006, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (751, 'Spring Crops Bundle', 20007, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (752, 'Summer Crops Bundle', 20008, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (753, 'Fall Crops Bundle', 20009, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (754, 'Quality Crops Bundle', 20010, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (755, 'Animal Bundle', 20011, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (756, 'Artisan Bundle', 20012, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (757, 'River Fish Bundle', 20013, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (758, 'Lake Fish Bundle', 20014, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (759, 'Ocean Fish Bundle', 20015, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (760, 'Night Fishing Bundle', 20016, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (761, 'Crab Pot Bundle', 20017, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (762, 'Specialty Fish Bundle', 20018, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (763, 'Blacksmith''s Bundle', 20019, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (764, 'Geologist''s Bundle', 20020, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (765, 'Adventurer''s Bundle', 20021, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (766, 'Chef''s Bundle', 20022, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (767, 'Dye Bundle', 20023, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (768, 'Field Research Bundle', 20024, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (769, 'Fodder Bundle', 20025, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (770, 'Enchanter''s Bundle', 20026, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (771, 'Spring Foraging Bundle (Remixed)', 20027, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (772, 'Winter Foraging Bundle (Remixed)', 20028, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (773, 'Sticky Bundle (Remixed)', 20029, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (774, 'Wild Medicine Bundle (Remixed)', 20030, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (775, 'Quality Crops Bundle (Remixed)', 20031, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (776, 'Rare Crops Bundle (Remixed)', 20032, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (777, 'Garden Bundle (Remixed)', 20033, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (778, 'Fish Farmer''s Bundle (Remixed)', 20034, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (779, 'Brewer''s Bundle (Remixed)', 20035, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (780, 'Master Fisher''s Bundle (Remixed)', 20036, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (781, 'Quality Fish Bundle (Remixed)', 20037, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (782, 'Adventurer''s Bundle (Remixed)', 20038, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (783, 'Treasure Hunter''s Bundle (Remixed)', 20039, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (784, 'Engineer''s Bundle (Remixed)', 20040, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (785, 'Dye Bundle (Remixed)', 20041, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (786, 'Home Cook''s Bundle (Remixed)', 20042, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (787, 'Children''s Bundle (Remixed)', 20043, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (788, 'Forager''s Bundle (Remixed)', 20044, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (789, 'Jodi''s Request (Cauliflower)', 30001, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (790, 'Marnie''s Request (Cave Carrot)', 30002, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (791, 'Pam Is Thirsty (Pale Ale)', 30003, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (792, 'A Dark Reagent (Void Essence)', 30004, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (793, 'Cow''s Delight (Amaranth)', 30005, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (794, 'Crop Research (Melon)', 30006, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (795, 'Knee Therapy (Hot Pepper)', 30007, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (796, 'Robin''s Request (10 Hardwood)', 30008, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (797, 'The Mysterious Qi', 30009, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (798, 'Carving Pumpkins (Pumpkin)', 30010, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (799, 'Strange Note (Maple Syrup)', 30011, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (800, 'Fresh Fruit (Apricot)', 30012, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (801, 'Aquatic Research (Pufferfish)', 30013, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (802, 'A Soldier''s Star (Starfruit)', 30014, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (803, 'Mayor''s Need (Truffle Oil)', 30015, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (804, 'Wanted: Lobster', 30016, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (805, 'Pam Needs Juice (Battery)', 30017, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (806, 'Fish Casserole (Largemouth)', 30018, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (807, 'Catch a Squid', 30019, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (808, 'Fish Stew (Albacore)', 30020, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (809, 'Pierre''s Notice (Sashimi)', 30021, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (810, 'Clint''s Attempt (Amethyst)', 30022, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (811, 'A Favor For Clint (Iron Bar)', 30023, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (812, 'Staff of Power (Iridium Bar)', 30024, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (813, 'Granny''s Gift (Leek)', 30025, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (814, 'Exotic Spirits (Coconut)', 30026, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (815, 'Catch a Lingcod', 30027, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (816, 'Goblin Problem (Void Mayo)', 30028, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (817, 'Gourmand Frog (Seeds)', 30029, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (818, 'Island Mermaid Puzzle', 30030, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (819, 'Island Gem Bird Puzzle', 30031, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (820, 'Island Banana Shrine', 30032, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (821, 'Master Canoli Stardrop', 30033, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (822, 'Fish Pond', 40001, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (823, 'Earth Obelisk', 50001, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (824, 'Water Obelisk', 50002, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (825, 'Desert Obelisk', 50003, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (826, 'Island Obelisk', 50004, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (827, 'Willy’s Boat (Hull)', 60001, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (828, 'Willy’s Boat (Anchor)', 60002, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (829, 'Willy’s Boat (Ticket Stand)', 60003, true, false, false, false, true, false, false, false, false, false, false, false, false);


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recipes VALUES (1, 769, 30004, 1);
INSERT INTO public.recipes VALUES (2, 335, 30023, 1);
INSERT INTO public.recipes VALUES (3, 268, 30014, 1);
INSERT INTO public.recipes VALUES (4, 766, 20021, 99);
INSERT INTO public.recipes VALUES (5, 767, 20021, 10);
INSERT INTO public.recipes VALUES (6, 768, 20021, 1);
INSERT INTO public.recipes VALUES (7, 769, 20021, 1);
INSERT INTO public.recipes VALUES (8, 766, 20038, 99);
INSERT INTO public.recipes VALUES (9, 767, 20038, 10);
INSERT INTO public.recipes VALUES (10, 768, 20038, 1);
INSERT INTO public.recipes VALUES (11, 769, 20038, 1);
INSERT INTO public.recipes VALUES (12, 881, 20038, 10);
INSERT INTO public.recipes VALUES (13, 447, 447, 1);
INSERT INTO public.recipes VALUES (14, 705, 705, 1);
INSERT INTO public.recipes VALUES (15, 153, 456, 4);
INSERT INTO public.recipes VALUES (16, 300, 300, 1);
INSERT INTO public.recipes VALUES (17, 129, 129, 1);
INSERT INTO public.recipes VALUES (18, 454, 454, 1);
INSERT INTO public.recipes VALUES (19, 114, 499, 1);
INSERT INTO public.recipes VALUES (20, 160, 160, 1);
INSERT INTO public.recipes VALUES (21, 186, 20011, 1);
INSERT INTO public.recipes VALUES (22, 174, 20011, 1);
INSERT INTO public.recipes VALUES (23, 182, 20011, 1);
INSERT INTO public.recipes VALUES (24, 438, 20011, 1);
INSERT INTO public.recipes VALUES (25, 440, 20011, 1);
INSERT INTO public.recipes VALUES (26, 442, 20011, 1);
INSERT INTO public.recipes VALUES (27, 335, 10084, 50);
INSERT INTO public.recipes VALUES (28, 613, 613, 1);
INSERT INTO public.recipes VALUES (29, 634, 634, 1);
INSERT INTO public.recipes VALUES (30, 128, 30013, 1);
INSERT INTO public.recipes VALUES (31, 274, 274, 1);
INSERT INTO public.recipes VALUES (32, 274, 605, 1);
INSERT INTO public.recipes VALUES (33, 184, 605, 1);
INSERT INTO public.recipes VALUES (34, 432, 20012, 1);
INSERT INTO public.recipes VALUES (35, 428, 20012, 1);
INSERT INTO public.recipes VALUES (36, 426, 20012, 1);
INSERT INTO public.recipes VALUES (37, 424, 20012, 1);
INSERT INTO public.recipes VALUES (38, 340, 20012, 1);
INSERT INTO public.recipes VALUES (39, 344, 20012, 1);
INSERT INTO public.recipes VALUES (40, 613, 20012, 1);
INSERT INTO public.recipes VALUES (41, 634, 20012, 1);
INSERT INTO public.recipes VALUES (42, 635, 20012, 1);
INSERT INTO public.recipes VALUES (43, 636, 20012, 1);
INSERT INTO public.recipes VALUES (44, 637, 20012, 1);
INSERT INTO public.recipes VALUES (45, 638, 20012, 1);
INSERT INTO public.recipes VALUES (46, 280, 235, 1);
INSERT INTO public.recipes VALUES (47, 276, 235, 1);
INSERT INTO public.recipes VALUES (48, 684, 685, 1);
INSERT INTO public.recipes VALUES (49, 335, 10085, 3);
INSERT INTO public.recipes VALUES (50, 393, 10085, 3);
INSERT INTO public.recipes VALUES (51, 397, 10085, 1);
INSERT INTO public.recipes VALUES (52, 145, 198, 1);
INSERT INTO public.recipes VALUES (53, 132, 198, 1);
INSERT INTO public.recipes VALUES (54, 246, 198, 1);
INSERT INTO public.recipes VALUES (55, 91, 91, 1);
INSERT INTO public.recipes VALUES (56, 91, 904, 1);
INSERT INTO public.recipes VALUES (57, 184, 904, 1);
INSERT INTO public.recipes VALUES (58, 245, 904, 1);
INSERT INTO public.recipes VALUES (59, 334, 691, 1);
INSERT INTO public.recipes VALUES (60, 335, 691, 1);
INSERT INTO public.recipes VALUES (61, 336, 691, 1);
INSERT INTO public.recipes VALUES (62, 388, 10026, 50);
INSERT INTO public.recipes VALUES (63, 768, 10026, 1);
INSERT INTO public.recipes VALUES (64, 382, 10026, 1);
INSERT INTO public.recipes VALUES (65, 92, 368, 2);
INSERT INTO public.recipes VALUES (66, 2, 370, 2);
INSERT INTO public.recipes VALUES (67, 767, 767, 1);
INSERT INTO public.recipes VALUES (68, 787, 787, 1);
INSERT INTO public.recipes VALUES (69, 188, 207, 2);
INSERT INTO public.recipes VALUES (70, 388, 10018, 40);
INSERT INTO public.recipes VALUES (71, 382, 10018, 8);
INSERT INTO public.recipes VALUES (72, 335, 10018, 1);
INSERT INTO public.recipes VALUES (73, 724, 10018, 1);
INSERT INTO public.recipes VALUES (74, 262, 346, 1);
INSERT INTO public.recipes VALUES (75, 284, 284, 1);
INSERT INTO public.recipes VALUES (76, 388, 10086, 120);
INSERT INTO public.recipes VALUES (77, 334, 10086, 2);
INSERT INTO public.recipes VALUES (78, 2, 10087, 250);
INSERT INTO public.recipes VALUES (79, 410, 410, 1);
INSERT INTO public.recipes VALUES (80, 410, 611, 2);
INSERT INTO public.recipes VALUES (81, 245, 611, 1);
INSERT INTO public.recipes VALUES (82, 246, 611, 1);
INSERT INTO public.recipes VALUES (83, 334, 20019, 1);
INSERT INTO public.recipes VALUES (84, 335, 20019, 1);
INSERT INTO public.recipes VALUES (85, 336, 20019, 1);
INSERT INTO public.recipes VALUES (86, 800, 800, 1);
INSERT INTO public.recipes VALUES (87, 838, 838, 1);
INSERT INTO public.recipes VALUES (88, 771, 10088, 25);
INSERT INTO public.recipes VALUES (89, 10069, 10088, 10);
INSERT INTO public.recipes VALUES (90, 10074, 10088, 1);
INSERT INTO public.recipes VALUES (91, 597, 597, 1);
INSERT INTO public.recipes VALUES (92, 258, 258, 1);
INSERT INTO public.recipes VALUES (93, 258, 234, 1);
INSERT INTO public.recipes VALUES (94, 246, 234, 1);
INSERT INTO public.recipes VALUES (95, 245, 234, 1);
INSERT INTO public.recipes VALUES (96, 10001, 234, 1);
INSERT INTO public.recipes VALUES (97, 278, 278, 1);
INSERT INTO public.recipes VALUES (98, 380, 287, 4);
INSERT INTO public.recipes VALUES (99, 382, 287, 1);
INSERT INTO public.recipes VALUES (100, 881, 881, 1);
INSERT INTO public.recipes VALUES (101, 881, 10037, 10);
INSERT INTO public.recipes VALUES (102, 330, 10037, 3);
INSERT INTO public.recipes VALUES (103, 2, 10037, 20);
INSERT INTO public.recipes VALUES (104, 246, 216, 1);
INSERT INTO public.recipes VALUES (105, 132, 132, 1);
INSERT INTO public.recipes VALUES (106, 459, 20035, 1);
INSERT INTO public.recipes VALUES (107, 303, 20035, 1);
INSERT INTO public.recipes VALUES (108, 348, 20035, 1);
INSERT INTO public.recipes VALUES (109, 350, 20035, 1);
INSERT INTO public.recipes VALUES (110, 614, 20035, 1);
INSERT INTO public.recipes VALUES (111, 330, 293, 2);
INSERT INTO public.recipes VALUES (112, 2, 293, 5);
INSERT INTO public.recipes VALUES (113, 216, 618, 1);
INSERT INTO public.recipes VALUES (114, 247, 618, 1);
INSERT INTO public.recipes VALUES (115, 256, 618, 1);
INSERT INTO public.recipes VALUES (116, 684, 684, 1);
INSERT INTO public.recipes VALUES (117, 684, 874, 10);
INSERT INTO public.recipes VALUES (118, 700, 700, 1);
INSERT INTO public.recipes VALUES (119, 90, 90, 1);
INSERT INTO public.recipes VALUES (120, 2, 10027, 10);
INSERT INTO public.recipes VALUES (121, 388, 10027, 10);
INSERT INTO public.recipes VALUES (122, 771, 10027, 10);
INSERT INTO public.recipes VALUES (123, 142, 142, 1);
INSERT INTO public.recipes VALUES (124, 142, 209, 4);
INSERT INTO public.recipes VALUES (125, 709, 10028, 10);
INSERT INTO public.recipes VALUES (126, 382, 10028, 1);
INSERT INTO public.recipes VALUES (127, 276, 30010, 1);
INSERT INTO public.recipes VALUES (128, 388, 10019, 20);
INSERT INTO public.recipes VALUES (129, 709, 10019, 1);
INSERT INTO public.recipes VALUES (130, 707, 30027, 1);
INSERT INTO public.recipes VALUES (131, 151, 30019, 1);
INSERT INTO public.recipes VALUES (132, 143, 143, 1);
INSERT INTO public.recipes VALUES (133, 190, 190, 1);
INSERT INTO public.recipes VALUES (134, 78, 78, 1);
INSERT INTO public.recipes VALUES (135, 10002, 445, 1);
INSERT INTO public.recipes VALUES (136, 881, 10089, 5);
INSERT INTO public.recipes VALUES (137, 10069, 10089, 2);
INSERT INTO public.recipes VALUES (138, 281, 281, 1);
INSERT INTO public.recipes VALUES (139, 388, 10038, 20);
INSERT INTO public.recipes VALUES (140, 334, 10038, 2);
INSERT INTO public.recipes VALUES (141, 184, 424, 1);
INSERT INTO public.recipes VALUES (142, 190, 197, 1);
INSERT INTO public.recipes VALUES (143, 424, 197, 1);
INSERT INTO public.recipes VALUES (144, 388, 10020, 45);
INSERT INTO public.recipes VALUES (145, 2, 10020, 45);
INSERT INTO public.recipes VALUES (146, 709, 10020, 10);
INSERT INTO public.recipes VALUES (147, 334, 10020, 1);
INSERT INTO public.recipes VALUES (148, 724, 20022, 1);
INSERT INTO public.recipes VALUES (149, 259, 20022, 1);
INSERT INTO public.recipes VALUES (150, 430, 20022, 1);
INSERT INTO public.recipes VALUES (151, 376, 20022, 1);
INSERT INTO public.recipes VALUES (152, 228, 20022, 1);
INSERT INTO public.recipes VALUES (153, 194, 20022, 1);
INSERT INTO public.recipes VALUES (154, 638, 638, 1);
INSERT INTO public.recipes VALUES (155, 378, 286, 4);
INSERT INTO public.recipes VALUES (156, 382, 286, 1);
INSERT INTO public.recipes VALUES (157, 388, 10054, 50);
INSERT INTO public.recipes VALUES (158, 296, 20043, 10);
INSERT INTO public.recipes VALUES (159, 223, 20043, 1);
INSERT INTO public.recipes VALUES (160, 103, 20043, 1);
INSERT INTO public.recipes VALUES (161, 233, 20043, 1);
INSERT INTO public.recipes VALUES (162, 246, 220, 1);
INSERT INTO public.recipes VALUES (163, 245, 220, 1);
INSERT INTO public.recipes VALUES (164, 10001, 220, 1);
INSERT INTO public.recipes VALUES (165, 372, 727, 1);
INSERT INTO public.recipes VALUES (166, 184, 727, 1);
INSERT INTO public.recipes VALUES (167, 702, 702, 1);
INSERT INTO public.recipes VALUES (168, 848, 848, 1);
INSERT INTO public.recipes VALUES (169, 372, 372, 1);
INSERT INTO public.recipes VALUES (170, 330, 330, 1);
INSERT INTO public.recipes VALUES (171, 66, 30022, 1);
INSERT INTO public.recipes VALUES (172, 440, 428, 1);
INSERT INTO public.recipes VALUES (173, 382, 382, 1);
INSERT INTO public.recipes VALUES (174, 2, 411, 1);
INSERT INTO public.recipes VALUES (175, 718, 718, 1);
INSERT INTO public.recipes VALUES (176, 88, 88, 1);
INSERT INTO public.recipes VALUES (177, 433, 433, 1);
INSERT INTO public.recipes VALUES (178, 266, 648, 1);
INSERT INTO public.recipes VALUES (179, 419, 648, 1);
INSERT INTO public.recipes VALUES (180, 306, 648, 1);
INSERT INTO public.recipes VALUES (181, 404, 404, 1);
INSERT INTO public.recipes VALUES (182, 194, 201, 1);
INSERT INTO public.recipes VALUES (183, 184, 201, 1);
INSERT INTO public.recipes VALUES (184, 210, 201, 1);
INSERT INTO public.recipes VALUES (185, 211, 201, 1);
INSERT INTO public.recipes VALUES (186, 388, 20005, 99);
INSERT INTO public.recipes VALUES (187, 388, 20005, 99);
INSERT INTO public.recipes VALUES (188, 2, 20005, 99);
INSERT INTO public.recipes VALUES (189, 709, 20005, 10);
INSERT INTO public.recipes VALUES (190, 246, 223, 1);
INSERT INTO public.recipes VALUES (191, 245, 223, 1);
INSERT INTO public.recipes VALUES (192, 10001, 223, 1);
INSERT INTO public.recipes VALUES (193, 388, 926, 15);
INSERT INTO public.recipes VALUES (194, 771, 926, 10);
INSERT INTO public.recipes VALUES (195, 382, 926, 3);
INSERT INTO public.recipes VALUES (196, 378, 334, 5);
INSERT INTO public.recipes VALUES (197, 382, 334, 1);
INSERT INTO public.recipes VALUES (198, 378, 378, 1);
INSERT INTO public.recipes VALUES (199, 393, 393, 1);
INSERT INTO public.recipes VALUES (200, 388, 695, 10);
INSERT INTO public.recipes VALUES (201, 709, 695, 5);
INSERT INTO public.recipes VALUES (202, 766, 695, 10);
INSERT INTO public.recipes VALUES (203, 270, 270, 1);
INSERT INTO public.recipes VALUES (204, 300, 30005, 1);
INSERT INTO public.recipes VALUES (205, 717, 717, 1);
INSERT INTO public.recipes VALUES (206, 717, 732, 1);
INSERT INTO public.recipes VALUES (207, 246, 732, 1);
INSERT INTO public.recipes VALUES (208, 10001, 732, 1);
INSERT INTO public.recipes VALUES (209, 247, 732, 1);
INSERT INTO public.recipes VALUES (210, 388, 710, 25);
INSERT INTO public.recipes VALUES (211, 335, 710, 3);
INSERT INTO public.recipes VALUES (212, 715, 20017, 1);
INSERT INTO public.recipes VALUES (213, 716, 20017, 1);
INSERT INTO public.recipes VALUES (214, 717, 20017, 1);
INSERT INTO public.recipes VALUES (215, 718, 20017, 1);
INSERT INTO public.recipes VALUES (216, 719, 20017, 1);
INSERT INTO public.recipes VALUES (217, 720, 20017, 1);
INSERT INTO public.recipes VALUES (218, 721, 20017, 1);
INSERT INTO public.recipes VALUES (219, 722, 20017, 1);
INSERT INTO public.recipes VALUES (220, 723, 20017, 1);
INSERT INTO public.recipes VALUES (221, 372, 20017, 1);
INSERT INTO public.recipes VALUES (222, 282, 282, 1);
INSERT INTO public.recipes VALUES (223, 282, 612, 1);
INSERT INTO public.recipes VALUES (224, 613, 612, 1);
INSERT INTO public.recipes VALUES (225, 245, 612, 1);
INSERT INTO public.recipes VALUES (226, 282, 238, 1);
INSERT INTO public.recipes VALUES (227, 245, 238, 1);
INSERT INTO public.recipes VALUES (228, 716, 716, 1);
INSERT INTO public.recipes VALUES (229, 159, 159, 1);
INSERT INTO public.recipes VALUES (230, 136, 214, 1);
INSERT INTO public.recipes VALUES (231, 246, 214, 1);
INSERT INTO public.recipes VALUES (232, 247, 214, 1);
INSERT INTO public.recipes VALUES (233, 418, 418, 1);
INSERT INTO public.recipes VALUES (234, 254, 30006, 1);
INSERT INTO public.recipes VALUES (235, 338, 333, 1);
INSERT INTO public.recipes VALUES (236, 414, 414, 1);
INSERT INTO public.recipes VALUES (237, 338, 409, 1);
INSERT INTO public.recipes VALUES (238, 2, 10039, 99);
INSERT INTO public.recipes VALUES (239, 336, 10039, 5);
INSERT INTO public.recipes VALUES (240, 337, 10039, 2);
INSERT INTO public.recipes VALUES (241, 787, 10039, 1);
INSERT INTO public.recipes VALUES (242, 18, 18, 1);
INSERT INTO public.recipes VALUES (243, 22, 22, 1);
INSERT INTO public.recipes VALUES (244, 767, 10056, 5);
INSERT INTO public.recipes VALUES (245, 881, 10056, 5);
INSERT INTO public.recipes VALUES (246, 388, 10090, 30);
INSERT INTO public.recipes VALUES (247, 330, 10090, 2);
INSERT INTO public.recipes VALUES (248, 82, 10090, 1);
INSERT INTO public.recipes VALUES (249, 685, 10091, 5);
INSERT INTO public.recipes VALUES (250, 10069, 10091, 2);
INSERT INTO public.recipes VALUES (251, 337, 919, 1);
INSERT INTO public.recipes VALUES (252, 92, 919, 40);
INSERT INTO public.recipes VALUES (253, 2, 920, 5);
INSERT INTO public.recipes VALUES (254, 771, 920, 3);
INSERT INTO public.recipes VALUES (255, 330, 920, 1);
INSERT INTO public.recipes VALUES (256, 388, 10059, 50);
INSERT INTO public.recipes VALUES (257, 771, 10059, 40);
INSERT INTO public.recipes VALUES (258, 386, 10059, 1);
INSERT INTO public.recipes VALUES (259, 725, 466, 1);
INSERT INTO public.recipes VALUES (260, 393, 466, 1);
INSERT INTO public.recipes VALUES (261, 10051, 10092, 1);
INSERT INTO public.recipes VALUES (262, 10069, 10092, 30);
INSERT INTO public.recipes VALUES (263, 337, 50003, 20);
INSERT INTO public.recipes VALUES (264, 88, 50003, 10);
INSERT INTO public.recipes VALUES (265, 90, 50003, 10);
INSERT INTO public.recipes VALUES (266, 107, 807, 1);
INSERT INTO public.recipes VALUES (267, 131, 242, 2);
INSERT INTO public.recipes VALUES (268, 210, 242, 1);
INSERT INTO public.recipes VALUES (269, 704, 704, 1);
INSERT INTO public.recipes VALUES (270, 335, 687, 2);
INSERT INTO public.recipes VALUES (271, 428, 687, 1);
INSERT INTO public.recipes VALUES (272, 10004, 10072, 5);
INSERT INTO public.recipes VALUES (273, 10068, 10073, 5);
INSERT INTO public.recipes VALUES (274, 2, 463, 10);
INSERT INTO public.recipes VALUES (275, 378, 463, 2);
INSERT INTO public.recipes VALUES (276, 771, 463, 20);
INSERT INTO public.recipes VALUES (277, 442, 442, 1);
INSERT INTO public.recipes VALUES (278, 444, 444, 1);
INSERT INTO public.recipes VALUES (279, 442, 307, 1);
INSERT INTO public.recipes VALUES (280, 420, 20023, 1);
INSERT INTO public.recipes VALUES (281, 397, 20023, 1);
INSERT INTO public.recipes VALUES (282, 421, 20023, 1);
INSERT INTO public.recipes VALUES (283, 444, 20023, 1);
INSERT INTO public.recipes VALUES (284, 62, 20023, 1);
INSERT INTO public.recipes VALUES (285, 266, 20023, 1);
INSERT INTO public.recipes VALUES (286, 420, 20041, 1);
INSERT INTO public.recipes VALUES (287, 284, 20041, 1);
INSERT INTO public.recipes VALUES (288, 397, 20041, 1);
INSERT INTO public.recipes VALUES (289, 300, 20041, 1);
INSERT INTO public.recipes VALUES (290, 421, 20041, 1);
INSERT INTO public.recipes VALUES (291, 268, 20041, 1);
INSERT INTO public.recipes VALUES (292, 444, 20041, 1);
INSERT INTO public.recipes VALUES (293, 90, 20041, 1);
INSERT INTO public.recipes VALUES (294, 62, 20041, 1);
INSERT INTO public.recipes VALUES (295, 258, 20041, 1);
INSERT INTO public.recipes VALUES (296, 266, 20041, 1);
INSERT INTO public.recipes VALUES (297, 337, 20041, 1);
INSERT INTO public.recipes VALUES (298, 337, 50001, 10);
INSERT INTO public.recipes VALUES (299, 86, 50001, 10);
INSERT INTO public.recipes VALUES (300, 148, 148, 1);
INSERT INTO public.recipes VALUES (301, 176, 176, 1);
INSERT INTO public.recipes VALUES (302, 180, 180, 1);
INSERT INTO public.recipes VALUES (303, 272, 272, 1);
INSERT INTO public.recipes VALUES (304, 272, 231, 1);
INSERT INTO public.recipes VALUES (305, 256, 231, 1);
INSERT INTO public.recipes VALUES (306, 725, 20026, 1);
INSERT INTO public.recipes VALUES (307, 348, 20026, 1);
INSERT INTO public.recipes VALUES (308, 446, 20026, 1);
INSERT INTO public.recipes VALUES (309, 637, 20026, 1);
INSERT INTO public.recipes VALUES (310, 386, 20040, 1);
INSERT INTO public.recipes VALUES (311, 787, 20040, 1);
INSERT INTO public.recipes VALUES (312, 338, 20040, 5);
INSERT INTO public.recipes VALUES (313, 721, 729, 1);
INSERT INTO public.recipes VALUES (314, 248, 729, 1);
INSERT INTO public.recipes VALUES (315, 88, 20006, 1);
INSERT INTO public.recipes VALUES (316, 90, 20006, 1);
INSERT INTO public.recipes VALUES (317, 78, 20006, 1);
INSERT INTO public.recipes VALUES (318, 420, 20006, 1);
INSERT INTO public.recipes VALUES (319, 422, 20006, 1);
INSERT INTO public.recipes VALUES (320, 724, 20006, 1);
INSERT INTO public.recipes VALUES (321, 725, 20006, 1);
INSERT INTO public.recipes VALUES (322, 726, 20006, 1);
INSERT INTO public.recipes VALUES (323, 257, 20006, 1);
INSERT INTO public.recipes VALUES (324, 88, 30026, 1);
INSERT INTO public.recipes VALUES (325, 335, 441, 1);
INSERT INTO public.recipes VALUES (326, 382, 441, 2);
INSERT INTO public.recipes VALUES (327, 72, 872, 1);
INSERT INTO public.recipes VALUES (328, 595, 872, 1);
INSERT INTO public.recipes VALUES (329, 595, 595, 1);
INSERT INTO public.recipes VALUES (330, 270, 20009, 1);
INSERT INTO public.recipes VALUES (331, 272, 20009, 1);
INSERT INTO public.recipes VALUES (332, 276, 20009, 1);
INSERT INTO public.recipes VALUES (333, 280, 20009, 1);
INSERT INTO public.recipes VALUES (334, 404, 20003, 1);
INSERT INTO public.recipes VALUES (335, 406, 20003, 1);
INSERT INTO public.recipes VALUES (336, 408, 20003, 1);
INSERT INTO public.recipes VALUES (337, 410, 20003, 1);
INSERT INTO public.recipes VALUES (338, 410, 497, 1);
INSERT INTO public.recipes VALUES (339, 404, 497, 1);
INSERT INTO public.recipes VALUES (340, 408, 497, 1);
INSERT INTO public.recipes VALUES (341, 406, 497, 1);
INSERT INTO public.recipes VALUES (342, 122, 10060, 1);
INSERT INTO public.recipes VALUES (343, 787, 10060, 1);
INSERT INTO public.recipes VALUES (344, 338, 10060, 10);
INSERT INTO public.recipes VALUES (345, 195, 240, 1);
INSERT INTO public.recipes VALUES (346, 24, 240, 1);
INSERT INTO public.recipes VALUES (347, 771, 771, 1);
INSERT INTO public.recipes VALUES (348, 770, 885, 1);
INSERT INTO public.recipes VALUES (349, 92, 885, 5);
INSERT INTO public.recipes VALUES (350, 330, 885, 1);
INSERT INTO public.recipes VALUES (351, 259, 259, 1);
INSERT INTO public.recipes VALUES (352, 247, 649, 1);
INSERT INTO public.recipes VALUES (353, 259, 649, 1);
INSERT INTO public.recipes VALUES (354, 248, 649, 1);
INSERT INTO public.recipes VALUES (355, 422, 20024, 1);
INSERT INTO public.recipes VALUES (356, 392, 20024, 1);
INSERT INTO public.recipes VALUES (357, 702, 20024, 1);
INSERT INTO public.recipes VALUES (358, 536, 20024, 1);
INSERT INTO public.recipes VALUES (359, 309, 403, 1);
INSERT INTO public.recipes VALUES (360, 310, 403, 1);
INSERT INTO public.recipes VALUES (361, 311, 403, 1);
INSERT INTO public.recipes VALUES (362, 136, 30018, 1);
INSERT INTO public.recipes VALUES (363, 812, 20034, 15);
INSERT INTO public.recipes VALUES (364, 447, 20034, 15);
INSERT INTO public.recipes VALUES (365, 814, 20034, 1);
INSERT INTO public.recipes VALUES (366, 2, 40001, 200);
INSERT INTO public.recipes VALUES (367, 152, 40001, 5);
INSERT INTO public.recipes VALUES (368, 153, 40001, 5);
INSERT INTO public.recipes VALUES (369, 709, 10093, 10);
INSERT INTO public.recipes VALUES (370, 10082, 10093, 1);
INSERT INTO public.recipes VALUES (371, 10081, 10093, 1);
INSERT INTO public.recipes VALUES (372, 10080, 10093, 1);
INSERT INTO public.recipes VALUES (373, 716, 728, 1);
INSERT INTO public.recipes VALUES (374, 719, 728, 1);
INSERT INTO public.recipes VALUES (375, 722, 728, 1);
INSERT INTO public.recipes VALUES (376, 256, 728, 1);
INSERT INTO public.recipes VALUES (377, 705, 30020, 1);
INSERT INTO public.recipes VALUES (378, 130, 213, 1);
INSERT INTO public.recipes VALUES (379, 229, 213, 1);
INSERT INTO public.recipes VALUES (380, 266, 213, 1);
INSERT INTO public.recipes VALUES (381, 306, 213, 1);
INSERT INTO public.recipes VALUES (382, 267, 267, 1);
INSERT INTO public.recipes VALUES (383, 388, 464, 10);
INSERT INTO public.recipes VALUES (384, 378, 464, 2);
INSERT INTO public.recipes VALUES (385, 771, 464, 20);
INSERT INTO public.recipes VALUES (386, 262, 20025, 10);
INSERT INTO public.recipes VALUES (387, 178, 20025, 10);
INSERT INTO public.recipes VALUES (388, 613, 20025, 3);
INSERT INTO public.recipes VALUES (389, 296, 20044, 50);
INSERT INTO public.recipes VALUES (390, 410, 20044, 50);
INSERT INTO public.recipes VALUES (391, 406, 20044, 20);
INSERT INTO public.recipes VALUES (392, 634, 30012, 1);
INSERT INTO public.recipes VALUES (393, 151, 202, 1);
INSERT INTO public.recipes VALUES (394, 246, 202, 1);
INSERT INTO public.recipes VALUES (395, 247, 202, 1);
INSERT INTO public.recipes VALUES (396, 148, 225, 1);
INSERT INTO public.recipes VALUES (397, 247, 225, 1);
INSERT INTO public.recipes VALUES (398, 10001, 194, 1);
INSERT INTO public.recipes VALUES (399, 404, 205, 1);
INSERT INTO public.recipes VALUES (400, 257, 205, 1);
INSERT INTO public.recipes VALUES (401, 247, 205, 1);
INSERT INTO public.recipes VALUES (402, 258, 610, 1);
INSERT INTO public.recipes VALUES (403, 254, 610, 1);
INSERT INTO public.recipes VALUES (404, 634, 610, 1);
INSERT INTO public.recipes VALUES (405, 378, 10040, 20);
INSERT INTO public.recipes VALUES (406, 2, 10040, 25);
INSERT INTO public.recipes VALUES (407, 591, 20033, 1);
INSERT INTO public.recipes VALUES (408, 597, 20033, 1);
INSERT INTO public.recipes VALUES (409, 593, 20033, 1);
INSERT INTO public.recipes VALUES (410, 421, 20033, 1);
INSERT INTO public.recipes VALUES (411, 595, 20033, 1);
INSERT INTO public.recipes VALUES (412, 330, 10061, 1);
INSERT INTO public.recipes VALUES (413, 2, 10061, 10);
INSERT INTO public.recipes VALUES (414, 338, 10061, 1);
INSERT INTO public.recipes VALUES (415, 248, 248, 1);
INSERT INTO public.recipes VALUES (416, 388, 325, 10);
INSERT INTO public.recipes VALUES (417, 336, 10041, 2);
INSERT INTO public.recipes VALUES (418, 2, 10041, 50);
INSERT INTO public.recipes VALUES (419, 72, 10041, 1);
INSERT INTO public.recipes VALUES (420, 80, 20020, 1);
INSERT INTO public.recipes VALUES (421, 86, 20020, 1);
INSERT INTO public.recipes VALUES (422, 84, 20020, 1);
INSERT INTO public.recipes VALUES (423, 82, 20020, 1);
INSERT INTO public.recipes VALUES (424, 156, 156, 1);
INSERT INTO public.recipes VALUES (425, 829, 829, 1);
INSERT INTO public.recipes VALUES (426, 829, 903, 3);
INSERT INTO public.recipes VALUES (427, 245, 903, 1);
INSERT INTO public.recipes VALUES (428, 775, 775, 1);
INSERT INTO public.recipes VALUES (429, 280, 208, 1);
INSERT INTO public.recipes VALUES (430, 245, 208, 1);
INSERT INTO public.recipes VALUES (431, 768, 888, 5);
INSERT INTO public.recipes VALUES (432, 335, 888, 5);
INSERT INTO public.recipes VALUES (433, 436, 426, 1);
INSERT INTO public.recipes VALUES (434, 436, 436, 1);
INSERT INTO public.recipes VALUES (435, 308, 30028, 1);
INSERT INTO public.recipes VALUES (436, 335, 336, 2);
INSERT INTO public.recipes VALUES (437, 336, 10029, 1);
INSERT INTO public.recipes VALUES (438, 382, 10029, 1);
INSERT INTO public.recipes VALUES (439, 771, 10029, 5);
INSERT INTO public.recipes VALUES (440, 384, 384, 1);
INSERT INTO public.recipes VALUES (441, 483, 30029, 1);
INSERT INTO public.recipes VALUES (442, 479, 30029, 1);
INSERT INTO public.recipes VALUES (443, 476, 30029, 1);
INSERT INTO public.recipes VALUES (444, 20, 30025, 1);
INSERT INTO public.recipes VALUES (445, 398, 398, 1);
INSERT INTO public.recipes VALUES (446, 771, 297, 10);
INSERT INTO public.recipes VALUES (447, 2, 407, 1);
INSERT INTO public.recipes VALUES (448, 188, 188, 1);
INSERT INTO public.recipes VALUES (449, 815, 614, 1);
INSERT INTO public.recipes VALUES (450, 708, 708, 1);
INSERT INTO public.recipes VALUES (451, 709, 709, 1);
INSERT INTO public.recipes VALUES (452, 709, 298, 1);
INSERT INTO public.recipes VALUES (453, 192, 210, 1);
INSERT INTO public.recipes VALUES (454, 247, 210, 1);
INSERT INTO public.recipes VALUES (455, 408, 408, 1);
INSERT INTO public.recipes VALUES (456, 10040, 10094, 2);
INSERT INTO public.recipes VALUES (457, 335, 10094, 3);
INSERT INTO public.recipes VALUES (458, 2, 10094, 50);
INSERT INTO public.recipes VALUES (459, 709, 10042, 30);
INSERT INTO public.recipes VALUES (460, 910, 10042, 1);
INSERT INTO public.recipes VALUES (461, 147, 147, 1);
INSERT INTO public.recipes VALUES (462, 283, 283, 1);
INSERT INTO public.recipes VALUES (463, 10001, 20042, 10);
INSERT INTO public.recipes VALUES (464, 10017, 20042, 10);
INSERT INTO public.recipes VALUES (465, 246, 20042, 100);
INSERT INTO public.recipes VALUES (466, 340, 340, 1);
INSERT INTO public.recipes VALUES (467, 709, 10062, 10);
INSERT INTO public.recipes VALUES (468, 337, 10062, 1);
INSERT INTO public.recipes VALUES (469, 910, 10062, 1);
INSERT INTO public.recipes VALUES (470, 304, 304, 1);
INSERT INTO public.recipes VALUES (471, 260, 260, 1);
INSERT INTO public.recipes VALUES (472, 909, 918, 1);
INSERT INTO public.recipes VALUES (473, 881, 918, 3);
INSERT INTO public.recipes VALUES (474, 768, 918, 1);
INSERT INTO public.recipes VALUES (475, 184, 233, 1);
INSERT INTO public.recipes VALUES (476, 245, 233, 1);
INSERT INTO public.recipes VALUES (477, 161, 161, 1);
INSERT INTO public.recipes VALUES (478, 337, 527, 5);
INSERT INTO public.recipes VALUES (479, 768, 527, 50);
INSERT INTO public.recipes VALUES (480, 769, 527, 50);
INSERT INTO public.recipes VALUES (481, 386, 337, 5);
INSERT INTO public.recipes VALUES (482, 382, 337, 1);
INSERT INTO public.recipes VALUES (483, 386, 386, 1);
INSERT INTO public.recipes VALUES (484, 336, 645, 1);
INSERT INTO public.recipes VALUES (485, 337, 645, 1);
INSERT INTO public.recipes VALUES (486, 787, 645, 1);
INSERT INTO public.recipes VALUES (487, 334, 335, 3);
INSERT INTO public.recipes VALUES (488, 335, 324, 1);
INSERT INTO public.recipes VALUES (489, 335, 10030, 1);
INSERT INTO public.recipes VALUES (490, 787, 10030, 1);
INSERT INTO public.recipes VALUES (491, 380, 380, 1);
INSERT INTO public.recipes VALUES (492, 91, 30032, 1);
INSERT INTO public.recipes VALUES (493, 66, 30031, 1);
INSERT INTO public.recipes VALUES (494, 62, 30031, 1);
INSERT INTO public.recipes VALUES (495, 60, 30031, 1);
INSERT INTO public.recipes VALUES (496, 64, 30031, 1);
INSERT INTO public.recipes VALUES (497, 68, 30031, 1);
INSERT INTO public.recipes VALUES (498, 464, 30030, 5);
INSERT INTO public.recipes VALUES (499, 337, 50004, 10);
INSERT INTO public.recipes VALUES (500, 852, 50004, 10);
INSERT INTO public.recipes VALUES (501, 91, 50004, 10);
INSERT INTO public.recipes VALUES (502, 276, 746, 1);
INSERT INTO public.recipes VALUES (503, 93, 746, 1);
INSERT INTO public.recipes VALUES (504, 10004, 344, 1);
INSERT INTO public.recipes VALUES (505, 190, 30001, 1);
INSERT INTO public.recipes VALUES (506, 10005, 350, 1);
INSERT INTO public.recipes VALUES (507, 250, 250, 1);
INSERT INTO public.recipes VALUES (508, 388, 10021, 30);
INSERT INTO public.recipes VALUES (509, 334, 10021, 1);
INSERT INTO public.recipes VALUES (510, 335, 10021, 1);
INSERT INTO public.recipes VALUES (511, 725, 10021, 1);
INSERT INTO public.recipes VALUES (512, 260, 30007, 1);
INSERT INTO public.recipes VALUES (513, 136, 20014, 1);
INSERT INTO public.recipes VALUES (514, 142, 20014, 1);
INSERT INTO public.recipes VALUES (515, 700, 20014, 1);
INSERT INTO public.recipes VALUES (516, 698, 20014, 1);
INSERT INTO public.recipes VALUES (517, 174, 174, 1);
INSERT INTO public.recipes VALUES (518, 182, 182, 1);
INSERT INTO public.recipes VALUES (519, 438, 438, 1);
INSERT INTO public.recipes VALUES (520, 186, 186, 1);
INSERT INTO public.recipes VALUES (521, 136, 136, 1);
INSERT INTO public.recipes VALUES (522, 162, 162, 1);
INSERT INTO public.recipes VALUES (523, 20, 20, 1);
INSERT INTO public.recipes VALUES (524, 163, 163, 1);
INSERT INTO public.recipes VALUES (525, 420, 773, 1);
INSERT INTO public.recipes VALUES (526, 422, 773, 1);
INSERT INTO public.recipes VALUES (527, 257, 773, 1);
INSERT INTO public.recipes VALUES (528, 281, 773, 1);
INSERT INTO public.recipes VALUES (529, 335, 10043, 1);
INSERT INTO public.recipes VALUES (530, 338, 10043, 1);
INSERT INTO public.recipes VALUES (531, 767, 10043, 5);
INSERT INTO public.recipes VALUES (532, 707, 707, 1);
INSERT INTO public.recipes VALUES (533, 837, 837, 1);
INSERT INTO public.recipes VALUES (534, 715, 715, 1);
INSERT INTO public.recipes VALUES (535, 715, 730, 1);
INSERT INTO public.recipes VALUES (536, 184, 730, 1);
INSERT INTO public.recipes VALUES (537, 388, 10022, 60);
INSERT INTO public.recipes VALUES (538, 771, 10022, 30);
INSERT INTO public.recipes VALUES (539, 726, 10022, 1);
INSERT INTO public.recipes VALUES (540, 154, 204, 1);
INSERT INTO public.recipes VALUES (541, 229, 204, 1);
INSERT INTO public.recipes VALUES (542, 597, 204, 1);
INSERT INTO public.recipes VALUES (543, 909, 908, 1);
INSERT INTO public.recipes VALUES (544, 684, 908, 3);
INSERT INTO public.recipes VALUES (545, 851, 851, 1);
INSERT INTO public.recipes VALUES (546, 335, 703, 1);
INSERT INTO public.recipes VALUES (547, 10003, 228, 1);
INSERT INTO public.recipes VALUES (548, 152, 228, 1);
INSERT INTO public.recipes VALUES (549, 423, 228, 1);
INSERT INTO public.recipes VALUES (550, 834, 834, 1);
INSERT INTO public.recipes VALUES (551, 834, 905, 1);
INSERT INTO public.recipes VALUES (552, 88, 905, 1);
INSERT INTO public.recipes VALUES (553, 423, 905, 1);
INSERT INTO public.recipes VALUES (554, 724, 731, 1);
INSERT INTO public.recipes VALUES (555, 245, 731, 1);
INSERT INTO public.recipes VALUES (556, 246, 731, 1);
INSERT INTO public.recipes VALUES (557, 724, 724, 1);
INSERT INTO public.recipes VALUES (558, 567, 10031, 1);
INSERT INTO public.recipes VALUES (559, 62, 10031, 1);
INSERT INTO public.recipes VALUES (560, 2, 10031, 100);
INSERT INTO public.recipes VALUES (561, 78, 30002, 1);
INSERT INTO public.recipes VALUES (562, 417, 30033, 1);
INSERT INTO public.recipes VALUES (563, 162, 20036, 1);
INSERT INTO public.recipes VALUES (564, 165, 20036, 1);
INSERT INTO public.recipes VALUES (565, 149, 20036, 1);
INSERT INTO public.recipes VALUES (566, 800, 20036, 1);
INSERT INTO public.recipes VALUES (567, 10001, 306, 1);
INSERT INTO public.recipes VALUES (568, 388, 10023, 15);
INSERT INTO public.recipes VALUES (569, 2, 10023, 15);
INSERT INTO public.recipes VALUES (570, 86, 10023, 1);
INSERT INTO public.recipes VALUES (571, 334, 10023, 1);
INSERT INTO public.recipes VALUES (572, 432, 30015, 1);
INSERT INTO public.recipes VALUES (573, 340, 459, 1);
INSERT INTO public.recipes VALUES (574, 384, 288, 4);
INSERT INTO public.recipes VALUES (575, 768, 288, 1);
INSERT INTO public.recipes VALUES (576, 769, 288, 1);
INSERT INTO public.recipes VALUES (577, 254, 254, 1);
INSERT INTO public.recipes VALUES (578, 269, 269, 1);
INSERT INTO public.recipes VALUES (579, 798, 798, 1);
INSERT INTO public.recipes VALUES (580, 184, 184, 1);
INSERT INTO public.recipes VALUES (581, 78, 243, 2);
INSERT INTO public.recipes VALUES (582, 245, 243, 1);
INSERT INTO public.recipes VALUES (583, 184, 243, 1);
INSERT INTO public.recipes VALUES (584, 852, 10095, 5);
INSERT INTO public.recipes VALUES (585, 335, 10095, 10);
INSERT INTO public.recipes VALUES (586, 336, 10095, 10);
INSERT INTO public.recipes VALUES (587, 337, 10095, 5);
INSERT INTO public.recipes VALUES (588, 335, 10063, 2);
INSERT INTO public.recipes VALUES (589, 787, 10063, 1);
INSERT INTO public.recipes VALUES (590, 709, 10064, 30);
INSERT INTO public.recipes VALUES (591, 768, 10064, 20);
INSERT INTO public.recipes VALUES (592, 336, 10064, 3);
INSERT INTO public.recipes VALUES (593, 766, 879, 30);
INSERT INTO public.recipes VALUES (594, 767, 879, 30);
INSERT INTO public.recipes VALUES (595, 257, 257, 1);
INSERT INTO public.recipes VALUES (596, 10069, 10083, 20);
INSERT INTO public.recipes VALUES (597, 709, 10096, 10);
INSERT INTO public.recipes VALUES (598, 10069, 10096, 10);
INSERT INTO public.recipes VALUES (599, 719, 719, 1);
INSERT INTO public.recipes VALUES (600, 682, 682, 1);
INSERT INTO public.recipes VALUES (601, 392, 392, 1);
INSERT INTO public.recipes VALUES (602, 140, 20016, 1);
INSERT INTO public.recipes VALUES (603, 132, 20016, 1);
INSERT INTO public.recipes VALUES (604, 148, 20016, 1);
INSERT INTO public.recipes VALUES (605, 725, 725, 1);
INSERT INTO public.recipes VALUES (606, 131, 20015, 1);
INSERT INTO public.recipes VALUES (607, 130, 20015, 1);
INSERT INTO public.recipes VALUES (608, 150, 20015, 1);
INSERT INTO public.recipes VALUES (609, 701, 20015, 1);
INSERT INTO public.recipes VALUES (610, 149, 149, 1);
INSERT INTO public.recipes VALUES (611, 270, 247, 1);
INSERT INTO public.recipes VALUES (612, 766, 10024, 50);
INSERT INTO public.recipes VALUES (613, 709, 10024, 20);
INSERT INTO public.recipes VALUES (614, 336, 10024, 1);
INSERT INTO public.recipes VALUES (615, 248, 772, 10);
INSERT INTO public.recipes VALUES (616, 247, 772, 1);
INSERT INTO public.recipes VALUES (617, 10001, 195, 1);
INSERT INTO public.recipes VALUES (618, 184, 195, 1);
INSERT INTO public.recipes VALUES (619, 635, 635, 1);
INSERT INTO public.recipes VALUES (620, 289, 289, 1);
INSERT INTO public.recipes VALUES (621, 881, 10044, 50);
INSERT INTO public.recipes VALUES (622, 709, 10044, 50);
INSERT INTO public.recipes VALUES (623, 848, 10044, 20);
INSERT INTO public.recipes VALUES (624, 723, 723, 1);
INSERT INTO public.recipes VALUES (625, 304, 303, 1);
INSERT INTO public.recipes VALUES (626, 157, 457, 2);
INSERT INTO public.recipes VALUES (627, 303, 30003, 1);
INSERT INTO public.recipes VALUES (628, 787, 30017, 1);
INSERT INTO public.recipes VALUES (629, 246, 211, 1);
INSERT INTO public.recipes VALUES (630, 10001, 211, 1);
INSERT INTO public.recipes VALUES (631, 24, 24, 1);
INSERT INTO public.recipes VALUES (632, 24, 199, 1);
INSERT INTO public.recipes VALUES (633, 184, 199, 1);
INSERT INTO public.recipes VALUES (634, 419, 199, 1);
INSERT INTO public.recipes VALUES (635, 636, 636, 1);
INSERT INTO public.recipes VALUES (636, 260, 215, 1);
INSERT INTO public.recipes VALUES (637, 424, 215, 1);
INSERT INTO public.recipes VALUES (638, 141, 141, 1);
INSERT INTO public.recipes VALUES (639, 722, 722, 1);
INSERT INTO public.recipes VALUES (640, 10005, 342, 1);
INSERT INTO public.recipes VALUES (641, 227, 30021, 1);
INSERT INTO public.recipes VALUES (642, 144, 144, 1);
INSERT INTO public.recipes VALUES (643, 726, 726, 1);
INSERT INTO public.recipes VALUES (644, 832, 832, 1);
INSERT INTO public.recipes VALUES (645, 254, 221, 1);
INSERT INTO public.recipes VALUES (646, 246, 221, 1);
INSERT INTO public.recipes VALUES (647, 245, 221, 1);
INSERT INTO public.recipes VALUES (648, 10001, 221, 1);
INSERT INTO public.recipes VALUES (649, 246, 206, 1);
INSERT INTO public.recipes VALUES (650, 256, 206, 1);
INSERT INTO public.recipes VALUES (651, 424, 206, 1);
INSERT INTO public.recipes VALUES (652, 406, 604, 2);
INSERT INTO public.recipes VALUES (653, 246, 604, 1);
INSERT INTO public.recipes VALUES (654, 245, 604, 1);
INSERT INTO public.recipes VALUES (655, 830, 906, 4);
INSERT INTO public.recipes VALUES (656, 637, 637, 1);
INSERT INTO public.recipes VALUES (657, 376, 376, 1);
INSERT INTO public.recipes VALUES (658, 376, 651, 1);
INSERT INTO public.recipes VALUES (659, 246, 651, 1);
INSERT INTO public.recipes VALUES (660, 245, 651, 1);
INSERT INTO public.recipes VALUES (661, 192, 192, 1);
INSERT INTO public.recipes VALUES (662, 388, 10025, 50);
INSERT INTO public.recipes VALUES (663, 2, 10025, 40);
INSERT INTO public.recipes VALUES (664, 382, 10025, 8);
INSERT INTO public.recipes VALUES (665, 128, 128, 1);
INSERT INTO public.recipes VALUES (666, 276, 276, 1);
INSERT INTO public.recipes VALUES (667, 276, 608, 1);
INSERT INTO public.recipes VALUES (668, 246, 608, 1);
INSERT INTO public.recipes VALUES (669, 184, 608, 1);
INSERT INTO public.recipes VALUES (670, 245, 608, 1);
INSERT INTO public.recipes VALUES (671, 276, 236, 1);
INSERT INTO public.recipes VALUES (672, 184, 236, 1);
INSERT INTO public.recipes VALUES (673, 422, 422, 1);
INSERT INTO public.recipes VALUES (674, 334, 877, 1);
INSERT INTO public.recipes VALUES (675, 92, 877, 20);
INSERT INTO public.recipes VALUES (676, 768, 877, 5);
INSERT INTO public.recipes VALUES (677, 10006, 20010, 5);
INSERT INTO public.recipes VALUES (678, 10007, 20010, 5);
INSERT INTO public.recipes VALUES (679, 10009, 20010, 5);
INSERT INTO public.recipes VALUES (680, 10008, 20010, 5);
INSERT INTO public.recipes VALUES (681, 10006, 20031, 5);
INSERT INTO public.recipes VALUES (682, 10010, 20031, 5);
INSERT INTO public.recipes VALUES (683, 10011, 20031, 5);
INSERT INTO public.recipes VALUES (684, 10012, 20031, 5);
INSERT INTO public.recipes VALUES (685, 10007, 20031, 5);
INSERT INTO public.recipes VALUES (686, 10013, 20031, 5);
INSERT INTO public.recipes VALUES (687, 10014, 20031, 5);
INSERT INTO public.recipes VALUES (688, 10009, 20031, 5);
INSERT INTO public.recipes VALUES (689, 10015, 20031, 5);
INSERT INTO public.recipes VALUES (690, 10016, 20031, 5);
INSERT INTO public.recipes VALUES (691, 10008, 20031, 5);
INSERT INTO public.recipes VALUES (692, 92, 369, 2);
INSERT INTO public.recipes VALUES (693, 10003, 369, 1);
INSERT INTO public.recipes VALUES (694, 136, 20037, 1);
INSERT INTO public.recipes VALUES (695, 706, 20037, 1);
INSERT INTO public.recipes VALUES (696, 130, 20037, 1);
INSERT INTO public.recipes VALUES (697, 140, 20037, 1);
INSERT INTO public.recipes VALUES (698, 2, 371, 3);
INSERT INTO public.recipes VALUES (699, 330, 371, 1);
INSERT INTO public.recipes VALUES (700, 335, 621, 1);
INSERT INTO public.recipes VALUES (701, 336, 621, 1);
INSERT INTO public.recipes VALUES (702, 338, 621, 1);
INSERT INTO public.recipes VALUES (703, 446, 446, 1);
INSERT INTO public.recipes VALUES (704, 909, 910, 5);
INSERT INTO public.recipes VALUES (705, 382, 910, 1);
INSERT INTO public.recipes VALUES (706, 909, 909, 1);
INSERT INTO public.recipes VALUES (707, 264, 264, 1);
INSERT INTO public.recipes VALUES (708, 247, 609, 1);
INSERT INTO public.recipes VALUES (709, 419, 609, 1);
INSERT INTO public.recipes VALUES (710, 264, 609, 1);
INSERT INTO public.recipes VALUES (711, 709, 681, 1);
INSERT INTO public.recipes VALUES (712, 432, 681, 1);
INSERT INTO public.recipes VALUES (713, 726, 681, 5);
INSERT INTO public.recipes VALUES (714, 394, 394, 1);
INSERT INTO public.recipes VALUES (715, 138, 138, 1);
INSERT INTO public.recipes VALUES (716, 398, 10076, 5);
INSERT INTO public.recipes VALUES (717, 454, 20032, 1);
INSERT INTO public.recipes VALUES (718, 417, 20032, 1);
INSERT INTO public.recipes VALUES (719, 388, 10045, 25);
INSERT INTO public.recipes VALUES (720, 2, 10045, 25);
INSERT INTO public.recipes VALUES (721, 335, 10045, 1);
INSERT INTO public.recipes VALUES (722, 266, 266, 1);
INSERT INTO public.recipes VALUES (723, 146, 146, 1);
INSERT INTO public.recipes VALUES (724, 420, 420, 1);
INSERT INTO public.recipes VALUES (725, 266, 230, 1);
INSERT INTO public.recipes VALUES (726, 264, 230, 1);
INSERT INTO public.recipes VALUES (727, 150, 150, 1);
INSERT INTO public.recipes VALUES (728, 80, 338, 1);
INSERT INTO public.recipes VALUES (729, 252, 252, 1);
INSERT INTO public.recipes VALUES (730, 252, 222, 1);
INSERT INTO public.recipes VALUES (731, 246, 222, 1);
INSERT INTO public.recipes VALUES (732, 245, 222, 1);
INSERT INTO public.recipes VALUES (733, 184, 232, 1);
INSERT INTO public.recipes VALUES (734, 245, 232, 1);
INSERT INTO public.recipes VALUES (735, 423, 232, 1);
INSERT INTO public.recipes VALUES (736, 335, 524, 5);
INSERT INTO public.recipes VALUES (737, 336, 524, 5);
INSERT INTO public.recipes VALUES (738, 72, 524, 1);
INSERT INTO public.recipes VALUES (739, 145, 20013, 1);
INSERT INTO public.recipes VALUES (740, 143, 20013, 1);
INSERT INTO public.recipes VALUES (741, 706, 20013, 1);
INSERT INTO public.recipes VALUES (742, 699, 20013, 1);
INSERT INTO public.recipes VALUES (743, 408, 607, 3);
INSERT INTO public.recipes VALUES (744, 709, 30008, 10);
INSERT INTO public.recipes VALUES (745, 812, 812, 1);
INSERT INTO public.recipes VALUES (746, 78, 244, 1);
INSERT INTO public.recipes VALUES (747, 412, 244, 1);
INSERT INTO public.recipes VALUES (748, 388, 840, 1);
INSERT INTO public.recipes VALUES (749, 20, 196, 1);
INSERT INTO public.recipes VALUES (750, 22, 196, 1);
INSERT INTO public.recipes VALUES (751, 419, 196, 1);
INSERT INTO public.recipes VALUES (752, 139, 139, 1);
INSERT INTO public.recipes VALUES (753, 139, 212, 1);
INSERT INTO public.recipes VALUES (754, 300, 212, 1);
INSERT INTO public.recipes VALUES (755, 250, 212, 1);
INSERT INTO public.recipes VALUES (756, 296, 296, 1);
INSERT INTO public.recipes VALUES (757, 164, 164, 1);
INSERT INTO public.recipes VALUES (758, 92, 92, 1);
INSERT INTO public.recipes VALUES (759, 131, 131, 1);
INSERT INTO public.recipes VALUES (760, 10003, 227, 1);
INSERT INTO public.recipes VALUES (761, 388, 10065, 50);
INSERT INTO public.recipes VALUES (762, 382, 10065, 1);
INSERT INTO public.recipes VALUES (763, 771, 10065, 20);
INSERT INTO public.recipes VALUES (764, 165, 165, 1);
INSERT INTO public.recipes VALUES (765, 154, 154, 1);
INSERT INTO public.recipes VALUES (766, 397, 397, 1);
INSERT INTO public.recipes VALUES (767, 267, 265, 1);
INSERT INTO public.recipes VALUES (768, 269, 265, 1);
INSERT INTO public.recipes VALUES (769, 814, 265, 1);
INSERT INTO public.recipes VALUES (770, 388, 10046, 25);
INSERT INTO public.recipes VALUES (771, 382, 10046, 10);
INSERT INTO public.recipes VALUES (772, 336, 10046, 1);
INSERT INTO public.recipes VALUES (773, 706, 706, 1);
INSERT INTO public.recipes VALUES (774, 720, 720, 1);
INSERT INTO public.recipes VALUES (775, 720, 733, 1);
INSERT INTO public.recipes VALUES (776, 256, 733, 1);
INSERT INTO public.recipes VALUES (777, 16, 733, 1);
INSERT INTO public.recipes VALUES (778, 881, 10032, 10);
INSERT INTO public.recipes VALUES (779, 766, 766, 1);
INSERT INTO public.recipes VALUES (780, 382, 10047, 25);
INSERT INTO public.recipes VALUES (781, 82, 10047, 1);
INSERT INTO public.recipes VALUES (782, 787, 10047, 1);
INSERT INTO public.recipes VALUES (783, 337, 10048, 2);
INSERT INTO public.recipes VALUES (784, 766, 10048, 100);
INSERT INTO public.recipes VALUES (785, 796, 796, 1);
INSERT INTO public.recipes VALUES (786, 137, 137, 1);
INSERT INTO public.recipes VALUES (787, 10003, 10077, 1);
INSERT INTO public.recipes VALUES (788, 721, 721, 1);
INSERT INTO public.recipes VALUES (789, 416, 416, 1);
INSERT INTO public.recipes VALUES (790, 768, 768, 1);
INSERT INTO public.recipes VALUES (791, 338, 10049, 10);
INSERT INTO public.recipes VALUES (792, 335, 10049, 5);
INSERT INTO public.recipes VALUES (793, 336, 10049, 5);
INSERT INTO public.recipes VALUES (794, 335, 10097, 1);
INSERT INTO public.recipes VALUES (795, 338, 10097, 2);
INSERT INTO public.recipes VALUES (796, 246, 224, 1);
INSERT INTO public.recipes VALUES (797, 256, 224, 1);
INSERT INTO public.recipes VALUES (798, 128, 20018, 1);
INSERT INTO public.recipes VALUES (799, 156, 20018, 1);
INSERT INTO public.recipes VALUES (800, 164, 20018, 1);
INSERT INTO public.recipes VALUES (801, 734, 20018, 1);
INSERT INTO public.recipes VALUES (802, 726, 465, 1);
INSERT INTO public.recipes VALUES (803, 372, 465, 1);
INSERT INTO public.recipes VALUES (804, 396, 396, 1);
INSERT INTO public.recipes VALUES (805, 148, 226, 1);
INSERT INTO public.recipes VALUES (806, 260, 226, 1);
INSERT INTO public.recipes VALUES (807, 335, 686, 2);
INSERT INTO public.recipes VALUES (808, 799, 799, 1);
INSERT INTO public.recipes VALUES (809, 24, 20007, 1);
INSERT INTO public.recipes VALUES (810, 188, 20007, 1);
INSERT INTO public.recipes VALUES (811, 190, 20007, 1);
INSERT INTO public.recipes VALUES (812, 192, 20007, 1);
INSERT INTO public.recipes VALUES (813, 16, 20001, 1);
INSERT INTO public.recipes VALUES (814, 18, 20001, 1);
INSERT INTO public.recipes VALUES (815, 20, 20001, 1);
INSERT INTO public.recipes VALUES (816, 22, 20001, 1);
INSERT INTO public.recipes VALUES (817, 16, 20027, 1);
INSERT INTO public.recipes VALUES (818, 18, 20027, 1);
INSERT INTO public.recipes VALUES (819, 20, 20027, 1);
INSERT INTO public.recipes VALUES (820, 22, 20027, 1);
INSERT INTO public.recipes VALUES (821, 399, 20027, 1);
INSERT INTO public.recipes VALUES (822, 399, 399, 1);
INSERT INTO public.recipes VALUES (823, 16, 495, 1);
INSERT INTO public.recipes VALUES (824, 18, 495, 1);
INSERT INTO public.recipes VALUES (825, 20, 495, 1);
INSERT INTO public.recipes VALUES (826, 22, 495, 1);
INSERT INTO public.recipes VALUES (827, 334, 599, 1);
INSERT INTO public.recipes VALUES (828, 335, 599, 1);
INSERT INTO public.recipes VALUES (829, 151, 151, 1);
INSERT INTO public.recipes VALUES (830, 814, 814, 1);
INSERT INTO public.recipes VALUES (831, 814, 921, 1);
INSERT INTO public.recipes VALUES (832, 246, 921, 1);
INSERT INTO public.recipes VALUES (833, 256, 921, 1);
INSERT INTO public.recipes VALUES (834, 337, 30024, 1);
INSERT INTO public.recipes VALUES (835, 2, 10066, 99);
INSERT INTO public.recipes VALUES (836, 268, 268, 1);
INSERT INTO public.recipes VALUES (837, 92, 10098, 999);
INSERT INTO public.recipes VALUES (838, 771, 10098, 999);
INSERT INTO public.recipes VALUES (839, 2, 10098, 999);
INSERT INTO public.recipes VALUES (840, 10069, 10098, 333);
INSERT INTO public.recipes VALUES (841, 337, 10099, 20);
INSERT INTO public.recipes VALUES (842, 2, 415, 1);
INSERT INTO public.recipes VALUES (843, 92, 20029, 500);
INSERT INTO public.recipes VALUES (844, 836, 836, 1);
INSERT INTO public.recipes VALUES (845, 78, 606, 1);
INSERT INTO public.recipes VALUES (846, 404, 606, 1);
INSERT INTO public.recipes VALUES (847, 250, 606, 1);
INSERT INTO public.recipes VALUES (848, 247, 606, 1);
INSERT INTO public.recipes VALUES (849, 2, 2, 1);
INSERT INTO public.recipes VALUES (850, 2, 10033, 10);
INSERT INTO public.recipes VALUES (851, 382, 10033, 1);
INSERT INTO public.recipes VALUES (852, 771, 10033, 5);
INSERT INTO public.recipes VALUES (853, 2, 10055, 50);
INSERT INTO public.recipes VALUES (854, 2, 323, 2);
INSERT INTO public.recipes VALUES (855, 2, 329, 1);
INSERT INTO public.recipes VALUES (856, 2, 10057, 25);
INSERT INTO public.recipes VALUES (857, 2, 841, 1);
INSERT INTO public.recipes VALUES (858, 158, 158, 1);
INSERT INTO public.recipes VALUES (859, 246, 203, 1);
INSERT INTO public.recipes VALUES (860, 722, 203, 1);
INSERT INTO public.recipes VALUES (861, 308, 203, 1);
INSERT INTO public.recipes VALUES (862, 724, 30011, 1);
INSERT INTO public.recipes VALUES (863, 388, 401, 1);
INSERT INTO public.recipes VALUES (864, 771, 401, 1);
INSERT INTO public.recipes VALUES (865, 400, 400, 1);
INSERT INTO public.recipes VALUES (866, 216, 239, 1);
INSERT INTO public.recipes VALUES (867, 282, 239, 1);
INSERT INTO public.recipes VALUES (868, 408, 239, 1);
INSERT INTO public.recipes VALUES (869, 709, 10034, 5);
INSERT INTO public.recipes VALUES (870, 382, 10034, 1);
INSERT INTO public.recipes VALUES (871, 334, 525, 2);
INSERT INTO public.recipes VALUES (872, 684, 525, 25);
INSERT INTO public.recipes VALUES (873, 766, 525, 25);
INSERT INTO public.recipes VALUES (874, 698, 698, 1);
INSERT INTO public.recipes VALUES (875, 256, 20008, 1);
INSERT INTO public.recipes VALUES (876, 260, 20008, 1);
INSERT INTO public.recipes VALUES (877, 258, 20008, 1);
INSERT INTO public.recipes VALUES (878, 254, 20008, 1);
INSERT INTO public.recipes VALUES (879, 398, 20002, 1);
INSERT INTO public.recipes VALUES (880, 396, 20002, 1);
INSERT INTO public.recipes VALUES (881, 402, 20002, 1);
INSERT INTO public.recipes VALUES (882, 396, 496, 1);
INSERT INTO public.recipes VALUES (883, 398, 496, 1);
INSERT INTO public.recipes VALUES (884, 402, 496, 1);
INSERT INTO public.recipes VALUES (885, 593, 593, 1);
INSERT INTO public.recipes VALUES (886, 145, 145, 1);
INSERT INTO public.recipes VALUES (887, 421, 421, 1);
INSERT INTO public.recipes VALUES (888, 155, 155, 1);
INSERT INTO public.recipes VALUES (889, 278, 237, 1);
INSERT INTO public.recipes VALUES (890, 282, 237, 1);
INSERT INTO public.recipes VALUES (891, 274, 237, 1);
INSERT INTO public.recipes VALUES (892, 216, 241, 1);
INSERT INTO public.recipes VALUES (893, 78, 241, 1);
INSERT INTO public.recipes VALUES (894, 272, 241, 1);
INSERT INTO public.recipes VALUES (895, 417, 417, 1);
INSERT INTO public.recipes VALUES (896, 402, 402, 1);
INSERT INTO public.recipes VALUES (897, 388, 10050, 40);
INSERT INTO public.recipes VALUES (898, 334, 10050, 2);
INSERT INTO public.recipes VALUES (899, 830, 830, 1);
INSERT INTO public.recipes VALUES (900, 815, 815, 1);
INSERT INTO public.recipes VALUES (901, 10067, 251, 2);
INSERT INTO public.recipes VALUES (902, 771, 251, 5);
INSERT INTO public.recipes VALUES (903, 388, 251, 5);
INSERT INTO public.recipes VALUES (904, 709, 10100, 10);
INSERT INTO public.recipes VALUES (905, 771, 10100, 25);
INSERT INTO public.recipes VALUES (906, 428, 10100, 1);
INSERT INTO public.recipes VALUES (907, 388, 10101, 25);
INSERT INTO public.recipes VALUES (908, 787, 30009, 1);
INSERT INTO public.recipes VALUES (909, 394, 30009, 1);
INSERT INTO public.recipes VALUES (910, 284, 30009, 10);
INSERT INTO public.recipes VALUES (911, 768, 30009, 1);
INSERT INTO public.recipes VALUES (912, 881, 839, 50);
INSERT INTO public.recipes VALUES (913, 2, 839, 50);
INSERT INTO public.recipes VALUES (914, 336, 839, 1);
INSERT INTO public.recipes VALUES (915, 699, 699, 1);
INSERT INTO public.recipes VALUES (916, 701, 701, 1);
INSERT INTO public.recipes VALUES (917, 88, 218, 1);
INSERT INTO public.recipes VALUES (918, 720, 218, 1);
INSERT INTO public.recipes VALUES (919, 404, 218, 1);
INSERT INTO public.recipes VALUES (920, 256, 256, 1);
INSERT INTO public.recipes VALUES (921, 388, 93, 1);
INSERT INTO public.recipes VALUES (922, 92, 93, 2);
INSERT INTO public.recipes VALUES (923, 270, 229, 1);
INSERT INTO public.recipes VALUES (924, 334, 694, 1);
INSERT INTO public.recipes VALUES (925, 92, 694, 10);
INSERT INTO public.recipes VALUES (926, 336, 693, 2);
INSERT INTO public.recipes VALUES (927, 66, 20039, 1);
INSERT INTO public.recipes VALUES (928, 62, 20039, 1);
INSERT INTO public.recipes VALUES (929, 72, 20039, 1);
INSERT INTO public.recipes VALUES (930, 60, 20039, 1);
INSERT INTO public.recipes VALUES (931, 64, 20039, 1);
INSERT INTO public.recipes VALUES (932, 68, 20039, 1);
INSERT INTO public.recipes VALUES (933, 709, 10102, 5);
INSERT INTO public.recipes VALUES (934, 10074, 10102, 1);
INSERT INTO public.recipes VALUES (935, 10069, 10102, 10);
INSERT INTO public.recipes VALUES (936, 771, 805, 5);
INSERT INTO public.recipes VALUES (937, 2, 805, 5);
INSERT INTO public.recipes VALUES (938, 395, 253, 3);
INSERT INTO public.recipes VALUES (939, 88, 907, 1);
INSERT INTO public.recipes VALUES (940, 832, 907, 1);
INSERT INTO public.recipes VALUES (941, 260, 907, 1);
INSERT INTO public.recipes VALUES (942, 138, 219, 1);
INSERT INTO public.recipes VALUES (943, 153, 219, 1);
INSERT INTO public.recipes VALUES (944, 430, 430, 1);
INSERT INTO public.recipes VALUES (945, 430, 432, 1);
INSERT INTO public.recipes VALUES (946, 388, 10052, 15);
INSERT INTO public.recipes VALUES (947, 427, 10052, 1);
INSERT INTO public.recipes VALUES (948, 429, 10052, 1);
INSERT INTO public.recipes VALUES (949, 453, 10052, 1);
INSERT INTO public.recipes VALUES (950, 455, 10052, 1);
INSERT INTO public.recipes VALUES (951, 591, 591, 1);
INSERT INTO public.recipes VALUES (952, 130, 130, 1);
INSERT INTO public.recipes VALUES (953, 271, 271, 1);
INSERT INTO public.recipes VALUES (954, 256, 200, 1);
INSERT INTO public.recipes VALUES (955, 284, 200, 1);
INSERT INTO public.recipes VALUES (956, 305, 305, 1);
INSERT INTO public.recipes VALUES (957, 769, 769, 1);
INSERT INTO public.recipes VALUES (958, 305, 308, 1);
INSERT INTO public.recipes VALUES (959, 795, 795, 1);
INSERT INTO public.recipes VALUES (960, 140, 140, 1);
INSERT INTO public.recipes VALUES (961, 715, 30016, 1);
INSERT INTO public.recipes VALUES (962, 709, 690, 1);
INSERT INTO public.recipes VALUES (963, 393, 690, 2);
INSERT INTO public.recipes VALUES (964, 771, 690, 10);
INSERT INTO public.recipes VALUES (965, 709, 261, 2);
INSERT INTO public.recipes VALUES (966, 88, 261, 1);
INSERT INTO public.recipes VALUES (967, 386, 261, 4);
INSERT INTO public.recipes VALUES (968, 709, 688, 1);
INSERT INTO public.recipes VALUES (969, 340, 688, 1);
INSERT INTO public.recipes VALUES (970, 771, 688, 20);
INSERT INTO public.recipes VALUES (971, 709, 886, 5);
INSERT INTO public.recipes VALUES (972, 852, 886, 1);
INSERT INTO public.recipes VALUES (973, 829, 886, 1);
INSERT INTO public.recipes VALUES (974, 709, 689, 1);
INSERT INTO public.recipes VALUES (975, 335, 689, 1);
INSERT INTO public.recipes VALUES (976, 2, 689, 25);
INSERT INTO public.recipes VALUES (977, 335, 521, 10);
INSERT INTO public.recipes VALUES (978, 382, 521, 25);
INSERT INTO public.recipes VALUES (979, 84, 521, 10);
INSERT INTO public.recipes VALUES (980, 337, 50002, 5);
INSERT INTO public.recipes VALUES (981, 372, 50002, 10);
INSERT INTO public.recipes VALUES (982, 393, 50002, 10);
INSERT INTO public.recipes VALUES (983, 388, 331, 1);
INSERT INTO public.recipes VALUES (984, 262, 262, 1);
INSERT INTO public.recipes VALUES (985, 2, 10053, 25);
INSERT INTO public.recipes VALUES (986, 382, 10053, 5);
INSERT INTO public.recipes VALUES (987, 771, 774, 10);
INSERT INTO public.recipes VALUES (988, 766, 774, 5);
INSERT INTO public.recipes VALUES (989, 684, 774, 5);
INSERT INTO public.recipes VALUES (990, 16, 16, 1);
INSERT INTO public.recipes VALUES (991, 422, 20030, 5);
INSERT INTO public.recipes VALUES (992, 259, 20030, 5);
INSERT INTO public.recipes VALUES (993, 157, 20030, 5);
INSERT INTO public.recipes VALUES (994, 304, 20030, 5);
INSERT INTO public.recipes VALUES (995, 406, 406, 1);
INSERT INTO public.recipes VALUES (996, 787, 60002, 5);
INSERT INTO public.recipes VALUES (997, 709, 60001, 200);
INSERT INTO public.recipes VALUES (998, 337, 60003, 5);
INSERT INTO public.recipes VALUES (999, 10004, 348, 1);
INSERT INTO public.recipes VALUES (1000, 412, 20004, 1);
INSERT INTO public.recipes VALUES (1001, 414, 20004, 1);
INSERT INTO public.recipes VALUES (1002, 416, 20004, 1);
INSERT INTO public.recipes VALUES (1003, 418, 20004, 1);
INSERT INTO public.recipes VALUES (1004, 412, 20028, 1);
INSERT INTO public.recipes VALUES (1005, 414, 20028, 1);
INSERT INTO public.recipes VALUES (1006, 416, 20028, 1);
INSERT INTO public.recipes VALUES (1007, 418, 20028, 1);
INSERT INTO public.recipes VALUES (1008, 283, 20028, 1);
INSERT INTO public.recipes VALUES (1009, 412, 412, 1);
INSERT INTO public.recipes VALUES (1010, 418, 498, 1);
INSERT INTO public.recipes VALUES (1011, 414, 498, 1);
INSERT INTO public.recipes VALUES (1012, 416, 498, 1);
INSERT INTO public.recipes VALUES (1013, 412, 498, 1);
INSERT INTO public.recipes VALUES (1014, 388, 388, 1);
INSERT INTO public.recipes VALUES (1015, 388, 322, 2);
INSERT INTO public.recipes VALUES (1016, 388, 328, 1);
INSERT INTO public.recipes VALUES (1017, 388, 10035, 50);
INSERT INTO public.recipes VALUES (1018, 787, 10035, 1);
INSERT INTO public.recipes VALUES (1019, 388, 405, 1);
INSERT INTO public.recipes VALUES (1020, 388, 10058, 25);
INSERT INTO public.recipes VALUES (1021, 388, 10036, 10);
INSERT INTO public.recipes VALUES (1022, 382, 10036, 1);
INSERT INTO public.recipes VALUES (1023, 771, 10036, 5);
INSERT INTO public.recipes VALUES (1024, 734, 734, 1);
INSERT INTO public.recipes VALUES (1025, 440, 440, 1);
INSERT INTO public.recipes VALUES (1026, 709, 10051, 25);
INSERT INTO public.recipes VALUES (1027, 336, 10051, 1);
INSERT INTO public.recipes VALUES (1028, 335, 10051, 1);
INSERT INTO public.recipes VALUES (1029, 771, 10051, 50);
INSERT INTO public.recipes VALUES (1030, 280, 280, 1);


--
-- Name: gamelist_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gamelist_pk_seq', 1, false);


--
-- Name: items_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_pk_seq', 829, true);


--
-- Name: recipes_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_pk_seq', 1030, true);


--
-- Name: gamelist gamelist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gamelist
    ADD CONSTRAINT gamelist_pkey PRIMARY KEY (pk);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (pk);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (pk);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
GRANT ALL ON SCHEMA public TO stardewuser;


--
-- Name: TABLE gamelist; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.gamelist TO stardewuser;


--
-- Name: SEQUENCE gamelist_pk_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.gamelist_pk_seq TO stardewuser;


--
-- Name: TABLE items; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,TRUNCATE ON TABLE public.items TO stardewuser;


--
-- Name: TABLE recipes; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,TRUNCATE ON TABLE public.recipes TO stardewuser;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO stardewuser;


--
-- PostgreSQL database dump complete
--

