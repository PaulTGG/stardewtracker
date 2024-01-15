--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

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

INSERT INTO public.items VALUES (2, 'Acorn', 309, false, false, false, false, false, false, false, false, false, true, true, true, false);
INSERT INTO public.items VALUES (3, 'Advanced TV Remote', 867, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (4, 'Aerinite', 541, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (5, 'Aged Roe', 447, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (6, 'Alamite', 538, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (7, 'Albacore', 705, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (8, 'Algae Soup', 456, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (9, 'Amaranth', 300, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (10, 'Amaranth Seeds', 299, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (11, 'Amethyst', 66, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (12, 'Amethyst Ring', 529, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (13, 'Amphibian Fossil', 587, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (14, 'Anchor', 117, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (15, 'Anchovy', 129, true, false, false, false, false, false, false, true, false, true, false, true, false);
INSERT INTO public.items VALUES (16, 'Ancient Doll', 103, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (17, 'Ancient Drum', 123, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (18, 'Ancient Fruit', 454, true, false, false, false, false, true, true, false, false, true, true, true, false);
INSERT INTO public.items VALUES (19, 'Ancient Seed', 114, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (20, 'Ancient Seeds', 499, true, false, false, true, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (21, 'Ancient Sword', 109, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (22, 'Angler', 160, true, false, false, false, false, false, false, true, false, false, false, true, false);
INSERT INTO public.items VALUES (23, 'Apple', 613, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (24, 'Apple Sapling', 633, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (25, 'Apricot', 634, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (26, 'Apricot Sapling', 629, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (27, 'Aquamarine', 62, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (28, 'Aquamarine Ring', 531, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (29, 'Arctic Shard', 868, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (30, 'Arrowhead', 101, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (31, 'Artichoke', 274, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (32, 'Artichoke Dip', 605, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (33, 'Artichoke Seeds', 489, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (34, 'Artifact Spot', 590, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (35, 'Artifact Trove', 275, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (36, 'Autumn''s Bounty', 235, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (37, 'Bait', 685, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (38, 'Baked Fish', 198, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (39, 'Banana', 91, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (40, 'Banana Pudding', 904, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (41, 'Banana Sapling', 69, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (42, 'Barbed Hook', 691, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (43, 'Baryte', 540, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (44, 'Basalt', 570, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (45, 'Basic Fertilizer', 368, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (46, 'Basic Retaining Soil', 370, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (47, 'Bat Wing', 767, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (48, 'Battery Pack', 787, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (49, 'Bean Hotpot', 207, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (50, 'Bean Starter', 473, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (51, 'Beer', 346, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (52, 'Beet', 284, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (53, 'Beet Seeds', 494, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (54, 'Berry Basket', 790, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (55, 'Bixite', 539, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (56, 'Blackberry', 410, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (57, 'Blackberry Cobbler', 611, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (58, 'Blobfish', 800, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (59, 'Blue Discus', 838, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (60, 'Blue Jazz', 597, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (61, 'Blue Slime Egg', 413, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (62, 'Blueberry', 258, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (63, 'Blueberry Seeds', 481, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (64, 'Blueberry Tart', 234, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (65, 'Bok Choy', 278, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (66, 'Bok Choy Seeds', 491, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (67, 'Bomb', 287, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (68, 'Bone Flute', 119, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (69, 'Bone Fragment', 881, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (70, 'Bouquet', 458, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (71, 'Bread', 216, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (72, 'Bream', 132, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (73, 'Brick Floor', 293, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (74, 'Broken CD', 171, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (75, 'Broken Glasses', 170, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (76, 'Bruschetta', 618, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (77, 'Bug Meat', 684, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (78, 'Bug Steak', 874, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (79, 'Bullhead', 700, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (80, 'Burglar''s Ring', 526, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (81, 'Cactus Fruit', 90, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (82, 'Cactus Seeds', 802, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (83, 'Calcite', 542, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (84, 'Camping Stove', 927, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (85, 'Carp', 142, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (86, 'Carp Surprise', 209, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (87, 'Catfish', 143, true, false, false, false, false, false, false, true, false, true, false, false, false);
INSERT INTO public.items VALUES (88, 'Cauliflower', 190, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (89, 'Cauliflower Seeds', 474, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (90, 'Cave Carrot', 78, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (91, 'Caviar', 445, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (92, 'Celestine', 566, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (93, 'Chanterelle', 281, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (94, 'Cheese', 424, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (95, 'Cheese Cauliflower', 197, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (96, 'Cherry', 638, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (97, 'Cherry Bomb', 286, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (98, 'Cherry Sapling', 628, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (99, 'Chewing Stick', 105, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (100, 'Chicken Statue', 113, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (101, 'Chipped Amphora', 100, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (102, 'Chocolate Cake', 220, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (103, 'Chowder', 727, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (104, 'Chub', 702, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (105, 'Cinder Shard', 848, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (106, 'Clam', 372, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (107, 'Clay', 330, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (108, 'Cloth', 428, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (109, 'Coal', 382, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (110, 'Cobblestone Path', 411, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (111, 'Cockle', 718, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (112, 'Coconut', 88, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (113, 'Coffee', 395, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (114, 'Coffee Bean', 433, true, false, false, false, false, true, true, false, false, true, true, false, false);
INSERT INTO public.items VALUES (115, 'Coleslaw', 648, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (116, 'Combined Ring', 880, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (117, 'Common Mushroom', 404, true, false, false, false, false, true, false, false, true, true, false, true, false);
INSERT INTO public.items VALUES (118, 'Complete Breakfast', 201, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (119, 'Cookie', 223, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (120, 'Cookout Kit', 926, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (121, 'Copper Bar', 334, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (122, 'Copper Ore', 378, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (123, 'Coral', 393, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (124, 'Cork Bobber', 695, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (125, 'Corn', 270, true, false, false, false, false, true, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (126, 'Corn Seeds', 487, false, false, false, false, false, false, false, false, false, false, true, true, false);
INSERT INTO public.items VALUES (127, 'Crab', 717, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (128, 'Crab Cakes', 732, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (129, 'Crab Pot', 710, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (130, 'Crabshell Ring', 810, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (131, 'Cranberries', 282, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (132, 'Cranberry Candy', 612, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (133, 'Cranberry Sauce', 238, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (134, 'Cranberry Seeds', 493, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (135, 'Crayfish', 716, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (136, 'Crimsonfish', 159, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (137, 'Crispy Bass', 214, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (138, 'Crocus', 418, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (139, 'Crystal Floor', 333, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (140, 'Crystal Fruit', 414, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (141, 'Crystal Path', 409, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (142, 'Curiosity Lure', 856, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (143, 'Daffodil', 18, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (144, 'Dandelion', 22, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (145, 'Decorative Pot', 461, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (146, 'Deluxe Fertilizer', 919, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (147, 'Deluxe Retaining Soil', 920, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (148, 'Deluxe Speed-Gro', 466, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (149, 'Diamond', 72, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (150, 'Dinosaur Egg', 107, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (151, 'Dinosaur Mayonnaise', 807, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (152, 'Dish o'' The Sea', 242, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (153, 'Dolomite', 543, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (154, 'Dorado', 704, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (155, 'Dragon Tooth', 852, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (156, 'Dressed Spinner', 687, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (157, 'Dried Starfish', 116, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (158, 'Driftwood', 169, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (159, 'Drum Block', 463, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (160, 'Duck Egg', 442, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (161, 'Duck Feather', 444, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (162, 'Duck Mayonnaise', 307, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (163, 'Dwarf Gadget', 122, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (164, 'Dwarf Scroll I', 96, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (165, 'Dwarf Scroll II', 97, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (166, 'Dwarf Scroll III', 98, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (167, 'Dwarf Scroll IV', 99, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (168, 'Dwarvish Helm', 121, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (169, 'Dwarvish Translation Guide', 326, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (170, 'Earth Crystal', 86, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (171, 'Ectoplasm', 875, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (172, 'Eel', 148, true, false, false, false, false, false, false, true, false, true, false, true, false);
INSERT INTO public.items VALUES (173, 'Egg (Brown)', 176, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (174, 'Egg (White)', 180, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (175, 'Eggplant', 272, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (176, 'Eggplant Parmesan', 231, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (177, 'Eggplant Seeds', 488, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (178, 'Elvish Jewelry', 104, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (179, 'Emerald', 60, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (180, 'Emerald Ring', 533, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (181, 'Energy Tonic', 349, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (182, 'Enricher', 913, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (183, 'Escargot', 729, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (184, 'Esperite', 544, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (185, 'Explosive Ammo', 441, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (186, 'Fairy Dust', 872, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (187, 'Fairy Rose', 595, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (188, 'Fairy Seeds', 425, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (189, 'Fairy Stone', 577, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (190, 'Fall Seeds', 497, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (191, 'Farmer''s Lunch', 240, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (192, 'Fiber', 771, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (193, 'Fiber Seeds', 885, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (194, 'Fiddlehead Fern', 259, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (195, 'Fiddlehead Risotto', 649, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (196, 'Field Snack', 403, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (197, 'Fire Opal', 565, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (198, 'Fire Quartz', 82, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (199, 'Fireworks (Green)', 895, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (200, 'Fireworks (Purple)', 894, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (201, 'Fireworks (Red)', 893, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (202, 'Fish Stew', 728, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (203, 'Fish Taco', 213, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (204, 'Flounder', 267, true, false, false, false, false, false, false, true, false, true, true, false, false);
INSERT INTO public.items VALUES (205, 'Fluorapatite', 545, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (206, 'Flute Block', 464, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (207, 'Fossilized Leg', 823, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (208, 'Fossilized Ribs', 824, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (209, 'Fossilized Skull', 820, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (210, 'Fossilized Spine', 821, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (211, 'Fossilized Tail', 822, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (212, 'Fried Calamari', 202, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (213, 'Fried Eel', 225, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (214, 'Fried Egg', 194, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (215, 'Fried Mushroom', 205, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (216, 'Frozen Geode', 536, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (217, 'Frozen Tear', 84, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (218, 'Fruit Salad', 610, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (219, 'Galaxy Soul', 896, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (220, 'Garlic', 248, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (221, 'Garlic Seeds', 476, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (222, 'Gate', 325, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (223, 'Geminite', 546, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (224, 'Geode', 535, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (225, 'Ghost Crystal', 561, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (226, 'Ghostfish', 156, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (227, 'Ginger', 829, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (228, 'Ginger Ale', 903, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (229, 'Glacierfish', 775, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (230, 'Glacierfish Jr.', 902, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (231, 'Glass Shards', 118, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (232, 'Glazed Yams', 208, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (233, 'Glow Ring', 517, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (234, 'Glowstone Ring', 888, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (235, 'Goat Cheese', 426, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (236, 'Goat Milk', 436, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (237, 'Gold Bar', 336, true, false, false, true, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (238, 'Gold Ore', 384, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (239, 'Golden Coconut', 791, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (240, 'Golden Egg', 928, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (241, 'Golden Mask', 124, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (242, 'Golden Pumpkin', 373, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (243, 'Golden Relic', 125, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (244, 'Golden Walnut', 73, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (245, 'Gourmet Tomato Salt', 865, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (246, 'Granite', 569, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (247, 'Grape', 398, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (248, 'Grape Starter', 301, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (249, 'Grass Starter', 297, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (250, 'Gravel Path', 407, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (251, 'Green Algae', 153, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (252, 'Green Bean', 188, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (253, 'Green Slime Egg', 680, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (254, 'Green Tea', 614, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (255, 'Halibut', 708, true, false, false, false, false, false, false, true, false, true, true, false, true);
INSERT INTO public.items VALUES (256, 'Hardwood', 709, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (257, 'Hardwood Fence', 298, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (258, 'Hashbrowns', 210, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (259, 'Hay', 178, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (260, 'Hazelnut', 408, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (261, 'Hedge', 929, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (262, 'Helvite', 547, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (263, 'Hematite', 573, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (264, 'Herring', 147, true, false, false, false, false, false, false, true, false, true, false, false, true);
INSERT INTO public.items VALUES (265, 'Holly', 283, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (266, 'Honey', 340, true, false, false, false, false, true, false, false, false, true, true, true, false);
INSERT INTO public.items VALUES (267, 'Hops', 304, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (268, 'Hops Starter', 302, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (269, 'Horse Flute', 911, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (270, 'Hot Java Ring', 860, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (271, 'Hot Pepper', 260, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (272, 'Hyper Speed-Gro', 918, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (273, 'Ice Cream', 233, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (274, 'Ice Pip', 161, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (275, 'Immunity Band', 887, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (276, 'Iridium Band', 527, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (277, 'Iridium Bar', 337, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (278, 'Iridium Milk', 803, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (279, 'Iridium Ore', 386, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (280, 'Iridium Sprinkler', 645, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (281, 'Iron Bar', 335, true, false, false, true, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (282, 'Iron Fence', 324, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (283, 'Iron Ore', 380, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (284, 'Jack-O-Lantern', 746, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (285, 'Jade', 70, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (286, 'Jade Ring', 532, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (287, 'Jagoite', 549, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (288, 'Jamborite', 548, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (289, 'Jasper', 563, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (290, 'Jazz Seeds', 429, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (291, 'Jelly', 344, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (292, 'Joja Cola', 167, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (293, 'Journal Scrap', 842, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (294, 'Juice', 350, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (295, 'Jukebox Ring', 528, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (296, 'Kale', 250, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (297, 'Kale Seeds', 477, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (298, 'Kyanite', 550, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (299, 'Large Egg (Brown)', 174, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (300, 'Large Egg (White)', 182, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (301, 'Large Goat Milk', 438, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (302, 'Large Milk', 186, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (303, 'Largemouth Bass', 136, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (304, 'Lava Eel', 162, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (305, 'Lead Bobber', 692, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (306, 'Leek', 20, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (307, 'Legend Fish', 163, true, false, false, false, false, false, false, true, false, true, false, false, false);
INSERT INTO public.items VALUES (308, 'Legend II', 900, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (309, 'Lemon Stone', 554, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (310, 'Life Elixir', 773, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (311, 'Limestone', 571, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (312, 'Lingcod', 707, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (313, 'Lionfish', 837, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (314, 'Lobster', 715, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (315, 'Lobster Bisque', 730, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (316, 'Lost Axe', 788, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (317, 'Lost Book', 102, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (318, 'Lucky Lunch', 204, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (319, 'Lucky Purple Shorts', 789, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (320, 'Lucky Ring', 859, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (321, 'Lumber', 30, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (322, 'Lunarite', 551, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (323, 'Magic Bait', 908, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (324, 'Magic Rock Candy', 279, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (325, 'Magma Cap', 851, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (326, 'Magma Geode', 537, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (327, 'Magnet', 703, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (328, 'Magnet Ring', 519, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (329, 'Mahogany Seed', 292, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (330, 'Maki Roll', 228, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (331, 'Malachite', 552, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (332, 'Mango', 834, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (333, 'Mango Sapling', 835, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (334, 'Mango Sticky Rice', 905, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (335, 'Maple Bar', 731, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (336, 'Maple Seed', 310, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (337, 'Maple Syrup', 724, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (338, 'Marble', 567, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (339, 'Mayonnaise', 306, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (340, 'Mead', 459, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (341, 'Mega Bomb', 288, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (342, 'Melon', 254, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (343, 'Melon Seeds', 479, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (344, 'Mermaid''s Pendant', 460, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (345, 'Midnight Carp', 269, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (346, 'Midnight Squid', 798, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (347, 'Milk', 184, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (348, 'Miner''s Treat', 243, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (349, 'Mixed Seeds', 770, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (350, 'Monster Musk', 879, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (351, 'Morel', 257, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (352, 'Movie Ticket', 809, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (353, 'Ms. Angler', 899, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (354, 'Mudstone', 574, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (355, 'Mummified Bat', 827, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (356, 'Mummified Frog', 828, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (357, 'Muscle Remedy', 351, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (358, 'Mushroom Tree Seed', 891, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (359, 'Mussel', 719, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (360, 'Mutant Carp', 682, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (361, 'Napalm Ring', 811, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (362, 'Nautilus Fossil', 586, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (363, 'Nautilus Shell', 392, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (364, 'Nekoite', 555, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (365, 'Neptunite', 553, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (366, 'Oak Resin', 725, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (367, 'Obsidian', 575, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (368, 'Ocean Stone', 560, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (369, 'Octopus', 149, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (370, 'Oil', 247, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (371, 'Oil of Garlic', 772, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (372, 'Omelet', 195, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (373, 'Omni Geode', 749, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (374, 'Opal', 564, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (375, 'Orange', 635, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (376, 'Orange Sapling', 630, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (377, 'Ornamental Fan', 106, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (378, 'Ornate Necklace', 191, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (379, 'Orpiment', 556, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (380, 'Ostrich Egg', 289, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (381, 'Oyster', 723, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (382, 'Pale Ale', 303, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (383, 'Pale Broth', 457, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (384, 'Palm Fossil', 588, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (385, 'Pancakes', 211, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (386, 'Parsnip', 24, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (387, 'Parsnip Seeds', 472, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (388, 'Parsnip Soup', 199, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (389, 'Peach', 636, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (390, 'Peach Sapling', 631, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (391, 'Pearl', 797, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (392, 'Pepper Poppers', 215, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (393, 'Pepper Seeds', 482, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (394, 'Perch', 141, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (395, 'Periwinkle', 722, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (396, 'Petrified Slime', 557, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (397, 'Phoenix Ring', 863, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (398, 'Pickles', 342, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (399, 'Pierre''s Missing Stocklist', 897, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (400, 'Pike', 144, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (401, 'Pina Colada', 873, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (402, 'Pine Cone', 311, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (403, 'Pine Tar', 726, true, false, false, false, false, true, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (404, 'Pineapple', 832, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (405, 'Pineapple Seeds', 833, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (406, 'Pink Cake', 221, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (407, 'Pirate''s Locket', 870, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (408, 'Pizza', 206, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (409, 'Plum Pudding', 604, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (410, 'Poi', 906, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (411, 'Pomegranate', 637, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (412, 'Pomegranate Sapling', 632, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (413, 'Poppy', 376, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (414, 'Poppy Seeds', 453, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (415, 'Poppyseed Muffin', 651, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (416, 'Potato', 192, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (417, 'Potato Seeds', 475, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (418, 'Prehistoric Handaxe', 120, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (419, 'Prehistoric Rib', 583, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (420, 'Prehistoric Scapula', 579, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (421, 'Prehistoric Skull', 581, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (422, 'Prehistoric Tibia', 580, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (423, 'Prehistoric Tool', 115, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (424, 'Prehistoric Vertebra', 584, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (425, 'Pressure Nozzle', 915, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (426, 'Prismatic Jelly', 876, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (427, 'Prismatic Shard', 74, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (428, 'Protection Ring', 861, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (429, 'Pufferfish', 128, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (430, 'Pumpkin', 276, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (431, 'Pumpkin Pie', 608, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (432, 'Pumpkin Seeds', 490, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (433, 'Pumpkin Soup', 236, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (434, 'Purple Mushroom', 422, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (435, 'Purple Slime Egg', 439, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (436, 'Pyrite', 559, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (437, 'Qi Bean', 890, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (438, 'Qi Fruit', 889, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (439, 'Qi Gem', 858, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (440, 'Qi Seasoning', 917, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (441, 'Quality Bobber', 877, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (442, 'Quality Fertilizer', 369, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (443, 'Quality Retaining Soil', 371, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (444, 'Quality Sprinkler', 621, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (445, 'Quartz', 80, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (446, 'Rabbit''s Foot', 446, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (447, 'Radioactive Bar', 910, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (448, 'Radioactive Carp', 901, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (449, 'Radioactive Ore', 909, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (450, 'Radish', 264, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (451, 'Radish Salad', 609, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (452, 'Radish Seeds', 484, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (453, 'Rain Totem', 681, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (454, 'Rainbow Shell', 394, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (455, 'Rainbow Trout', 138, true, false, false, false, false, false, false, true, false, false, true, false, false);
INSERT INTO public.items VALUES (456, 'Rare Disc', 108, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (457, 'Rare Seed', 347, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (458, 'Red Cabbage', 266, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (459, 'Red Cabbage Seeds', 485, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (460, 'Red Mullet', 146, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (461, 'Red Mushroom', 420, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (462, 'Red Plate', 230, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (463, 'Red Slime Egg', 437, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (464, 'Red Snapper', 150, true, false, false, false, false, false, false, true, false, false, true, true, true);
INSERT INTO public.items VALUES (465, 'Refined Quartz', 338, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (466, 'Rhubarb', 252, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (467, 'Rhubarb Pie', 222, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (468, 'Rhubarb Seeds', 478, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (469, 'Rice', 423, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (470, 'Rice Pudding', 232, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (471, 'Rice Shoot', 273, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (472, 'Ring of Yoba', 524, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (473, 'Roasted Hazelnuts', 607, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (474, 'Roe', 812, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (475, 'Roots Platter', 244, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (476, 'Rotten Plant', 747, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (477, 'Ruby', 64, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (478, 'Ruby Ring', 534, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (479, 'Rustic Plank Floor', 840, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (480, 'Rusty Cog', 112, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (481, 'Rusty Spoon', 110, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (482, 'Rusty Spur', 111, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (483, 'Salad', 196, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (484, 'Salmon', 139, true, false, false, false, false, false, false, true, false, false, false, true, false);
INSERT INTO public.items VALUES (485, 'Salmon Dinner', 212, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (486, 'Salmonberry', 296, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (487, 'Sandfish', 164, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (488, 'Sandstone', 568, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (489, 'Sap', 92, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (490, 'Sardine', 131, true, false, false, false, false, false, false, true, false, true, false, true, true);
INSERT INTO public.items VALUES (491, 'Sashimi', 227, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (492, 'Savage Ring', 523, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (493, 'Scorpion Carp', 165, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (494, 'Sea Cucumber', 154, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (495, 'Sea Urchin', 397, true, false, false, false, false, true, false, false, true, true, true, true, true);
INSERT INTO public.items VALUES (496, 'Seafoam Pudding', 265, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (497, 'Seaweed', 152, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (498, 'Secret Note', 79, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (499, 'Shad', 706, true, false, false, false, false, false, false, true, false, true, true, true, false);
INSERT INTO public.items VALUES (500, 'Shrimp', 720, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (501, 'Shrimp Cocktail', 733, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (502, 'Skeletal Hand', 582, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (503, 'Skeletal Tail', 585, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (504, 'Slate', 576, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (505, 'Slime', 766, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (506, 'Slime Charmer Ring', 520, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (507, 'Slime Crate', 925, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (508, 'Slimejack', 796, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (509, 'Small Glow Ring', 516, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (510, 'Small Magnet Ring', 518, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (511, 'Smallmouth Bass', 137, true, false, false, false, false, false, false, true, false, true, false, true, false);
INSERT INTO public.items VALUES (512, 'Snail', 721, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (513, 'Snake Skull', 825, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (514, 'Snake Vertebrae', 826, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (515, 'Snow Yam', 416, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (516, 'Soapstone', 572, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (517, 'Soggy Newspaper', 172, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (518, 'Solar Essence', 768, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (519, 'Son of Crimsonfish', 898, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (520, 'Soul Sapper Ring', 862, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (521, 'Spaghetti', 224, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (522, 'Spangle Seeds', 455, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (523, 'Speed-Gro', 465, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (524, 'Spice Berry', 396, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (525, 'Spicy Eel', 226, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (526, 'Spinner', 686, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (527, 'Spirit Torch', 94, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (528, 'Spook Fish', 799, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (529, 'Spring Onion', 399, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (530, 'Spring Seeds', 495, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (531, 'Sprinkler', 599, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (532, 'Squid', 151, true, false, false, false, false, false, false, true, false, false, false, false, true);
INSERT INTO public.items VALUES (533, 'Squid Ink', 814, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (534, 'Squid Ink Ravioli', 921, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (535, 'Star Shards', 578, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (536, 'Stardew Valley Rose', 866, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (537, 'Stardrop', 434, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (538, 'Starfruit', 268, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (539, 'Starfruit Seeds', 486, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (540, 'Stepping Stone Path', 415, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (541, 'Stingray', 836, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (542, 'Stir Fry', 606, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (543, 'Stone', 2, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (544, 'Stone Base', 449, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (545, 'Stone Fence', 323, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (546, 'Stone Floor', 329, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (547, 'Stone Walkway Floor', 841, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (548, 'Stonefish', 158, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (549, 'Strange Bun', 203, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (550, 'Strange Doll', 126, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (551, 'Straw Floor', 401, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (552, 'Strawberry', 400, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (553, 'Strawberry Seeds', 745, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (554, 'Stuffing', 239, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (555, 'Sturdy Ring', 525, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (556, 'Sturgeon', 698, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (557, 'Sugar', 245, false, false, false, false, false, false, false, false, false, false, true, true, false);
INSERT INTO public.items VALUES (558, 'Summer Seeds', 496, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (559, 'Summer Spangle', 593, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (560, 'Sunfish', 145, true, false, false, false, false, false, false, true, false, true, true, false, false);
INSERT INTO public.items VALUES (561, 'Sunflower', 421, true, false, false, false, false, true, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (562, 'Sunflower Seeds', 431, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (563, 'Super Cucumber', 155, true, false, false, false, false, false, false, true, false, false, true, true, false);
INSERT INTO public.items VALUES (564, 'Super Meal', 237, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (565, 'SupplyCrate', 922, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (566, 'Survival Burger', 241, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (567, 'Sweet Gem Berry', 417, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (568, 'Sweet Pea', 402, true, false, false, false, false, true, false, false, true, false, true, false, false);
INSERT INTO public.items VALUES (569, 'Taro Root', 830, true, false, false, false, false, true, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (570, 'Taro Tuber', 831, false, false, false, false, false, false, false, false, false, true, true, true, true);
INSERT INTO public.items VALUES (571, 'Tea Leaves', 815, true, false, false, false, false, true, true, false, false, true, true, true, false);
INSERT INTO public.items VALUES (572, 'Tea Sapling', 251, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (573, 'Tea Set', 341, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (574, 'Thorns Ring', 839, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (575, 'Thunder Egg', 558, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (576, 'Tiger Slime Egg', 857, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (577, 'Tiger Trout', 699, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (578, 'Tigerseye', 562, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (579, 'Tilapia', 701, true, false, false, false, false, false, false, true, false, false, true, true, false);
INSERT INTO public.items VALUES (580, 'Tom Kha Soup', 218, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (581, 'Tomato', 256, true, false, false, false, false, true, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (582, 'Tomato Seeds', 480, false, false, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (583, 'Topaz', 68, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (584, 'Topaz Ring', 530, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (585, 'Torch', 93, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (586, 'Tortilla', 229, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (587, 'Trap Bobber', 694, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (588, 'Trash', 168, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (589, 'Treasure Chest', 166, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (590, 'Treasure Hunter', 693, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (591, 'Tree Fertilizer', 805, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (592, 'Trilobite', 589, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (593, 'Trimmed Lucky Purple Shorts', 71, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (594, 'Triple Shot Espresso', 253, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (595, 'Tropical Curry', 907, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (596, 'Trout Soup', 219, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (597, 'Truffle', 430, true, false, false, false, false, true, false, false, true, true, true, true, false);
INSERT INTO public.items VALUES (598, 'Truffle Oil', 432, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (599, 'Tulip', 591, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (600, 'Tulip Bulb', 427, false, false, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (601, 'Tuna', 130, true, false, false, false, false, false, false, true, false, false, true, false, true);
INSERT INTO public.items VALUES (602, 'Twig', 294, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (603, 'Unmilled Rice', 271, true, false, false, false, false, true, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (604, 'Vampire Ring', 522, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (605, 'Vegetable Medley', 200, true, false, true, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (606, 'Vinegar', 419, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (607, 'Void Egg', 305, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (608, 'Void Essence', 769, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (609, 'Void Ghost Pendant', 808, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (610, 'Void Mayonnaise', 308, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (611, 'Void Salmon', 795, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (612, 'Walleye', 140, true, false, false, false, false, false, false, true, false, false, false, true, true);
INSERT INTO public.items VALUES (613, 'War Memento', 864, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (614, 'Warp Totem: Beach', 690, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (615, 'Warp Totem: Desert', 261, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (616, 'Warp Totem: Farm', 688, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (617, 'Warp Totem: Island', 886, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (618, 'Warp Totem: Mountains', 689, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (619, 'Warp Totem: Qi''s Arena', 892, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (620, 'Warrior Ring', 521, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (621, 'Weathered Floor', 331, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (622, 'Wedding Ring', 801, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (623, 'Weeds', 0, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (624, 'Wheat', 262, true, false, false, false, false, true, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (625, 'Wheat Flour', 246, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (626, 'Wheat Seeds', 483, false, false, false, false, false, false, false, false, false, false, true, true, false);
INSERT INTO public.items VALUES (627, 'White Algae', 157, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (628, 'Wild Bait', 774, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (629, 'Wild Horseradish', 16, true, false, false, false, false, true, false, false, true, true, false, false, false);
INSERT INTO public.items VALUES (630, 'Wild Plum', 406, true, false, false, false, false, true, false, false, true, false, false, true, false);
INSERT INTO public.items VALUES (631, 'Wilted Bouquet', 277, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (632, 'Wine', 348, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (633, 'Winter Root', 412, true, false, false, false, false, true, false, false, true, false, false, false, true);
INSERT INTO public.items VALUES (634, 'Winter Seeds', 498, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (635, 'Wood', 388, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (636, 'Wood Fence', 322, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (637, 'Wood Floor', 328, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (638, 'Wood Path', 405, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (639, 'Woodskip', 734, true, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (640, 'Wool', 440, true, false, false, false, false, true, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (641, 'Wriggling Worm', 869, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (642, 'Yam', 280, true, false, false, false, false, true, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (643, 'Yam Seeds', 492, false, false, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (644, 'Egg (Any)', 10001, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (645, 'Sturgeon Roe', 10002, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (646, 'Fish (Any)', 10003, false, false, false, false, false, false, false, true, false, true, true, true, true);
INSERT INTO public.items VALUES (647, 'Fruit (Any)', 10004, false, false, false, false, false, false, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (648, 'Vegetable (Any)', 10005, false, false, false, false, false, false, true, false, false, true, true, true, true);
INSERT INTO public.items VALUES (649, 'Parsnip (Gold Star)', 10006, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (650, 'Melon (Gold Star)', 10007, false, false, false, false, false, false, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (651, 'Corn (Gold Star)', 10008, false, false, false, false, false, false, true, false, false, false, true, true, false);
INSERT INTO public.items VALUES (652, 'Pumpkin (Gold Star)', 10009, false, false, false, false, false, false, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (653, 'Green Bean (Gold Star)', 10010, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (654, 'Potato (Gold Star)', 10011, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (655, 'Cauliflower (Gold Star)', 10012, false, false, false, false, false, false, true, false, false, true, false, false, false);
INSERT INTO public.items VALUES (656, 'Blueberry (Gold Star)', 10013, false, false, false, false, false, false, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (657, 'Hot Pepper (Gold Star)', 10014, false, false, false, false, false, false, true, false, false, false, true, false, false);
INSERT INTO public.items VALUES (658, 'Yam (Gold Star)', 10015, false, false, false, false, false, false, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (659, 'Eggplant (Gold Star)', 10016, false, false, false, false, false, false, true, false, false, false, false, true, false);
INSERT INTO public.items VALUES (660, 'Milk (Any)', 10017, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (661, 'Bee House', 10018, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (662, 'Cask', 10019, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (663, 'Cheese Press', 10020, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (664, 'Keg', 10021, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (665, 'Loom', 10022, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (666, 'Mayonnaise Machine', 10023, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (667, 'Oil Maker', 10024, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (668, 'Preserves Jar', 10025, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (669, 'Barrel Brazier', 10026, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (670, 'Campfire', 10027, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (671, 'Carved Brazier', 10028, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (672, 'Gold Brazier', 10029, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (673, 'Iron Lamp-post', 10030, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (674, 'Marble Brazier', 10031, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (675, 'Skull Brazier', 10032, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (676, 'Stone Brazier', 10033, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (677, 'Stump Brazier', 10034, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (678, 'Wood Lamp-post', 10035, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (679, 'Wooden Brazier', 10036, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (680, 'Bone Mill', 10037, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (681, 'Charcoal Kiln', 10038, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (682, 'Crystalarium', 10039, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (683, 'Furnace', 10040, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (684, 'Geode Crusher', 10041, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (685, 'Heavy Tapper', 10042, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (686, 'Lightning Rod', 10043, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (687, 'Ostrich Incubator', 10044, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (688, 'Recycling Machine', 10045, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (689, 'Seed Maker', 10046, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (690, 'Slime Egg-Press', 10047, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (691, 'Slime Incubator', 10048, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (692, 'Solar Panel', 10049, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (693, 'Tapper', 10050, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (694, 'Worm Bin', 10051, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (695, 'Tub o'' Flowers', 10052, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (696, 'Wicked Statue', 10053, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (697, 'Chest', 10054, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (698, 'Stone Chest', 10055, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (699, 'Dark Sign', 10056, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (700, 'Stone Sign', 10057, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (701, 'Wood Sign', 10058, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (702, 'Deluxe Scarecrow', 10059, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (703, 'Farm Computer', 10060, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (704, 'Garden Pot', 10061, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (705, 'Hopper', 10062, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (706, 'Mini-Jukebox', 10063, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (707, 'Mini-Obelisk', 10064, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (708, 'Scarecrow', 10065, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (709, 'Staircase', 10066, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (710, 'Wild Seeds', 10067, false, false, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (711, 'Spring Foraging Bundle', 20001, true, true, false, false, false, false, false, false, false, true, false, false, false);
INSERT INTO public.items VALUES (712, 'Summer Foraging Bundle', 20002, true, true, false, false, false, false, false, false, false, false, true, false, false);
INSERT INTO public.items VALUES (713, 'Fall Foraging Bundle', 20003, true, true, false, false, false, false, false, false, false, false, false, true, false);
INSERT INTO public.items VALUES (714, 'Winter Foraging Bundle', 20004, true, true, false, false, false, false, false, false, false, false, false, false, true);
INSERT INTO public.items VALUES (715, 'Construction Bundle', 20005, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (716, 'Exotic Foraging Bundle', 20006, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (717, 'Spring Crops Bundle', 20007, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (718, 'Summer Crops Bundle', 20008, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (719, 'Fall Crops Bundle', 20009, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (720, 'Quality Crops Bundle', 20010, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (721, 'Animal Bundle', 20011, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (722, 'Artisan Bundle', 20012, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (723, 'River Fish Bundle', 20013, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (724, 'Lake Fish Bundle', 20014, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (725, 'Ocean Fish Bundle', 20015, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (726, 'Night Fishing Bundle', 20016, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (727, 'Crab Pot Bundle', 20017, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (728, 'Specialty Fish Bundle', 20018, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (729, 'Blacksmith''s Bundle', 20019, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (730, 'Geologist''s Bundle', 20020, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (731, 'Adventurer''s Bundle', 20021, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (732, 'Chef''s Bundle', 20022, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (733, 'Dye Bundle', 20023, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (734, 'Field Research Bundle', 20024, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (735, 'Fodder Bundle', 20025, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (736, 'Enchanter''s Bundle', 20026, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (737, 'Spring Foraging Bundle (Remixed)', 20027, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (738, 'Winter Foraging Bundle (Remixed)', 20028, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (739, 'Sticky Bundle (Remixed)', 20029, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (740, 'Wild Medicine Bundle (Remixed)', 20030, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (741, 'Quality Crops Bundle (Remixed)', 20031, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (742, 'Rare Crops Bundle (Remixed)', 20032, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (743, 'Garden Bundle (Remixed)', 20033, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (744, 'Fish Farmer''s Bundle (Remixed)', 20034, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (745, 'Brewer''s Bundle (Remixed)', 20035, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (746, 'Master Fisher''s Bundle (Remixed)', 20036, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (747, 'Quality Fish Bundle (Remixed)', 20037, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (748, 'Adventurer''s Bundle (Remixed)', 20038, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (749, 'Treasure Hunter''s Bundle (Remixed)', 20039, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (750, 'Engineer''s Bundle (Remixed)', 20040, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (751, 'Dye Bundle (Remixed)', 20041, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (752, 'Home Cook''s Bundle (Remixed)', 20042, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (753, 'Children''s Bundle (Remixed)', 20043, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (754, 'Forager''s Bundle (Remixed)', 20044, true, true, false, false, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (755, 'Jodi''s Request (Cauliflower)', 30001, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (756, 'Marnie''s Request (Cave Carrot)', 30002, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (757, 'Pam Is Thirsty (Pale Ale)', 30003, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (758, 'A Dark Reagent (Void Essence)', 30004, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (759, 'Cow''s Delight (Amaranth)', 30005, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (760, 'Crop Research (Melon)', 30006, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (761, 'Knee Therapy (Hot Pepper)', 30007, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (762, 'Robin''s Request (10 Hardwood)', 30008, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (763, 'The Mysterious Qi', 30009, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (764, 'Carving Pumpkins (Pumpkin)', 30010, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (765, 'Strange Note (Maple Syrup)', 30011, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (766, 'Fresh Fruit (Apricot)', 30012, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (767, 'Aquatic Research (Pufferfish)', 30013, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (768, 'A Soldier''s Star (Starfruit)', 30014, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (769, 'Mayor''s Need (Truffle Oil)', 30015, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (770, 'Wanted: Lobster', 30016, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (771, 'Pam Needs Juice (Battery)', 30017, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (772, 'Fish Casserole (Largemouth)', 30018, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (773, 'Catch a Squid', 30019, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (774, 'Fish Stew (Albacore)', 30020, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (775, 'Pierre''s Notice (Sashimi)', 30021, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (776, 'Clint''s Attempt (Amethyst)', 30022, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (777, 'A Favor For Clint (Iron Bar)', 30023, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (778, 'Staff of Power (Iridium Bar)', 30024, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (779, 'Granny''s Gift (Leek)', 30025, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (780, 'Exotic Spirits (Coconut)', 30026, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (781, 'Catch a Lingcod', 30027, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (782, 'Goblin Problem (Void Mayo)', 30028, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (783, 'Gourmand Frog (Seeds)', 30029, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (784, 'Island Mermaid Puzzle', 30030, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (785, 'Island Gem Bird Puzzle', 30031, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (786, 'Island Banana Shrine', 30032, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (787, 'Fish Pond', 40001, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (788, 'Earth Obelisk', 50001, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (789, 'Water Obelisk', 50002, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (790, 'Desert Obelisk', 50003, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (791, 'Island Obelisk', 50004, true, false, false, true, false, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (792, 'Willy’s Boat (Hull)', 60001, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (793, 'Willy’s Boat (Anchor)', 60002, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (794, 'Willy’s Boat (Ticket Stand)', 60003, true, false, false, false, true, false, false, false, false, false, false, false, false);
INSERT INTO public.items VALUES (795, 'Master Canoli Stardrop', 70001, true, false, false, false, true, false, false, false, false, false, false, false, false);


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recipes VALUES (1, 447, 447, 1);
INSERT INTO public.recipes VALUES (2, 705, 705, 1);
INSERT INTO public.recipes VALUES (3, 153, 456, 4);
INSERT INTO public.recipes VALUES (4, 300, 300, 1);
INSERT INTO public.recipes VALUES (5, 129, 129, 1);
INSERT INTO public.recipes VALUES (6, 454, 454, 1);
INSERT INTO public.recipes VALUES (7, 160, 160, 1);
INSERT INTO public.recipes VALUES (8, 613, 613, 1);
INSERT INTO public.recipes VALUES (9, 634, 634, 1);
INSERT INTO public.recipes VALUES (10, 274, 274, 1);
INSERT INTO public.recipes VALUES (11, 274, 605, 1);
INSERT INTO public.recipes VALUES (12, 184, 605, 1);
INSERT INTO public.recipes VALUES (13, 280, 235, 1);
INSERT INTO public.recipes VALUES (14, 276, 235, 1);
INSERT INTO public.recipes VALUES (15, 684, 685, 1);
INSERT INTO public.recipes VALUES (16, 145, 198, 1);
INSERT INTO public.recipes VALUES (17, 132, 198, 1);
INSERT INTO public.recipes VALUES (18, 246, 198, 1);
INSERT INTO public.recipes VALUES (19, 91, 91, 1);
INSERT INTO public.recipes VALUES (20, 91, 904, 1);
INSERT INTO public.recipes VALUES (21, 184, 904, 1);
INSERT INTO public.recipes VALUES (22, 245, 904, 1);
INSERT INTO public.recipes VALUES (23, 334, 691, 1);
INSERT INTO public.recipes VALUES (24, 335, 691, 1);
INSERT INTO public.recipes VALUES (25, 336, 691, 1);
INSERT INTO public.recipes VALUES (26, 92, 368, 2);
INSERT INTO public.recipes VALUES (27, 2, 370, 2);
INSERT INTO public.recipes VALUES (28, 787, 787, 1);
INSERT INTO public.recipes VALUES (29, 188, 207, 2);
INSERT INTO public.recipes VALUES (30, 262, 346, 1);
INSERT INTO public.recipes VALUES (31, 284, 284, 1);
INSERT INTO public.recipes VALUES (32, 410, 410, 1);
INSERT INTO public.recipes VALUES (33, 410, 611, 2);
INSERT INTO public.recipes VALUES (34, 245, 611, 1);
INSERT INTO public.recipes VALUES (35, 246, 611, 1);
INSERT INTO public.recipes VALUES (36, 800, 800, 1);
INSERT INTO public.recipes VALUES (37, 838, 838, 1);
INSERT INTO public.recipes VALUES (38, 597, 597, 1);
INSERT INTO public.recipes VALUES (39, 258, 258, 1);
INSERT INTO public.recipes VALUES (40, 258, 234, 1);
INSERT INTO public.recipes VALUES (41, 246, 234, 1);
INSERT INTO public.recipes VALUES (42, 245, 234, 1);
INSERT INTO public.recipes VALUES (43, 10001, 234, 1);
INSERT INTO public.recipes VALUES (44, 278, 278, 1);
INSERT INTO public.recipes VALUES (45, 380, 287, 4);
INSERT INTO public.recipes VALUES (46, 382, 287, 1);
INSERT INTO public.recipes VALUES (47, 881, 881, 1);
INSERT INTO public.recipes VALUES (48, 246, 216, 1);
INSERT INTO public.recipes VALUES (49, 132, 132, 1);
INSERT INTO public.recipes VALUES (50, 330, 293, 2);
INSERT INTO public.recipes VALUES (51, 2, 293, 5);
INSERT INTO public.recipes VALUES (52, 216, 618, 1);
INSERT INTO public.recipes VALUES (53, 247, 618, 1);
INSERT INTO public.recipes VALUES (54, 256, 618, 1);
INSERT INTO public.recipes VALUES (55, 684, 874, 10);
INSERT INTO public.recipes VALUES (56, 700, 700, 1);
INSERT INTO public.recipes VALUES (57, 90, 90, 1);
INSERT INTO public.recipes VALUES (58, 142, 142, 1);
INSERT INTO public.recipes VALUES (59, 142, 209, 4);
INSERT INTO public.recipes VALUES (60, 143, 143, 1);
INSERT INTO public.recipes VALUES (61, 190, 190, 1);
INSERT INTO public.recipes VALUES (62, 78, 78, 1);
INSERT INTO public.recipes VALUES (63, 10002, 445, 1);
INSERT INTO public.recipes VALUES (64, 281, 281, 1);
INSERT INTO public.recipes VALUES (65, 184, 424, 1);
INSERT INTO public.recipes VALUES (66, 190, 197, 1);
INSERT INTO public.recipes VALUES (67, 424, 197, 1);
INSERT INTO public.recipes VALUES (68, 638, 638, 1);
INSERT INTO public.recipes VALUES (69, 378, 286, 4);
INSERT INTO public.recipes VALUES (70, 382, 286, 1);
INSERT INTO public.recipes VALUES (71, 246, 220, 1);
INSERT INTO public.recipes VALUES (72, 245, 220, 1);
INSERT INTO public.recipes VALUES (73, 10001, 220, 1);
INSERT INTO public.recipes VALUES (74, 372, 727, 1);
INSERT INTO public.recipes VALUES (75, 184, 727, 1);
INSERT INTO public.recipes VALUES (76, 702, 702, 1);
INSERT INTO public.recipes VALUES (77, 848, 848, 1);
INSERT INTO public.recipes VALUES (78, 372, 372, 1);
INSERT INTO public.recipes VALUES (79, 330, 330, 1);
INSERT INTO public.recipes VALUES (80, 440, 428, 1);
INSERT INTO public.recipes VALUES (81, 382, 382, 1);
INSERT INTO public.recipes VALUES (82, 2, 411, 1);
INSERT INTO public.recipes VALUES (83, 718, 718, 1);
INSERT INTO public.recipes VALUES (84, 88, 88, 1);
INSERT INTO public.recipes VALUES (85, 433, 433, 1);
INSERT INTO public.recipes VALUES (86, 266, 648, 1);
INSERT INTO public.recipes VALUES (87, 419, 648, 1);
INSERT INTO public.recipes VALUES (88, 306, 648, 1);
INSERT INTO public.recipes VALUES (89, 404, 404, 1);
INSERT INTO public.recipes VALUES (90, 194, 201, 1);
INSERT INTO public.recipes VALUES (91, 184, 201, 1);
INSERT INTO public.recipes VALUES (92, 210, 201, 1);
INSERT INTO public.recipes VALUES (93, 211, 201, 1);
INSERT INTO public.recipes VALUES (94, 246, 223, 1);
INSERT INTO public.recipes VALUES (95, 245, 223, 1);
INSERT INTO public.recipes VALUES (96, 10001, 223, 1);
INSERT INTO public.recipes VALUES (97, 378, 334, 5);
INSERT INTO public.recipes VALUES (98, 382, 334, 1);
INSERT INTO public.recipes VALUES (99, 378, 378, 1);
INSERT INTO public.recipes VALUES (100, 393, 393, 1);
INSERT INTO public.recipes VALUES (101, 388, 695, 10);
INSERT INTO public.recipes VALUES (102, 709, 695, 5);
INSERT INTO public.recipes VALUES (103, 766, 695, 10);
INSERT INTO public.recipes VALUES (104, 270, 270, 1);
INSERT INTO public.recipes VALUES (105, 717, 717, 1);
INSERT INTO public.recipes VALUES (106, 717, 732, 1);
INSERT INTO public.recipes VALUES (107, 246, 732, 1);
INSERT INTO public.recipes VALUES (108, 10001, 732, 1);
INSERT INTO public.recipes VALUES (109, 247, 732, 1);
INSERT INTO public.recipes VALUES (110, 388, 710, 25);
INSERT INTO public.recipes VALUES (111, 335, 710, 3);
INSERT INTO public.recipes VALUES (112, 282, 282, 1);
INSERT INTO public.recipes VALUES (113, 282, 612, 1);
INSERT INTO public.recipes VALUES (114, 613, 612, 1);
INSERT INTO public.recipes VALUES (115, 245, 612, 1);
INSERT INTO public.recipes VALUES (116, 282, 238, 1);
INSERT INTO public.recipes VALUES (117, 245, 238, 1);
INSERT INTO public.recipes VALUES (118, 716, 716, 1);
INSERT INTO public.recipes VALUES (119, 159, 159, 1);
INSERT INTO public.recipes VALUES (120, 136, 214, 1);
INSERT INTO public.recipes VALUES (121, 246, 214, 1);
INSERT INTO public.recipes VALUES (122, 247, 214, 1);
INSERT INTO public.recipes VALUES (123, 418, 418, 1);
INSERT INTO public.recipes VALUES (124, 338, 333, 1);
INSERT INTO public.recipes VALUES (125, 414, 414, 1);
INSERT INTO public.recipes VALUES (126, 338, 409, 1);
INSERT INTO public.recipes VALUES (127, 18, 18, 1);
INSERT INTO public.recipes VALUES (128, 22, 22, 1);
INSERT INTO public.recipes VALUES (129, 337, 919, 1);
INSERT INTO public.recipes VALUES (130, 92, 919, 40);
INSERT INTO public.recipes VALUES (131, 2, 920, 5);
INSERT INTO public.recipes VALUES (132, 771, 920, 3);
INSERT INTO public.recipes VALUES (133, 330, 920, 1);
INSERT INTO public.recipes VALUES (134, 725, 466, 1);
INSERT INTO public.recipes VALUES (135, 393, 466, 1);
INSERT INTO public.recipes VALUES (136, 107, 807, 1);
INSERT INTO public.recipes VALUES (137, 131, 242, 2);
INSERT INTO public.recipes VALUES (138, 210, 242, 1);
INSERT INTO public.recipes VALUES (139, 704, 704, 1);
INSERT INTO public.recipes VALUES (140, 335, 687, 2);
INSERT INTO public.recipes VALUES (141, 428, 687, 1);
INSERT INTO public.recipes VALUES (142, 2, 463, 10);
INSERT INTO public.recipes VALUES (143, 378, 463, 2);
INSERT INTO public.recipes VALUES (144, 771, 463, 20);
INSERT INTO public.recipes VALUES (145, 442, 442, 1);
INSERT INTO public.recipes VALUES (146, 444, 444, 1);
INSERT INTO public.recipes VALUES (147, 442, 307, 1);
INSERT INTO public.recipes VALUES (148, 148, 148, 1);
INSERT INTO public.recipes VALUES (149, 176, 176, 1);
INSERT INTO public.recipes VALUES (150, 180, 180, 1);
INSERT INTO public.recipes VALUES (151, 272, 272, 1);
INSERT INTO public.recipes VALUES (152, 272, 231, 1);
INSERT INTO public.recipes VALUES (153, 256, 231, 1);
INSERT INTO public.recipes VALUES (154, 721, 729, 1);
INSERT INTO public.recipes VALUES (155, 248, 729, 1);
INSERT INTO public.recipes VALUES (156, 335, 441, 1);
INSERT INTO public.recipes VALUES (157, 382, 441, 2);
INSERT INTO public.recipes VALUES (158, 72, 872, 1);
INSERT INTO public.recipes VALUES (159, 595, 872, 1);
INSERT INTO public.recipes VALUES (160, 595, 595, 1);
INSERT INTO public.recipes VALUES (161, 410, 497, 1);
INSERT INTO public.recipes VALUES (162, 404, 497, 1);
INSERT INTO public.recipes VALUES (163, 408, 497, 1);
INSERT INTO public.recipes VALUES (164, 406, 497, 1);
INSERT INTO public.recipes VALUES (165, 195, 240, 1);
INSERT INTO public.recipes VALUES (166, 24, 240, 1);
INSERT INTO public.recipes VALUES (167, 771, 771, 1);
INSERT INTO public.recipes VALUES (168, 259, 259, 1);
INSERT INTO public.recipes VALUES (169, 247, 649, 1);
INSERT INTO public.recipes VALUES (170, 259, 649, 1);
INSERT INTO public.recipes VALUES (171, 248, 649, 1);
INSERT INTO public.recipes VALUES (172, 309, 403, 1);
INSERT INTO public.recipes VALUES (173, 310, 403, 1);
INSERT INTO public.recipes VALUES (174, 311, 403, 1);
INSERT INTO public.recipes VALUES (175, 716, 728, 1);
INSERT INTO public.recipes VALUES (176, 719, 728, 1);
INSERT INTO public.recipes VALUES (177, 722, 728, 1);
INSERT INTO public.recipes VALUES (178, 256, 728, 1);
INSERT INTO public.recipes VALUES (179, 130, 213, 1);
INSERT INTO public.recipes VALUES (180, 229, 213, 1);
INSERT INTO public.recipes VALUES (181, 266, 213, 1);
INSERT INTO public.recipes VALUES (182, 306, 213, 1);
INSERT INTO public.recipes VALUES (183, 267, 267, 1);
INSERT INTO public.recipes VALUES (184, 388, 464, 10);
INSERT INTO public.recipes VALUES (185, 378, 464, 2);
INSERT INTO public.recipes VALUES (186, 771, 464, 20);
INSERT INTO public.recipes VALUES (187, 151, 202, 1);
INSERT INTO public.recipes VALUES (188, 246, 202, 1);
INSERT INTO public.recipes VALUES (189, 247, 202, 1);
INSERT INTO public.recipes VALUES (190, 148, 225, 1);
INSERT INTO public.recipes VALUES (191, 247, 225, 1);
INSERT INTO public.recipes VALUES (192, 10001, 194, 1);
INSERT INTO public.recipes VALUES (193, 404, 205, 1);
INSERT INTO public.recipes VALUES (194, 257, 205, 1);
INSERT INTO public.recipes VALUES (195, 247, 205, 1);
INSERT INTO public.recipes VALUES (196, 258, 610, 1);
INSERT INTO public.recipes VALUES (197, 254, 610, 1);
INSERT INTO public.recipes VALUES (198, 634, 610, 1);
INSERT INTO public.recipes VALUES (199, 248, 248, 1);
INSERT INTO public.recipes VALUES (200, 388, 325, 10);
INSERT INTO public.recipes VALUES (201, 156, 156, 1);
INSERT INTO public.recipes VALUES (202, 829, 829, 1);
INSERT INTO public.recipes VALUES (203, 829, 903, 3);
INSERT INTO public.recipes VALUES (204, 245, 903, 1);
INSERT INTO public.recipes VALUES (205, 775, 775, 1);
INSERT INTO public.recipes VALUES (206, 280, 208, 1);
INSERT INTO public.recipes VALUES (207, 245, 208, 1);
INSERT INTO public.recipes VALUES (208, 768, 888, 5);
INSERT INTO public.recipes VALUES (209, 335, 888, 5);
INSERT INTO public.recipes VALUES (210, 436, 426, 1);
INSERT INTO public.recipes VALUES (211, 436, 436, 1);
INSERT INTO public.recipes VALUES (212, 335, 336, 2);
INSERT INTO public.recipes VALUES (213, 384, 384, 1);
INSERT INTO public.recipes VALUES (214, 398, 398, 1);
INSERT INTO public.recipes VALUES (215, 771, 297, 10);
INSERT INTO public.recipes VALUES (216, 2, 407, 1);
INSERT INTO public.recipes VALUES (217, 188, 188, 1);
INSERT INTO public.recipes VALUES (218, 815, 614, 1);
INSERT INTO public.recipes VALUES (219, 708, 708, 1);
INSERT INTO public.recipes VALUES (220, 709, 709, 1);
INSERT INTO public.recipes VALUES (221, 709, 298, 1);
INSERT INTO public.recipes VALUES (222, 192, 210, 1);
INSERT INTO public.recipes VALUES (223, 247, 210, 1);
INSERT INTO public.recipes VALUES (224, 408, 408, 1);
INSERT INTO public.recipes VALUES (225, 147, 147, 1);
INSERT INTO public.recipes VALUES (226, 283, 283, 1);
INSERT INTO public.recipes VALUES (227, 340, 340, 1);
INSERT INTO public.recipes VALUES (228, 304, 304, 1);
INSERT INTO public.recipes VALUES (229, 260, 260, 1);
INSERT INTO public.recipes VALUES (230, 909, 918, 1);
INSERT INTO public.recipes VALUES (231, 881, 918, 3);
INSERT INTO public.recipes VALUES (232, 768, 918, 1);
INSERT INTO public.recipes VALUES (233, 184, 233, 1);
INSERT INTO public.recipes VALUES (234, 245, 233, 1);
INSERT INTO public.recipes VALUES (235, 161, 161, 1);
INSERT INTO public.recipes VALUES (236, 337, 527, 5);
INSERT INTO public.recipes VALUES (237, 768, 527, 50);
INSERT INTO public.recipes VALUES (238, 769, 527, 50);
INSERT INTO public.recipes VALUES (239, 386, 337, 5);
INSERT INTO public.recipes VALUES (240, 382, 337, 1);
INSERT INTO public.recipes VALUES (241, 386, 386, 1);
INSERT INTO public.recipes VALUES (242, 336, 645, 1);
INSERT INTO public.recipes VALUES (243, 337, 645, 1);
INSERT INTO public.recipes VALUES (244, 787, 645, 1);
INSERT INTO public.recipes VALUES (245, 334, 335, 3);
INSERT INTO public.recipes VALUES (246, 335, 324, 1);
INSERT INTO public.recipes VALUES (247, 380, 380, 1);
INSERT INTO public.recipes VALUES (248, 276, 746, 1);
INSERT INTO public.recipes VALUES (249, 93, 746, 1);
INSERT INTO public.recipes VALUES (250, 10004, 344, 1);
INSERT INTO public.recipes VALUES (251, 10005, 350, 1);
INSERT INTO public.recipes VALUES (252, 250, 250, 1);
INSERT INTO public.recipes VALUES (253, 438, 438, 1);
INSERT INTO public.recipes VALUES (254, 174, 174, 1);
INSERT INTO public.recipes VALUES (255, 182, 182, 1);
INSERT INTO public.recipes VALUES (256, 186, 186, 1);
INSERT INTO public.recipes VALUES (257, 136, 136, 1);
INSERT INTO public.recipes VALUES (258, 162, 162, 1);
INSERT INTO public.recipes VALUES (259, 20, 20, 1);
INSERT INTO public.recipes VALUES (260, 163, 163, 1);
INSERT INTO public.recipes VALUES (261, 420, 773, 1);
INSERT INTO public.recipes VALUES (262, 422, 773, 1);
INSERT INTO public.recipes VALUES (263, 257, 773, 1);
INSERT INTO public.recipes VALUES (264, 281, 773, 1);
INSERT INTO public.recipes VALUES (265, 707, 707, 1);
INSERT INTO public.recipes VALUES (266, 837, 837, 1);
INSERT INTO public.recipes VALUES (267, 715, 715, 1);
INSERT INTO public.recipes VALUES (268, 715, 730, 1);
INSERT INTO public.recipes VALUES (269, 184, 730, 1);
INSERT INTO public.recipes VALUES (270, 154, 204, 1);
INSERT INTO public.recipes VALUES (271, 229, 204, 1);
INSERT INTO public.recipes VALUES (272, 597, 204, 1);
INSERT INTO public.recipes VALUES (273, 909, 908, 1);
INSERT INTO public.recipes VALUES (274, 684, 908, 3);
INSERT INTO public.recipes VALUES (275, 851, 851, 1);
INSERT INTO public.recipes VALUES (276, 335, 703, 1);
INSERT INTO public.recipes VALUES (277, 10003, 228, 1);
INSERT INTO public.recipes VALUES (278, 152, 228, 1);
INSERT INTO public.recipes VALUES (279, 423, 228, 1);
INSERT INTO public.recipes VALUES (280, 834, 834, 1);
INSERT INTO public.recipes VALUES (281, 834, 905, 1);
INSERT INTO public.recipes VALUES (282, 88, 905, 1);
INSERT INTO public.recipes VALUES (283, 423, 905, 1);
INSERT INTO public.recipes VALUES (284, 724, 731, 1);
INSERT INTO public.recipes VALUES (285, 245, 731, 1);
INSERT INTO public.recipes VALUES (286, 246, 731, 1);
INSERT INTO public.recipes VALUES (287, 724, 724, 1);
INSERT INTO public.recipes VALUES (288, 10001, 306, 1);
INSERT INTO public.recipes VALUES (289, 340, 459, 1);
INSERT INTO public.recipes VALUES (290, 384, 288, 4);
INSERT INTO public.recipes VALUES (291, 768, 288, 1);
INSERT INTO public.recipes VALUES (292, 769, 288, 1);
INSERT INTO public.recipes VALUES (293, 254, 254, 1);
INSERT INTO public.recipes VALUES (294, 269, 269, 1);
INSERT INTO public.recipes VALUES (295, 798, 798, 1);
INSERT INTO public.recipes VALUES (296, 184, 184, 1);
INSERT INTO public.recipes VALUES (297, 78, 243, 2);
INSERT INTO public.recipes VALUES (298, 245, 243, 1);
INSERT INTO public.recipes VALUES (299, 184, 243, 1);
INSERT INTO public.recipes VALUES (300, 766, 879, 30);
INSERT INTO public.recipes VALUES (301, 767, 879, 30);
INSERT INTO public.recipes VALUES (302, 257, 257, 1);
INSERT INTO public.recipes VALUES (303, 719, 719, 1);
INSERT INTO public.recipes VALUES (304, 682, 682, 1);
INSERT INTO public.recipes VALUES (305, 725, 725, 1);
INSERT INTO public.recipes VALUES (306, 149, 149, 1);
INSERT INTO public.recipes VALUES (307, 270, 247, 1);
INSERT INTO public.recipes VALUES (308, 248, 772, 10);
INSERT INTO public.recipes VALUES (309, 247, 772, 1);
INSERT INTO public.recipes VALUES (310, 10001, 195, 1);
INSERT INTO public.recipes VALUES (311, 184, 195, 1);
INSERT INTO public.recipes VALUES (312, 635, 635, 1);
INSERT INTO public.recipes VALUES (313, 289, 289, 1);
INSERT INTO public.recipes VALUES (314, 723, 723, 1);
INSERT INTO public.recipes VALUES (315, 304, 303, 1);
INSERT INTO public.recipes VALUES (316, 157, 457, 2);
INSERT INTO public.recipes VALUES (317, 246, 211, 1);
INSERT INTO public.recipes VALUES (318, 10001, 211, 1);
INSERT INTO public.recipes VALUES (319, 24, 24, 1);
INSERT INTO public.recipes VALUES (320, 24, 199, 1);
INSERT INTO public.recipes VALUES (321, 184, 199, 1);
INSERT INTO public.recipes VALUES (322, 419, 199, 1);
INSERT INTO public.recipes VALUES (323, 636, 636, 1);
INSERT INTO public.recipes VALUES (324, 260, 215, 1);
INSERT INTO public.recipes VALUES (325, 424, 215, 1);
INSERT INTO public.recipes VALUES (326, 141, 141, 1);
INSERT INTO public.recipes VALUES (327, 722, 722, 1);
INSERT INTO public.recipes VALUES (328, 10005, 342, 1);
INSERT INTO public.recipes VALUES (329, 144, 144, 1);
INSERT INTO public.recipes VALUES (330, 726, 726, 1);
INSERT INTO public.recipes VALUES (331, 832, 832, 1);
INSERT INTO public.recipes VALUES (332, 254, 221, 1);
INSERT INTO public.recipes VALUES (333, 246, 221, 1);
INSERT INTO public.recipes VALUES (334, 245, 221, 1);
INSERT INTO public.recipes VALUES (335, 10001, 221, 1);
INSERT INTO public.recipes VALUES (336, 246, 206, 1);
INSERT INTO public.recipes VALUES (337, 256, 206, 1);
INSERT INTO public.recipes VALUES (338, 424, 206, 1);
INSERT INTO public.recipes VALUES (339, 406, 604, 2);
INSERT INTO public.recipes VALUES (340, 246, 604, 1);
INSERT INTO public.recipes VALUES (341, 245, 604, 1);
INSERT INTO public.recipes VALUES (342, 830, 906, 4);
INSERT INTO public.recipes VALUES (343, 637, 637, 1);
INSERT INTO public.recipes VALUES (344, 376, 376, 1);
INSERT INTO public.recipes VALUES (345, 376, 651, 1);
INSERT INTO public.recipes VALUES (346, 246, 651, 1);
INSERT INTO public.recipes VALUES (347, 245, 651, 1);
INSERT INTO public.recipes VALUES (348, 192, 192, 1);
INSERT INTO public.recipes VALUES (349, 128, 128, 1);
INSERT INTO public.recipes VALUES (350, 276, 276, 1);
INSERT INTO public.recipes VALUES (351, 276, 608, 1);
INSERT INTO public.recipes VALUES (352, 246, 608, 1);
INSERT INTO public.recipes VALUES (353, 184, 608, 1);
INSERT INTO public.recipes VALUES (354, 245, 608, 1);
INSERT INTO public.recipes VALUES (355, 276, 236, 1);
INSERT INTO public.recipes VALUES (356, 184, 236, 1);
INSERT INTO public.recipes VALUES (357, 422, 422, 1);
INSERT INTO public.recipes VALUES (358, 92, 369, 2);
INSERT INTO public.recipes VALUES (359, 10003, 369, 1);
INSERT INTO public.recipes VALUES (360, 2, 371, 3);
INSERT INTO public.recipes VALUES (361, 330, 371, 1);
INSERT INTO public.recipes VALUES (362, 335, 621, 1);
INSERT INTO public.recipes VALUES (363, 336, 621, 1);
INSERT INTO public.recipes VALUES (364, 338, 621, 1);
INSERT INTO public.recipes VALUES (365, 446, 446, 1);
INSERT INTO public.recipes VALUES (366, 909, 910, 5);
INSERT INTO public.recipes VALUES (367, 382, 910, 1);
INSERT INTO public.recipes VALUES (368, 909, 909, 1);
INSERT INTO public.recipes VALUES (369, 264, 264, 1);
INSERT INTO public.recipes VALUES (370, 247, 609, 1);
INSERT INTO public.recipes VALUES (371, 419, 609, 1);
INSERT INTO public.recipes VALUES (372, 264, 609, 1);
INSERT INTO public.recipes VALUES (373, 709, 681, 1);
INSERT INTO public.recipes VALUES (374, 432, 681, 1);
INSERT INTO public.recipes VALUES (375, 726, 681, 5);
INSERT INTO public.recipes VALUES (376, 394, 394, 1);
INSERT INTO public.recipes VALUES (377, 138, 138, 1);
INSERT INTO public.recipes VALUES (378, 266, 266, 1);
INSERT INTO public.recipes VALUES (379, 146, 146, 1);
INSERT INTO public.recipes VALUES (380, 420, 420, 1);
INSERT INTO public.recipes VALUES (381, 266, 230, 1);
INSERT INTO public.recipes VALUES (382, 264, 230, 1);
INSERT INTO public.recipes VALUES (383, 150, 150, 1);
INSERT INTO public.recipes VALUES (384, 252, 252, 1);
INSERT INTO public.recipes VALUES (385, 252, 222, 1);
INSERT INTO public.recipes VALUES (386, 246, 222, 1);
INSERT INTO public.recipes VALUES (387, 245, 222, 1);
INSERT INTO public.recipes VALUES (388, 184, 232, 1);
INSERT INTO public.recipes VALUES (389, 245, 232, 1);
INSERT INTO public.recipes VALUES (390, 423, 232, 1);
INSERT INTO public.recipes VALUES (391, 335, 524, 5);
INSERT INTO public.recipes VALUES (392, 336, 524, 5);
INSERT INTO public.recipes VALUES (393, 72, 524, 1);
INSERT INTO public.recipes VALUES (394, 408, 607, 3);
INSERT INTO public.recipes VALUES (395, 812, 812, 1);
INSERT INTO public.recipes VALUES (396, 78, 244, 1);
INSERT INTO public.recipes VALUES (397, 412, 244, 1);
INSERT INTO public.recipes VALUES (398, 388, 840, 1);
INSERT INTO public.recipes VALUES (399, 20, 196, 1);
INSERT INTO public.recipes VALUES (400, 22, 196, 1);
INSERT INTO public.recipes VALUES (401, 419, 196, 1);
INSERT INTO public.recipes VALUES (402, 139, 139, 1);
INSERT INTO public.recipes VALUES (403, 139, 212, 1);
INSERT INTO public.recipes VALUES (404, 300, 212, 1);
INSERT INTO public.recipes VALUES (405, 250, 212, 1);
INSERT INTO public.recipes VALUES (406, 296, 296, 1);
INSERT INTO public.recipes VALUES (407, 164, 164, 1);
INSERT INTO public.recipes VALUES (408, 92, 92, 1);
INSERT INTO public.recipes VALUES (409, 131, 131, 1);
INSERT INTO public.recipes VALUES (410, 10003, 227, 1);
INSERT INTO public.recipes VALUES (411, 165, 165, 1);
INSERT INTO public.recipes VALUES (412, 154, 154, 1);
INSERT INTO public.recipes VALUES (413, 397, 397, 1);
INSERT INTO public.recipes VALUES (414, 267, 265, 1);
INSERT INTO public.recipes VALUES (415, 269, 265, 1);
INSERT INTO public.recipes VALUES (416, 814, 265, 1);
INSERT INTO public.recipes VALUES (417, 706, 706, 1);
INSERT INTO public.recipes VALUES (418, 720, 720, 1);
INSERT INTO public.recipes VALUES (419, 720, 733, 1);
INSERT INTO public.recipes VALUES (420, 256, 733, 1);
INSERT INTO public.recipes VALUES (421, 16, 733, 1);
INSERT INTO public.recipes VALUES (422, 766, 766, 1);
INSERT INTO public.recipes VALUES (423, 796, 796, 1);
INSERT INTO public.recipes VALUES (424, 137, 137, 1);
INSERT INTO public.recipes VALUES (425, 721, 721, 1);
INSERT INTO public.recipes VALUES (426, 416, 416, 1);
INSERT INTO public.recipes VALUES (427, 768, 768, 1);
INSERT INTO public.recipes VALUES (428, 246, 224, 1);
INSERT INTO public.recipes VALUES (429, 256, 224, 1);
INSERT INTO public.recipes VALUES (430, 726, 465, 1);
INSERT INTO public.recipes VALUES (431, 372, 465, 1);
INSERT INTO public.recipes VALUES (432, 396, 396, 1);
INSERT INTO public.recipes VALUES (433, 148, 226, 1);
INSERT INTO public.recipes VALUES (434, 260, 226, 1);
INSERT INTO public.recipes VALUES (435, 335, 686, 2);
INSERT INTO public.recipes VALUES (436, 799, 799, 1);
INSERT INTO public.recipes VALUES (437, 399, 399, 1);
INSERT INTO public.recipes VALUES (438, 16, 495, 1);
INSERT INTO public.recipes VALUES (439, 18, 495, 1);
INSERT INTO public.recipes VALUES (440, 20, 495, 1);
INSERT INTO public.recipes VALUES (441, 22, 495, 1);
INSERT INTO public.recipes VALUES (442, 334, 599, 1);
INSERT INTO public.recipes VALUES (443, 335, 599, 1);
INSERT INTO public.recipes VALUES (444, 151, 151, 1);
INSERT INTO public.recipes VALUES (445, 814, 814, 1);
INSERT INTO public.recipes VALUES (446, 814, 921, 1);
INSERT INTO public.recipes VALUES (447, 246, 921, 1);
INSERT INTO public.recipes VALUES (448, 256, 921, 1);
INSERT INTO public.recipes VALUES (449, 268, 268, 1);
INSERT INTO public.recipes VALUES (450, 2, 415, 1);
INSERT INTO public.recipes VALUES (451, 836, 836, 1);
INSERT INTO public.recipes VALUES (452, 78, 606, 1);
INSERT INTO public.recipes VALUES (453, 404, 606, 1);
INSERT INTO public.recipes VALUES (454, 250, 606, 1);
INSERT INTO public.recipes VALUES (455, 247, 606, 1);
INSERT INTO public.recipes VALUES (456, 2, 2, 1);
INSERT INTO public.recipes VALUES (457, 2, 323, 2);
INSERT INTO public.recipes VALUES (458, 2, 329, 1);
INSERT INTO public.recipes VALUES (459, 2, 841, 1);
INSERT INTO public.recipes VALUES (460, 158, 158, 1);
INSERT INTO public.recipes VALUES (461, 246, 203, 1);
INSERT INTO public.recipes VALUES (462, 722, 203, 1);
INSERT INTO public.recipes VALUES (463, 308, 203, 1);
INSERT INTO public.recipes VALUES (464, 388, 401, 1);
INSERT INTO public.recipes VALUES (465, 771, 401, 1);
INSERT INTO public.recipes VALUES (466, 400, 400, 1);
INSERT INTO public.recipes VALUES (467, 216, 239, 1);
INSERT INTO public.recipes VALUES (468, 282, 239, 1);
INSERT INTO public.recipes VALUES (469, 408, 239, 1);
INSERT INTO public.recipes VALUES (470, 334, 525, 2);
INSERT INTO public.recipes VALUES (471, 684, 525, 25);
INSERT INTO public.recipes VALUES (472, 766, 525, 25);
INSERT INTO public.recipes VALUES (473, 698, 698, 1);
INSERT INTO public.recipes VALUES (474, 396, 496, 1);
INSERT INTO public.recipes VALUES (475, 398, 496, 1);
INSERT INTO public.recipes VALUES (476, 402, 496, 1);
INSERT INTO public.recipes VALUES (477, 593, 593, 1);
INSERT INTO public.recipes VALUES (478, 145, 145, 1);
INSERT INTO public.recipes VALUES (479, 421, 421, 1);
INSERT INTO public.recipes VALUES (480, 155, 155, 1);
INSERT INTO public.recipes VALUES (481, 278, 237, 1);
INSERT INTO public.recipes VALUES (482, 282, 237, 1);
INSERT INTO public.recipes VALUES (483, 274, 237, 1);
INSERT INTO public.recipes VALUES (484, 216, 241, 1);
INSERT INTO public.recipes VALUES (485, 78, 241, 1);
INSERT INTO public.recipes VALUES (486, 272, 241, 1);
INSERT INTO public.recipes VALUES (487, 417, 417, 1);
INSERT INTO public.recipes VALUES (488, 402, 402, 1);
INSERT INTO public.recipes VALUES (489, 830, 830, 1);
INSERT INTO public.recipes VALUES (490, 815, 815, 1);
INSERT INTO public.recipes VALUES (491, 881, 839, 50);
INSERT INTO public.recipes VALUES (492, 2, 839, 50);
INSERT INTO public.recipes VALUES (493, 336, 839, 1);
INSERT INTO public.recipes VALUES (494, 699, 699, 1);
INSERT INTO public.recipes VALUES (495, 701, 701, 1);
INSERT INTO public.recipes VALUES (496, 88, 218, 1);
INSERT INTO public.recipes VALUES (497, 720, 218, 1);
INSERT INTO public.recipes VALUES (498, 404, 218, 1);
INSERT INTO public.recipes VALUES (499, 256, 256, 1);
INSERT INTO public.recipes VALUES (500, 388, 93, 1);
INSERT INTO public.recipes VALUES (501, 92, 93, 2);
INSERT INTO public.recipes VALUES (502, 270, 229, 1);
INSERT INTO public.recipes VALUES (503, 334, 694, 1);
INSERT INTO public.recipes VALUES (504, 92, 694, 10);
INSERT INTO public.recipes VALUES (505, 336, 693, 2);
INSERT INTO public.recipes VALUES (506, 771, 805, 5);
INSERT INTO public.recipes VALUES (507, 2, 805, 5);
INSERT INTO public.recipes VALUES (508, 395, 253, 3);
INSERT INTO public.recipes VALUES (509, 88, 907, 1);
INSERT INTO public.recipes VALUES (510, 832, 907, 1);
INSERT INTO public.recipes VALUES (511, 260, 907, 1);
INSERT INTO public.recipes VALUES (512, 138, 219, 1);
INSERT INTO public.recipes VALUES (513, 153, 219, 1);
INSERT INTO public.recipes VALUES (514, 430, 430, 1);
INSERT INTO public.recipes VALUES (515, 430, 432, 1);
INSERT INTO public.recipes VALUES (516, 591, 591, 1);
INSERT INTO public.recipes VALUES (517, 130, 130, 1);
INSERT INTO public.recipes VALUES (518, 271, 271, 1);
INSERT INTO public.recipes VALUES (519, 256, 200, 1);
INSERT INTO public.recipes VALUES (520, 284, 200, 1);
INSERT INTO public.recipes VALUES (521, 305, 305, 1);
INSERT INTO public.recipes VALUES (522, 769, 769, 1);
INSERT INTO public.recipes VALUES (523, 305, 308, 1);
INSERT INTO public.recipes VALUES (524, 795, 795, 1);
INSERT INTO public.recipes VALUES (525, 140, 140, 1);
INSERT INTO public.recipes VALUES (526, 709, 690, 1);
INSERT INTO public.recipes VALUES (527, 393, 690, 2);
INSERT INTO public.recipes VALUES (528, 771, 690, 10);
INSERT INTO public.recipes VALUES (529, 709, 688, 1);
INSERT INTO public.recipes VALUES (530, 340, 688, 1);
INSERT INTO public.recipes VALUES (531, 771, 688, 20);
INSERT INTO public.recipes VALUES (532, 709, 689, 1);
INSERT INTO public.recipes VALUES (533, 335, 689, 1);
INSERT INTO public.recipes VALUES (534, 2, 689, 25);
INSERT INTO public.recipes VALUES (535, 709, 261, 2);
INSERT INTO public.recipes VALUES (536, 88, 261, 1);
INSERT INTO public.recipes VALUES (537, 386, 261, 4);
INSERT INTO public.recipes VALUES (538, 709, 886, 5);
INSERT INTO public.recipes VALUES (539, 852, 886, 1);
INSERT INTO public.recipes VALUES (540, 829, 886, 1);
INSERT INTO public.recipes VALUES (541, 335, 521, 10);
INSERT INTO public.recipes VALUES (542, 382, 521, 25);
INSERT INTO public.recipes VALUES (543, 84, 521, 10);
INSERT INTO public.recipes VALUES (544, 388, 331, 1);
INSERT INTO public.recipes VALUES (545, 262, 262, 1);
INSERT INTO public.recipes VALUES (546, 771, 774, 10);
INSERT INTO public.recipes VALUES (547, 766, 774, 5);
INSERT INTO public.recipes VALUES (548, 684, 774, 5);
INSERT INTO public.recipes VALUES (549, 16, 16, 1);
INSERT INTO public.recipes VALUES (550, 406, 406, 1);
INSERT INTO public.recipes VALUES (551, 10004, 348, 1);
INSERT INTO public.recipes VALUES (552, 412, 412, 1);
INSERT INTO public.recipes VALUES (553, 418, 498, 1);
INSERT INTO public.recipes VALUES (554, 414, 498, 1);
INSERT INTO public.recipes VALUES (555, 416, 498, 1);
INSERT INTO public.recipes VALUES (556, 412, 498, 1);
INSERT INTO public.recipes VALUES (557, 388, 388, 1);
INSERT INTO public.recipes VALUES (558, 388, 322, 2);
INSERT INTO public.recipes VALUES (559, 388, 328, 1);
INSERT INTO public.recipes VALUES (560, 388, 405, 1);
INSERT INTO public.recipes VALUES (561, 734, 734, 1);
INSERT INTO public.recipes VALUES (562, 440, 440, 1);
INSERT INTO public.recipes VALUES (563, 280, 280, 1);
INSERT INTO public.recipes VALUES (564, 114, 499, 1);
INSERT INTO public.recipes VALUES (565, 388, 10026, 50);
INSERT INTO public.recipes VALUES (566, 768, 10026, 1);
INSERT INTO public.recipes VALUES (567, 382, 10026, 1);
INSERT INTO public.recipes VALUES (568, 767, 767, 1);
INSERT INTO public.recipes VALUES (569, 388, 10018, 40);
INSERT INTO public.recipes VALUES (570, 382, 10018, 8);
INSERT INTO public.recipes VALUES (571, 335, 10018, 1);
INSERT INTO public.recipes VALUES (572, 724, 10018, 1);
INSERT INTO public.recipes VALUES (573, 881, 10037, 10);
INSERT INTO public.recipes VALUES (574, 330, 10037, 3);
INSERT INTO public.recipes VALUES (575, 2, 10037, 20);
INSERT INTO public.recipes VALUES (576, 684, 684, 1);
INSERT INTO public.recipes VALUES (577, 2, 10027, 10);
INSERT INTO public.recipes VALUES (578, 388, 10027, 10);
INSERT INTO public.recipes VALUES (579, 771, 10027, 10);
INSERT INTO public.recipes VALUES (580, 709, 10028, 10);
INSERT INTO public.recipes VALUES (581, 382, 10028, 1);
INSERT INTO public.recipes VALUES (582, 388, 10019, 20);
INSERT INTO public.recipes VALUES (583, 709, 10019, 1);
INSERT INTO public.recipes VALUES (584, 388, 10038, 20);
INSERT INTO public.recipes VALUES (585, 334, 10038, 2);
INSERT INTO public.recipes VALUES (586, 388, 10020, 45);
INSERT INTO public.recipes VALUES (587, 2, 10020, 45);
INSERT INTO public.recipes VALUES (588, 709, 10020, 10);
INSERT INTO public.recipes VALUES (589, 334, 10020, 1);
INSERT INTO public.recipes VALUES (590, 388, 10054, 50);
INSERT INTO public.recipes VALUES (591, 388, 926, 15);
INSERT INTO public.recipes VALUES (592, 771, 926, 10);
INSERT INTO public.recipes VALUES (593, 382, 926, 3);
INSERT INTO public.recipes VALUES (594, 2, 10039, 99);
INSERT INTO public.recipes VALUES (595, 336, 10039, 5);
INSERT INTO public.recipes VALUES (596, 337, 10039, 2);
INSERT INTO public.recipes VALUES (597, 787, 10039, 1);
INSERT INTO public.recipes VALUES (598, 767, 10056, 5);
INSERT INTO public.recipes VALUES (599, 881, 10056, 5);
INSERT INTO public.recipes VALUES (600, 388, 10059, 50);
INSERT INTO public.recipes VALUES (601, 771, 10059, 40);
INSERT INTO public.recipes VALUES (602, 386, 10059, 1);
INSERT INTO public.recipes VALUES (603, 122, 10060, 1);
INSERT INTO public.recipes VALUES (604, 787, 10060, 1);
INSERT INTO public.recipes VALUES (605, 338, 10060, 10);
INSERT INTO public.recipes VALUES (606, 770, 885, 1);
INSERT INTO public.recipes VALUES (607, 92, 885, 5);
INSERT INTO public.recipes VALUES (608, 330, 885, 1);
INSERT INTO public.recipes VALUES (609, 378, 10040, 20);
INSERT INTO public.recipes VALUES (610, 2, 10040, 25);
INSERT INTO public.recipes VALUES (611, 330, 10061, 1);
INSERT INTO public.recipes VALUES (612, 2, 10061, 10);
INSERT INTO public.recipes VALUES (613, 338, 10061, 1);
INSERT INTO public.recipes VALUES (614, 336, 10041, 2);
INSERT INTO public.recipes VALUES (615, 2, 10041, 50);
INSERT INTO public.recipes VALUES (616, 72, 10041, 1);
INSERT INTO public.recipes VALUES (617, 336, 10029, 1);
INSERT INTO public.recipes VALUES (618, 382, 10029, 1);
INSERT INTO public.recipes VALUES (619, 771, 10029, 5);
INSERT INTO public.recipes VALUES (620, 709, 10042, 30);
INSERT INTO public.recipes VALUES (621, 910, 10042, 1);
INSERT INTO public.recipes VALUES (622, 709, 10062, 10);
INSERT INTO public.recipes VALUES (623, 337, 10062, 1);
INSERT INTO public.recipes VALUES (624, 910, 10062, 1);
INSERT INTO public.recipes VALUES (625, 335, 10030, 1);
INSERT INTO public.recipes VALUES (626, 787, 10030, 1);
INSERT INTO public.recipes VALUES (627, 388, 10021, 30);
INSERT INTO public.recipes VALUES (628, 334, 10021, 1);
INSERT INTO public.recipes VALUES (629, 335, 10021, 1);
INSERT INTO public.recipes VALUES (630, 725, 10021, 1);
INSERT INTO public.recipes VALUES (631, 335, 10043, 1);
INSERT INTO public.recipes VALUES (632, 338, 10043, 1);
INSERT INTO public.recipes VALUES (633, 767, 10043, 5);
INSERT INTO public.recipes VALUES (634, 388, 10022, 60);
INSERT INTO public.recipes VALUES (635, 771, 10022, 30);
INSERT INTO public.recipes VALUES (636, 726, 10022, 1);
INSERT INTO public.recipes VALUES (637, 567, 10031, 1);
INSERT INTO public.recipes VALUES (638, 62, 10031, 1);
INSERT INTO public.recipes VALUES (639, 2, 10031, 100);
INSERT INTO public.recipes VALUES (640, 388, 10023, 15);
INSERT INTO public.recipes VALUES (641, 2, 10023, 15);
INSERT INTO public.recipes VALUES (642, 86, 10023, 1);
INSERT INTO public.recipes VALUES (643, 334, 10023, 1);
INSERT INTO public.recipes VALUES (644, 335, 10063, 2);
INSERT INTO public.recipes VALUES (645, 787, 10063, 1);
INSERT INTO public.recipes VALUES (646, 709, 10064, 30);
INSERT INTO public.recipes VALUES (647, 768, 10064, 20);
INSERT INTO public.recipes VALUES (648, 336, 10064, 3);
INSERT INTO public.recipes VALUES (649, 392, 392, 1);
INSERT INTO public.recipes VALUES (650, 766, 10024, 50);
INSERT INTO public.recipes VALUES (651, 709, 10024, 20);
INSERT INTO public.recipes VALUES (652, 336, 10024, 1);
INSERT INTO public.recipes VALUES (653, 881, 10044, 50);
INSERT INTO public.recipes VALUES (654, 709, 10044, 50);
INSERT INTO public.recipes VALUES (655, 848, 10044, 20);
INSERT INTO public.recipes VALUES (656, 388, 10025, 50);
INSERT INTO public.recipes VALUES (657, 2, 10025, 40);
INSERT INTO public.recipes VALUES (658, 382, 10025, 8);
INSERT INTO public.recipes VALUES (659, 334, 877, 1);
INSERT INTO public.recipes VALUES (660, 92, 877, 20);
INSERT INTO public.recipes VALUES (661, 768, 877, 5);
INSERT INTO public.recipes VALUES (662, 388, 10045, 25);
INSERT INTO public.recipes VALUES (663, 2, 10045, 25);
INSERT INTO public.recipes VALUES (664, 335, 10045, 1);
INSERT INTO public.recipes VALUES (665, 80, 338, 1);
INSERT INTO public.recipes VALUES (666, 388, 10065, 50);
INSERT INTO public.recipes VALUES (667, 382, 10065, 1);
INSERT INTO public.recipes VALUES (668, 771, 10065, 20);
INSERT INTO public.recipes VALUES (669, 388, 10046, 25);
INSERT INTO public.recipes VALUES (670, 382, 10046, 10);
INSERT INTO public.recipes VALUES (671, 336, 10046, 1);
INSERT INTO public.recipes VALUES (672, 881, 10032, 10);
INSERT INTO public.recipes VALUES (673, 382, 10047, 25);
INSERT INTO public.recipes VALUES (674, 82, 10047, 1);
INSERT INTO public.recipes VALUES (675, 787, 10047, 1);
INSERT INTO public.recipes VALUES (676, 337, 10048, 2);
INSERT INTO public.recipes VALUES (677, 766, 10048, 100);
INSERT INTO public.recipes VALUES (678, 338, 10049, 10);
INSERT INTO public.recipes VALUES (679, 335, 10049, 5);
INSERT INTO public.recipes VALUES (680, 336, 10049, 5);
INSERT INTO public.recipes VALUES (681, 2, 10066, 99);
INSERT INTO public.recipes VALUES (682, 2, 10033, 10);
INSERT INTO public.recipes VALUES (683, 382, 10033, 1);
INSERT INTO public.recipes VALUES (684, 771, 10033, 5);
INSERT INTO public.recipes VALUES (685, 2, 10055, 50);
INSERT INTO public.recipes VALUES (686, 2, 10057, 25);
INSERT INTO public.recipes VALUES (687, 709, 10034, 5);
INSERT INTO public.recipes VALUES (688, 382, 10034, 1);
INSERT INTO public.recipes VALUES (689, 388, 10050, 40);
INSERT INTO public.recipes VALUES (690, 334, 10050, 2);
INSERT INTO public.recipes VALUES (691, 10067, 251, 2);
INSERT INTO public.recipes VALUES (692, 771, 251, 5);
INSERT INTO public.recipes VALUES (693, 388, 251, 5);
INSERT INTO public.recipes VALUES (694, 388, 10052, 15);
INSERT INTO public.recipes VALUES (695, 427, 10052, 1);
INSERT INTO public.recipes VALUES (696, 429, 10052, 1);
INSERT INTO public.recipes VALUES (697, 453, 10052, 1);
INSERT INTO public.recipes VALUES (698, 455, 10052, 1);
INSERT INTO public.recipes VALUES (699, 2, 10053, 25);
INSERT INTO public.recipes VALUES (700, 382, 10053, 5);
INSERT INTO public.recipes VALUES (701, 388, 10035, 50);
INSERT INTO public.recipes VALUES (702, 787, 10035, 1);
INSERT INTO public.recipes VALUES (703, 388, 10058, 25);
INSERT INTO public.recipes VALUES (704, 388, 10036, 10);
INSERT INTO public.recipes VALUES (705, 382, 10036, 1);
INSERT INTO public.recipes VALUES (706, 771, 10036, 5);
INSERT INTO public.recipes VALUES (707, 709, 10051, 25);
INSERT INTO public.recipes VALUES (708, 336, 10051, 1);
INSERT INTO public.recipes VALUES (709, 335, 10051, 1);
INSERT INTO public.recipes VALUES (710, 771, 10051, 50);
INSERT INTO public.recipes VALUES (711, 16, 20001, 1);
INSERT INTO public.recipes VALUES (712, 18, 20001, 1);
INSERT INTO public.recipes VALUES (713, 20, 20001, 1);
INSERT INTO public.recipes VALUES (714, 22, 20001, 1);
INSERT INTO public.recipes VALUES (715, 398, 20002, 1);
INSERT INTO public.recipes VALUES (716, 396, 20002, 1);
INSERT INTO public.recipes VALUES (717, 402, 20002, 1);
INSERT INTO public.recipes VALUES (718, 404, 20003, 1);
INSERT INTO public.recipes VALUES (719, 406, 20003, 1);
INSERT INTO public.recipes VALUES (720, 408, 20003, 1);
INSERT INTO public.recipes VALUES (721, 410, 20003, 1);
INSERT INTO public.recipes VALUES (722, 412, 20004, 1);
INSERT INTO public.recipes VALUES (723, 414, 20004, 1);
INSERT INTO public.recipes VALUES (724, 416, 20004, 1);
INSERT INTO public.recipes VALUES (725, 418, 20004, 1);
INSERT INTO public.recipes VALUES (726, 388, 20005, 99);
INSERT INTO public.recipes VALUES (727, 388, 20005, 99);
INSERT INTO public.recipes VALUES (728, 2, 20005, 99);
INSERT INTO public.recipes VALUES (729, 709, 20005, 10);
INSERT INTO public.recipes VALUES (730, 88, 20006, 1);
INSERT INTO public.recipes VALUES (731, 90, 20006, 1);
INSERT INTO public.recipes VALUES (732, 78, 20006, 1);
INSERT INTO public.recipes VALUES (733, 420, 20006, 1);
INSERT INTO public.recipes VALUES (734, 422, 20006, 1);
INSERT INTO public.recipes VALUES (735, 724, 20006, 1);
INSERT INTO public.recipes VALUES (736, 725, 20006, 1);
INSERT INTO public.recipes VALUES (737, 726, 20006, 1);
INSERT INTO public.recipes VALUES (738, 257, 20006, 1);
INSERT INTO public.recipes VALUES (739, 24, 20007, 1);
INSERT INTO public.recipes VALUES (740, 188, 20007, 1);
INSERT INTO public.recipes VALUES (741, 190, 20007, 1);
INSERT INTO public.recipes VALUES (742, 192, 20007, 1);
INSERT INTO public.recipes VALUES (743, 256, 20008, 1);
INSERT INTO public.recipes VALUES (744, 260, 20008, 1);
INSERT INTO public.recipes VALUES (745, 258, 20008, 1);
INSERT INTO public.recipes VALUES (746, 254, 20008, 1);
INSERT INTO public.recipes VALUES (747, 270, 20009, 1);
INSERT INTO public.recipes VALUES (748, 272, 20009, 1);
INSERT INTO public.recipes VALUES (749, 276, 20009, 1);
INSERT INTO public.recipes VALUES (750, 280, 20009, 1);
INSERT INTO public.recipes VALUES (751, 10006, 20010, 5);
INSERT INTO public.recipes VALUES (752, 10007, 20010, 5);
INSERT INTO public.recipes VALUES (753, 10009, 20010, 5);
INSERT INTO public.recipes VALUES (754, 10008, 20010, 5);
INSERT INTO public.recipes VALUES (755, 186, 20011, 1);
INSERT INTO public.recipes VALUES (756, 174, 20011, 1);
INSERT INTO public.recipes VALUES (757, 182, 20011, 1);
INSERT INTO public.recipes VALUES (758, 438, 20011, 1);
INSERT INTO public.recipes VALUES (759, 440, 20011, 1);
INSERT INTO public.recipes VALUES (760, 442, 20011, 1);
INSERT INTO public.recipes VALUES (761, 432, 20012, 1);
INSERT INTO public.recipes VALUES (762, 428, 20012, 1);
INSERT INTO public.recipes VALUES (763, 426, 20012, 1);
INSERT INTO public.recipes VALUES (764, 424, 20012, 1);
INSERT INTO public.recipes VALUES (765, 340, 20012, 1);
INSERT INTO public.recipes VALUES (766, 344, 20012, 1);
INSERT INTO public.recipes VALUES (767, 613, 20012, 1);
INSERT INTO public.recipes VALUES (768, 634, 20012, 1);
INSERT INTO public.recipes VALUES (769, 635, 20012, 1);
INSERT INTO public.recipes VALUES (770, 636, 20012, 1);
INSERT INTO public.recipes VALUES (771, 637, 20012, 1);
INSERT INTO public.recipes VALUES (772, 638, 20012, 1);
INSERT INTO public.recipes VALUES (773, 145, 20013, 1);
INSERT INTO public.recipes VALUES (774, 143, 20013, 1);
INSERT INTO public.recipes VALUES (775, 706, 20013, 1);
INSERT INTO public.recipes VALUES (776, 699, 20013, 1);
INSERT INTO public.recipes VALUES (777, 136, 20014, 1);
INSERT INTO public.recipes VALUES (778, 142, 20014, 1);
INSERT INTO public.recipes VALUES (779, 700, 20014, 1);
INSERT INTO public.recipes VALUES (780, 698, 20014, 1);
INSERT INTO public.recipes VALUES (781, 131, 20015, 1);
INSERT INTO public.recipes VALUES (782, 130, 20015, 1);
INSERT INTO public.recipes VALUES (783, 150, 20015, 1);
INSERT INTO public.recipes VALUES (784, 701, 20015, 1);
INSERT INTO public.recipes VALUES (785, 140, 20016, 1);
INSERT INTO public.recipes VALUES (786, 132, 20016, 1);
INSERT INTO public.recipes VALUES (787, 148, 20016, 1);
INSERT INTO public.recipes VALUES (788, 715, 20017, 1);
INSERT INTO public.recipes VALUES (789, 716, 20017, 1);
INSERT INTO public.recipes VALUES (790, 717, 20017, 1);
INSERT INTO public.recipes VALUES (791, 718, 20017, 1);
INSERT INTO public.recipes VALUES (792, 719, 20017, 1);
INSERT INTO public.recipes VALUES (793, 720, 20017, 1);
INSERT INTO public.recipes VALUES (794, 721, 20017, 1);
INSERT INTO public.recipes VALUES (795, 722, 20017, 1);
INSERT INTO public.recipes VALUES (796, 723, 20017, 1);
INSERT INTO public.recipes VALUES (797, 372, 20017, 1);
INSERT INTO public.recipes VALUES (798, 128, 20018, 1);
INSERT INTO public.recipes VALUES (799, 156, 20018, 1);
INSERT INTO public.recipes VALUES (800, 164, 20018, 1);
INSERT INTO public.recipes VALUES (801, 734, 20018, 1);
INSERT INTO public.recipes VALUES (802, 334, 20019, 1);
INSERT INTO public.recipes VALUES (803, 335, 20019, 1);
INSERT INTO public.recipes VALUES (804, 336, 20019, 1);
INSERT INTO public.recipes VALUES (805, 80, 20020, 1);
INSERT INTO public.recipes VALUES (806, 86, 20020, 1);
INSERT INTO public.recipes VALUES (807, 84, 20020, 1);
INSERT INTO public.recipes VALUES (808, 82, 20020, 1);
INSERT INTO public.recipes VALUES (809, 766, 20021, 99);
INSERT INTO public.recipes VALUES (810, 767, 20021, 10);
INSERT INTO public.recipes VALUES (811, 768, 20021, 1);
INSERT INTO public.recipes VALUES (812, 769, 20021, 1);
INSERT INTO public.recipes VALUES (813, 724, 20022, 1);
INSERT INTO public.recipes VALUES (814, 259, 20022, 1);
INSERT INTO public.recipes VALUES (815, 430, 20022, 1);
INSERT INTO public.recipes VALUES (816, 376, 20022, 1);
INSERT INTO public.recipes VALUES (817, 228, 20022, 1);
INSERT INTO public.recipes VALUES (818, 194, 20022, 1);
INSERT INTO public.recipes VALUES (819, 420, 20023, 1);
INSERT INTO public.recipes VALUES (820, 397, 20023, 1);
INSERT INTO public.recipes VALUES (821, 421, 20023, 1);
INSERT INTO public.recipes VALUES (822, 444, 20023, 1);
INSERT INTO public.recipes VALUES (823, 62, 20023, 1);
INSERT INTO public.recipes VALUES (824, 266, 20023, 1);
INSERT INTO public.recipes VALUES (825, 422, 20024, 1);
INSERT INTO public.recipes VALUES (826, 392, 20024, 1);
INSERT INTO public.recipes VALUES (827, 702, 20024, 1);
INSERT INTO public.recipes VALUES (828, 536, 20024, 1);
INSERT INTO public.recipes VALUES (829, 262, 20025, 10);
INSERT INTO public.recipes VALUES (830, 178, 20025, 10);
INSERT INTO public.recipes VALUES (831, 613, 20025, 3);
INSERT INTO public.recipes VALUES (832, 725, 20026, 1);
INSERT INTO public.recipes VALUES (833, 348, 20026, 1);
INSERT INTO public.recipes VALUES (834, 446, 20026, 1);
INSERT INTO public.recipes VALUES (835, 637, 20026, 1);
INSERT INTO public.recipes VALUES (836, 16, 20027, 1);
INSERT INTO public.recipes VALUES (837, 18, 20027, 1);
INSERT INTO public.recipes VALUES (838, 20, 20027, 1);
INSERT INTO public.recipes VALUES (839, 22, 20027, 1);
INSERT INTO public.recipes VALUES (840, 399, 20027, 1);
INSERT INTO public.recipes VALUES (841, 412, 20028, 1);
INSERT INTO public.recipes VALUES (842, 414, 20028, 1);
INSERT INTO public.recipes VALUES (843, 416, 20028, 1);
INSERT INTO public.recipes VALUES (844, 418, 20028, 1);
INSERT INTO public.recipes VALUES (845, 283, 20028, 1);
INSERT INTO public.recipes VALUES (846, 92, 20029, 500);
INSERT INTO public.recipes VALUES (847, 422, 20030, 5);
INSERT INTO public.recipes VALUES (848, 259, 20030, 5);
INSERT INTO public.recipes VALUES (849, 157, 20030, 5);
INSERT INTO public.recipes VALUES (850, 304, 20030, 5);
INSERT INTO public.recipes VALUES (851, 10006, 20031, 5);
INSERT INTO public.recipes VALUES (852, 10010, 20031, 5);
INSERT INTO public.recipes VALUES (853, 10011, 20031, 5);
INSERT INTO public.recipes VALUES (854, 10012, 20031, 5);
INSERT INTO public.recipes VALUES (855, 10007, 20031, 5);
INSERT INTO public.recipes VALUES (856, 10013, 20031, 5);
INSERT INTO public.recipes VALUES (857, 10014, 20031, 5);
INSERT INTO public.recipes VALUES (858, 10009, 20031, 5);
INSERT INTO public.recipes VALUES (859, 10015, 20031, 5);
INSERT INTO public.recipes VALUES (860, 10016, 20031, 5);
INSERT INTO public.recipes VALUES (861, 10008, 20031, 5);
INSERT INTO public.recipes VALUES (862, 454, 20032, 1);
INSERT INTO public.recipes VALUES (863, 417, 20032, 1);
INSERT INTO public.recipes VALUES (864, 591, 20033, 1);
INSERT INTO public.recipes VALUES (865, 597, 20033, 1);
INSERT INTO public.recipes VALUES (866, 593, 20033, 1);
INSERT INTO public.recipes VALUES (867, 421, 20033, 1);
INSERT INTO public.recipes VALUES (868, 595, 20033, 1);
INSERT INTO public.recipes VALUES (869, 812, 20034, 15);
INSERT INTO public.recipes VALUES (870, 447, 20034, 15);
INSERT INTO public.recipes VALUES (871, 814, 20034, 1);
INSERT INTO public.recipes VALUES (872, 459, 20035, 1);
INSERT INTO public.recipes VALUES (873, 303, 20035, 1);
INSERT INTO public.recipes VALUES (874, 348, 20035, 1);
INSERT INTO public.recipes VALUES (875, 350, 20035, 1);
INSERT INTO public.recipes VALUES (876, 614, 20035, 1);
INSERT INTO public.recipes VALUES (877, 162, 20036, 1);
INSERT INTO public.recipes VALUES (878, 165, 20036, 1);
INSERT INTO public.recipes VALUES (879, 149, 20036, 1);
INSERT INTO public.recipes VALUES (880, 800, 20036, 1);
INSERT INTO public.recipes VALUES (881, 136, 20037, 1);
INSERT INTO public.recipes VALUES (882, 706, 20037, 1);
INSERT INTO public.recipes VALUES (883, 130, 20037, 1);
INSERT INTO public.recipes VALUES (884, 140, 20037, 1);
INSERT INTO public.recipes VALUES (885, 766, 20038, 99);
INSERT INTO public.recipes VALUES (886, 767, 20038, 10);
INSERT INTO public.recipes VALUES (887, 768, 20038, 1);
INSERT INTO public.recipes VALUES (888, 769, 20038, 1);
INSERT INTO public.recipes VALUES (889, 881, 20038, 10);
INSERT INTO public.recipes VALUES (890, 66, 20039, 1);
INSERT INTO public.recipes VALUES (891, 62, 20039, 1);
INSERT INTO public.recipes VALUES (892, 72, 20039, 1);
INSERT INTO public.recipes VALUES (893, 60, 20039, 1);
INSERT INTO public.recipes VALUES (894, 64, 20039, 1);
INSERT INTO public.recipes VALUES (895, 68, 20039, 1);
INSERT INTO public.recipes VALUES (896, 386, 20040, 1);
INSERT INTO public.recipes VALUES (897, 787, 20040, 1);
INSERT INTO public.recipes VALUES (898, 338, 20040, 5);
INSERT INTO public.recipes VALUES (899, 420, 20041, 1);
INSERT INTO public.recipes VALUES (900, 284, 20041, 1);
INSERT INTO public.recipes VALUES (901, 397, 20041, 1);
INSERT INTO public.recipes VALUES (902, 300, 20041, 1);
INSERT INTO public.recipes VALUES (903, 421, 20041, 1);
INSERT INTO public.recipes VALUES (904, 268, 20041, 1);
INSERT INTO public.recipes VALUES (905, 444, 20041, 1);
INSERT INTO public.recipes VALUES (906, 90, 20041, 1);
INSERT INTO public.recipes VALUES (907, 62, 20041, 1);
INSERT INTO public.recipes VALUES (908, 258, 20041, 1);
INSERT INTO public.recipes VALUES (909, 266, 20041, 1);
INSERT INTO public.recipes VALUES (910, 337, 20041, 1);
INSERT INTO public.recipes VALUES (911, 10001, 20042, 10);
INSERT INTO public.recipes VALUES (912, 10017, 20042, 10);
INSERT INTO public.recipes VALUES (913, 246, 20042, 100);
INSERT INTO public.recipes VALUES (914, 296, 20043, 10);
INSERT INTO public.recipes VALUES (915, 223, 20043, 1);
INSERT INTO public.recipes VALUES (916, 103, 20043, 1);
INSERT INTO public.recipes VALUES (917, 233, 20043, 1);
INSERT INTO public.recipes VALUES (918, 296, 20044, 50);
INSERT INTO public.recipes VALUES (919, 410, 20044, 50);
INSERT INTO public.recipes VALUES (920, 406, 20044, 20);
INSERT INTO public.recipes VALUES (921, 190, 30001, 1);
INSERT INTO public.recipes VALUES (922, 78, 30002, 1);
INSERT INTO public.recipes VALUES (923, 303, 30003, 1);
INSERT INTO public.recipes VALUES (924, 769, 30004, 1);
INSERT INTO public.recipes VALUES (925, 300, 30005, 1);
INSERT INTO public.recipes VALUES (926, 254, 30006, 1);
INSERT INTO public.recipes VALUES (927, 260, 30007, 1);
INSERT INTO public.recipes VALUES (928, 709, 30008, 10);
INSERT INTO public.recipes VALUES (929, 787, 30009, 1);
INSERT INTO public.recipes VALUES (930, 394, 30009, 1);
INSERT INTO public.recipes VALUES (931, 284, 30009, 10);
INSERT INTO public.recipes VALUES (932, 768, 30009, 1);
INSERT INTO public.recipes VALUES (933, 276, 30010, 1);
INSERT INTO public.recipes VALUES (934, 724, 30011, 1);
INSERT INTO public.recipes VALUES (935, 634, 30012, 1);
INSERT INTO public.recipes VALUES (936, 128, 30013, 1);
INSERT INTO public.recipes VALUES (937, 268, 30014, 1);
INSERT INTO public.recipes VALUES (938, 432, 30015, 1);
INSERT INTO public.recipes VALUES (939, 715, 30016, 1);
INSERT INTO public.recipes VALUES (940, 787, 30017, 1);
INSERT INTO public.recipes VALUES (941, 136, 30018, 1);
INSERT INTO public.recipes VALUES (942, 151, 30019, 1);
INSERT INTO public.recipes VALUES (943, 705, 30020, 1);
INSERT INTO public.recipes VALUES (944, 227, 30021, 1);
INSERT INTO public.recipes VALUES (945, 66, 30022, 1);
INSERT INTO public.recipes VALUES (946, 335, 30023, 1);
INSERT INTO public.recipes VALUES (947, 337, 30024, 1);
INSERT INTO public.recipes VALUES (948, 20, 30025, 1);
INSERT INTO public.recipes VALUES (949, 88, 30026, 1);
INSERT INTO public.recipes VALUES (950, 707, 30027, 1);
INSERT INTO public.recipes VALUES (951, 308, 30028, 1);
INSERT INTO public.recipes VALUES (952, 483, 30029, 1);
INSERT INTO public.recipes VALUES (953, 479, 30029, 1);
INSERT INTO public.recipes VALUES (954, 476, 30029, 1);
INSERT INTO public.recipes VALUES (955, 464, 30030, 5);
INSERT INTO public.recipes VALUES (956, 66, 30031, 1);
INSERT INTO public.recipes VALUES (957, 62, 30031, 1);
INSERT INTO public.recipes VALUES (958, 60, 30031, 1);
INSERT INTO public.recipes VALUES (959, 64, 30031, 1);
INSERT INTO public.recipes VALUES (960, 68, 30031, 1);
INSERT INTO public.recipes VALUES (961, 91, 30032, 1);
INSERT INTO public.recipes VALUES (962, 2, 40001, 200);
INSERT INTO public.recipes VALUES (963, 152, 40001, 5);
INSERT INTO public.recipes VALUES (964, 153, 40001, 5);
INSERT INTO public.recipes VALUES (965, 337, 50001, 10);
INSERT INTO public.recipes VALUES (966, 86, 50001, 10);
INSERT INTO public.recipes VALUES (967, 337, 50002, 5);
INSERT INTO public.recipes VALUES (968, 372, 50002, 10);
INSERT INTO public.recipes VALUES (969, 393, 50002, 10);
INSERT INTO public.recipes VALUES (970, 337, 50003, 20);
INSERT INTO public.recipes VALUES (971, 88, 50003, 10);
INSERT INTO public.recipes VALUES (972, 90, 50003, 10);
INSERT INTO public.recipes VALUES (973, 337, 50004, 10);
INSERT INTO public.recipes VALUES (974, 852, 50004, 10);
INSERT INTO public.recipes VALUES (975, 91, 50004, 10);
INSERT INTO public.recipes VALUES (976, 709, 60001, 200);
INSERT INTO public.recipes VALUES (977, 787, 60002, 5);
INSERT INTO public.recipes VALUES (978, 337, 60003, 5);
INSERT INTO public.recipes VALUES (979, 417, 70001, 1);


--
-- Name: gamelist_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gamelist_pk_seq', 1, false);


--
-- Name: items_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_pk_seq', 795, true);


--
-- Name: recipes_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_pk_seq', 979, true);


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

