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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 198, 846);
INSERT INTO public.games VALUES (2, 198, 911);
INSERT INTO public.games VALUES (3, 199, 568);
INSERT INTO public.games VALUES (4, 199, 32);
INSERT INTO public.games VALUES (5, 198, 306);
INSERT INTO public.games VALUES (6, 198, 321);
INSERT INTO public.games VALUES (7, 198, 322);
INSERT INTO public.games VALUES (8, 200, 566);
INSERT INTO public.games VALUES (9, 200, 551);
INSERT INTO public.games VALUES (10, 201, 389);
INSERT INTO public.games VALUES (11, 201, 760);
INSERT INTO public.games VALUES (12, 200, 436);
INSERT INTO public.games VALUES (13, 200, 775);
INSERT INTO public.games VALUES (14, 200, 473);
INSERT INTO public.games VALUES (15, 202, 260);
INSERT INTO public.games VALUES (16, 202, 143);
INSERT INTO public.games VALUES (17, 203, 472);
INSERT INTO public.games VALUES (18, 203, 85);
INSERT INTO public.games VALUES (19, 202, 789);
INSERT INTO public.games VALUES (20, 202, 752);
INSERT INTO public.games VALUES (21, 202, 146);
INSERT INTO public.games VALUES (22, 204, 422);
INSERT INTO public.games VALUES (23, 204, 354);
INSERT INTO public.games VALUES (24, 205, 83);
INSERT INTO public.games VALUES (25, 205, 27);
INSERT INTO public.games VALUES (26, 204, 839);
INSERT INTO public.games VALUES (27, 204, 589);
INSERT INTO public.games VALUES (28, 204, 627);
INSERT INTO public.games VALUES (29, 206, 818);
INSERT INTO public.games VALUES (30, 206, 814);
INSERT INTO public.games VALUES (31, 207, 135);
INSERT INTO public.games VALUES (32, 207, 531);
INSERT INTO public.games VALUES (33, 206, 19);
INSERT INTO public.games VALUES (34, 206, 184);
INSERT INTO public.games VALUES (35, 206, 475);
INSERT INTO public.games VALUES (36, 208, 174);
INSERT INTO public.games VALUES (37, 208, 32);
INSERT INTO public.games VALUES (38, 209, 68);
INSERT INTO public.games VALUES (39, 209, 438);
INSERT INTO public.games VALUES (40, 208, 559);
INSERT INTO public.games VALUES (41, 208, 629);
INSERT INTO public.games VALUES (42, 208, 812);
INSERT INTO public.games VALUES (43, 210, 971);
INSERT INTO public.games VALUES (44, 210, 80);
INSERT INTO public.games VALUES (45, 211, 694);
INSERT INTO public.games VALUES (46, 211, 211);
INSERT INTO public.games VALUES (47, 210, 551);
INSERT INTO public.games VALUES (48, 210, 308);
INSERT INTO public.games VALUES (49, 210, 455);
INSERT INTO public.games VALUES (50, 212, 7);
INSERT INTO public.games VALUES (51, 212, 284);
INSERT INTO public.games VALUES (52, 213, 578);
INSERT INTO public.games VALUES (53, 213, 197);
INSERT INTO public.games VALUES (54, 212, 226);
INSERT INTO public.games VALUES (55, 212, 267);
INSERT INTO public.games VALUES (56, 212, 856);
INSERT INTO public.games VALUES (57, 214, 635);
INSERT INTO public.games VALUES (58, 214, 190);
INSERT INTO public.games VALUES (59, 215, 75);
INSERT INTO public.games VALUES (60, 215, 861);
INSERT INTO public.games VALUES (61, 214, 761);
INSERT INTO public.games VALUES (62, 214, 781);
INSERT INTO public.games VALUES (63, 214, 22);
INSERT INTO public.games VALUES (64, 216, 866);
INSERT INTO public.games VALUES (65, 216, 353);
INSERT INTO public.games VALUES (66, 217, 194);
INSERT INTO public.games VALUES (67, 217, 41);
INSERT INTO public.games VALUES (68, 216, 960);
INSERT INTO public.games VALUES (69, 216, 672);
INSERT INTO public.games VALUES (70, 216, 150);
INSERT INTO public.games VALUES (71, 218, 554);
INSERT INTO public.games VALUES (72, 218, 259);
INSERT INTO public.games VALUES (73, 219, 194);
INSERT INTO public.games VALUES (74, 219, 668);
INSERT INTO public.games VALUES (75, 218, 32);
INSERT INTO public.games VALUES (76, 218, 596);
INSERT INTO public.games VALUES (77, 218, 813);
INSERT INTO public.games VALUES (78, 220, 498);
INSERT INTO public.games VALUES (79, 220, 749);
INSERT INTO public.games VALUES (80, 221, 838);
INSERT INTO public.games VALUES (81, 221, 511);
INSERT INTO public.games VALUES (82, 220, 589);
INSERT INTO public.games VALUES (83, 220, 145);
INSERT INTO public.games VALUES (84, 220, 617);
INSERT INTO public.games VALUES (85, 222, 27);
INSERT INTO public.games VALUES (86, 222, 177);
INSERT INTO public.games VALUES (87, 223, 393);
INSERT INTO public.games VALUES (88, 223, 113);
INSERT INTO public.games VALUES (89, 222, 738);
INSERT INTO public.games VALUES (90, 222, 20);
INSERT INTO public.games VALUES (91, 222, 415);
INSERT INTO public.games VALUES (92, 224, 96);
INSERT INTO public.games VALUES (93, 224, 165);
INSERT INTO public.games VALUES (94, 225, 468);
INSERT INTO public.games VALUES (95, 225, 130);
INSERT INTO public.games VALUES (96, 224, 945);
INSERT INTO public.games VALUES (97, 224, 64);
INSERT INTO public.games VALUES (98, 224, 761);
INSERT INTO public.games VALUES (99, 226, 812);
INSERT INTO public.games VALUES (100, 226, 837);
INSERT INTO public.games VALUES (101, 227, 421);
INSERT INTO public.games VALUES (102, 227, 746);
INSERT INTO public.games VALUES (103, 226, 195);
INSERT INTO public.games VALUES (104, 226, 803);
INSERT INTO public.games VALUES (105, 226, 563);
INSERT INTO public.games VALUES (106, 228, 20);
INSERT INTO public.games VALUES (107, 228, 279);
INSERT INTO public.games VALUES (108, 229, 479);
INSERT INTO public.games VALUES (109, 229, 233);
INSERT INTO public.games VALUES (110, 228, 180);
INSERT INTO public.games VALUES (111, 228, 737);
INSERT INTO public.games VALUES (112, 228, 113);
INSERT INTO public.games VALUES (113, 230, 923);
INSERT INTO public.games VALUES (114, 230, 486);
INSERT INTO public.games VALUES (115, 231, 291);
INSERT INTO public.games VALUES (116, 231, 128);
INSERT INTO public.games VALUES (117, 230, 247);
INSERT INTO public.games VALUES (118, 230, 286);
INSERT INTO public.games VALUES (119, 230, 370);
INSERT INTO public.games VALUES (120, 232, 211);
INSERT INTO public.games VALUES (121, 232, 166);
INSERT INTO public.games VALUES (122, 233, 747);
INSERT INTO public.games VALUES (123, 233, 469);
INSERT INTO public.games VALUES (124, 232, 393);
INSERT INTO public.games VALUES (125, 232, 93);
INSERT INTO public.games VALUES (126, 232, 190);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (64, 'ste', 1, 10, 0);
INSERT INTO public.users VALUES (2, 'user_1739129449464', 2, 500, 0);
INSERT INTO public.users VALUES (1, 'user_1739129449465', 5, 44, 0);
INSERT INTO public.users VALUES (18, 'user_1739130614391', 2, 120, 0);
INSERT INTO public.users VALUES (52, 'user_1739132683079', 5, 189, 0);
INSERT INTO public.users VALUES (4, 'user_1739129474536', 2, 776, 0);
INSERT INTO public.users VALUES (17, 'user_1739130614392', 5, 2, 0);
INSERT INTO public.users VALUES (3, 'user_1739129474537', 5, 141, 0);
INSERT INTO public.users VALUES (35, 'user_1739131966470', 2, 747, 0);
INSERT INTO public.users VALUES (6, 'user_1739129616311', 2, 851, 0);
INSERT INTO public.users VALUES (80, 'user_1739133377379', 2, 254, 0);
INSERT INTO public.users VALUES (20, 'user_1739130681998', 2, 389, 0);
INSERT INTO public.users VALUES (5, 'user_1739129616312', 5, 22, 0);
INSERT INTO public.users VALUES (34, 'user_1739131966471', 5, 413, 0);
INSERT INTO public.users VALUES (19, 'user_1739130681999', 5, 403, 0);
INSERT INTO public.users VALUES (8, 'user_1739130043840', 2, 234, 0);
INSERT INTO public.users VALUES (7, 'user_1739130043841', 5, 85, 0);
INSERT INTO public.users VALUES (10, 'user_1739130261373', 2, 583, 0);
INSERT INTO public.users VALUES (22, 'user_1739130715064', 2, 449, 0);
INSERT INTO public.users VALUES (9, 'user_1739130261374', 5, 456, 0);
INSERT INTO public.users VALUES (37, 'user_1739132180960', 2, 591, 0);
INSERT INTO public.users VALUES (21, 'user_1739130715065', 5, 22, 0);
INSERT INTO public.users VALUES (12, 'user_1739130364243', 2, 86, 0);
INSERT INTO public.users VALUES (55, 'user_1739132690025', 2, 647, 0);
INSERT INTO public.users VALUES (87, 'user_1739133406201', 5, 66, 0);
INSERT INTO public.users VALUES (11, 'user_1739130364244', 5, 177, 0);
INSERT INTO public.users VALUES (36, 'user_1739132180961', 5, 262, 0);
INSERT INTO public.users VALUES (24, 'user_1739130724721', 2, 179, 0);
INSERT INTO public.users VALUES (14, 'user_1739130430670', 2, 110, 0);
INSERT INTO public.users VALUES (70, 'user_1739132936048', 2, 386, 0);
INSERT INTO public.users VALUES (13, 'user_1739130430671', 5, 163, 0);
INSERT INTO public.users VALUES (23, 'user_1739130724722', 5, 38, 0);
INSERT INTO public.users VALUES (54, 'user_1739132690026', 5, 128, 0);
INSERT INTO public.users VALUES (16, 'user_1739130581659', 2, 135, 0);
INSERT INTO public.users VALUES (15, 'user_1739130581660', 5, 99, 0);
INSERT INTO public.users VALUES (26, 'user_1739130731541', 2, 124, 0);
INSERT INTO public.users VALUES (39, 'user_1739132271491', 2, 653, 0);
INSERT INTO public.users VALUES (79, 'user_1739133377380', 5, 4, 0);
INSERT INTO public.users VALUES (25, 'user_1739130731542', 5, 360, 0);
INSERT INTO public.users VALUES (38, 'user_1739132271492', 5, 304, 0);
INSERT INTO public.users VALUES (28, 'user_1739130833328', 2, 931, 0);
INSERT INTO public.users VALUES (69, 'user_1739132936049', 5, 326, 0);
INSERT INTO public.users VALUES (27, 'user_1739130833329', 5, 352, 0);
INSERT INTO public.users VALUES (57, 'user_1739132699483', 2, 809, 0);
INSERT INTO public.users VALUES (41, 'user_1739132378399', 2, 751, 0);
INSERT INTO public.users VALUES (31, 'user_1739131263203', 2, 683, 0);
INSERT INTO public.users VALUES (56, 'user_1739132699484', 5, 87, 0);
INSERT INTO public.users VALUES (30, 'user_1739131263204', 5, 88, 0);
INSERT INTO public.users VALUES (40, 'user_1739132378400', 5, 75, 0);
INSERT INTO public.users VALUES (33, 'user_1739131790221', 2, 314, 0);
INSERT INTO public.users VALUES (100, 'user_1739133655796', 2, 100, 0);
INSERT INTO public.users VALUES (32, 'user_1739131790222', 5, 357, 0);
INSERT INTO public.users VALUES (43, 'user_1739132431627', 2, 935, 0);
INSERT INTO public.users VALUES (42, 'user_1739132431628', 5, 24, 0);
INSERT INTO public.users VALUES (59, 'user_1739132712322', 2, 230, 0);
INSERT INTO public.users VALUES (72, 'user_1739132944164', 2, 63, 0);
INSERT INTO public.users VALUES (107, 'user_1739134086060', 5, 32, 0);
INSERT INTO public.users VALUES (45, 'user_1739132436990', 2, 429, 0);
INSERT INTO public.users VALUES (58, 'user_1739132712323', 5, 75, 0);
INSERT INTO public.users VALUES (44, 'user_1739132436991', 5, 240, 0);
INSERT INTO public.users VALUES (82, 'user_1739133387094', 2, 384, 0);
INSERT INTO public.users VALUES (71, 'user_1739132944165', 5, 40, 0);
INSERT INTO public.users VALUES (47, 'user_1739132468262', 2, 495, 0);
INSERT INTO public.users VALUES (61, 'user_1739132775527', 2, 169, 0);
INSERT INTO public.users VALUES (46, 'user_1739132468263', 5, 147, 0);
INSERT INTO public.users VALUES (60, 'user_1739132775528', 5, 19, 0);
INSERT INTO public.users VALUES (49, 'user_1739132596877', 2, 189, 0);
INSERT INTO public.users VALUES (48, 'user_1739132596878', 5, 215, 0);
INSERT INTO public.users VALUES (105, 'user_1739134079613', 5, 35, 0);
INSERT INTO public.users VALUES (81, 'user_1739133387095', 5, 52, 0);
INSERT INTO public.users VALUES (74, 'user_1739133206352', 2, 440, 0);
INSERT INTO public.users VALUES (51, 'user_1739132673992', 2, 590, 0);
INSERT INTO public.users VALUES (63, 'user_1739132782660', 2, 246, 0);
INSERT INTO public.users VALUES (50, 'user_1739132673993', 5, 17, 0);
INSERT INTO public.users VALUES (90, 'user_1739133484145', 2, 323, 0);
INSERT INTO public.users VALUES (73, 'user_1739133206353', 5, 336, 0);
INSERT INTO public.users VALUES (62, 'user_1739132782661', 5, 259, 0);
INSERT INTO public.users VALUES (53, 'user_1739132683078', 2, 246, 0);
INSERT INTO public.users VALUES (104, 'user_1739134039474', 2, 946, 0);
INSERT INTO public.users VALUES (66, 'user_1739132836886', 2, 451, 0);
INSERT INTO public.users VALUES (96, 'user_1739133535043', 2, 729, 0);
INSERT INTO public.users VALUES (65, 'user_1739132836887', 5, 471, 0);
INSERT INTO public.users VALUES (76, 'user_1739133244253', 2, 148, 0);
INSERT INTO public.users VALUES (84, 'user_1739133393929', 2, 307, 0);
INSERT INTO public.users VALUES (89, 'user_1739133484146', 5, 103, 0);
INSERT INTO public.users VALUES (68, 'user_1739132844467', 2, 88, 0);
INSERT INTO public.users VALUES (75, 'user_1739133244254', 5, 16, 0);
INSERT INTO public.users VALUES (67, 'user_1739132844468', 5, 34, 0);
INSERT INTO public.users VALUES (83, 'user_1739133393930', 5, 261, 0);
INSERT INTO public.users VALUES (78, 'user_1739133264787', 2, 52, 0);
INSERT INTO public.users VALUES (99, 'user_1739133655797', 5, 8, 0);
INSERT INTO public.users VALUES (77, 'user_1739133264788', 5, 184, 0);
INSERT INTO public.users VALUES (95, 'user_1739133535044', 5, 12, 0);
INSERT INTO public.users VALUES (92, 'user_1739133509221', 2, 309, 0);
INSERT INTO public.users VALUES (86, 'user_1739133399695', 2, 34, 0);
INSERT INTO public.users VALUES (85, 'user_1739133399696', 5, 405, 0);
INSERT INTO public.users VALUES (91, 'user_1739133509222', 5, 161, 0);
INSERT INTO public.users VALUES (88, 'user_1739133406200', 2, 160, 0);
INSERT INTO public.users VALUES (98, 'user_1739133552618', 2, 24, 0);
INSERT INTO public.users VALUES (94, 'user_1739133519532', 2, 304, 0);
INSERT INTO public.users VALUES (103, 'user_1739134039475', 5, 265, 0);
INSERT INTO public.users VALUES (102, 'user_1739134022032', 2, 620, 0);
INSERT INTO public.users VALUES (93, 'user_1739133519533', 5, 84, 0);
INSERT INTO public.users VALUES (97, 'user_1739133552619', 5, 250, 0);
INSERT INTO public.users VALUES (29, 'Stefan', 3, 12, 0);
INSERT INTO public.users VALUES (114, 'user_1739134420075', 1, 627, 0);
INSERT INTO public.users VALUES (101, 'user_1739134022033', 5, 82, 0);
INSERT INTO public.users VALUES (109, 'user_1739134091916', 5, 217, 0);
INSERT INTO public.users VALUES (108, 'user_1739134086059', 2, 287, 0);
INSERT INTO public.users VALUES (106, 'user_1739134079612', 2, 973, 0);
INSERT INTO public.users VALUES (111, 'stefan', 1, 11, 0);
INSERT INTO public.users VALUES (110, 'user_1739134091915', 2, 117, 0);
INSERT INTO public.users VALUES (121, 'user_1739134465153', 1, 274, 0);
INSERT INTO public.users VALUES (113, 'user_1739134292603', 2, 159, 0);
INSERT INTO public.users VALUES (112, 'user_1739134292604', 5, 22, 0);
INSERT INTO public.users VALUES (116, 'user_1739134420074', 1, 795, 0);
INSERT INTO public.users VALUES (123, 'user_1739134465152', 1, 587, 0);
INSERT INTO public.users VALUES (128, 'user_1739134500035', 1, 118, 0);
INSERT INTO public.users VALUES (135, 'user_1739134529680', 1, 107, 0);
INSERT INTO public.users VALUES (130, 'user_1739134500034', 1, 620, 0);
INSERT INTO public.users VALUES (137, 'user_1739134529679', 1, 90, 0);
INSERT INTO public.users VALUES (142, 'user_1739134714788', 1, 433, 0);
INSERT INTO public.users VALUES (144, 'user_1739134714787', 1, 272, 0);
INSERT INTO public.users VALUES (149, 'user_1739134740668', 1, 266, 0);
INSERT INTO public.users VALUES (151, 'user_1739134740667', 1, 789, 0);
INSERT INTO public.users VALUES (232, 'user_1739140183355', 5, 93, 0);
INSERT INTO public.users VALUES (179, 'user_1739135363431', 1, NULL, 0);
INSERT INTO public.users VALUES (177, 'user_1739135363432', 1, NULL, 0);
INSERT INTO public.users VALUES (158, 'user_1739134748695', 1, 475, 0);
INSERT INTO public.users VALUES (223, 'user_1739139930584', 2, 113, 0);
INSERT INTO public.users VALUES (186, 'user_1739135498210', 1, NULL, 0);
INSERT INTO public.users VALUES (156, 'user_1739134748696', 1, 747, 0);
INSERT INTO public.users VALUES (184, 'user_1739135498211', 1, NULL, 0);
INSERT INTO public.users VALUES (165, 'user_1739135082067', 1, 60, 0);
INSERT INTO public.users VALUES (222, 'user_1739139930585', 5, 20, 0);
INSERT INTO public.users VALUES (193, 'user_1739135532356', 1, NULL, 0);
INSERT INTO public.users VALUES (163, 'user_1739135082068', 1, 553, 0);
INSERT INTO public.users VALUES (191, 'user_1739135532357', 1, NULL, 0);
INSERT INTO public.users VALUES (198, 'user_1739137562648', 0, NULL, 0);
INSERT INTO public.users VALUES (199, 'user_1739137562647', 0, NULL, 0);
INSERT INTO public.users VALUES (172, 'user_1739135259058', 1, NULL, 0);
INSERT INTO public.users VALUES (200, 'user_1739137620010', 0, NULL, 0);
INSERT INTO public.users VALUES (201, 'user_1739137620009', 0, NULL, 0);
INSERT INTO public.users VALUES (202, 'user_1739137737311', 0, NULL, 0);
INSERT INTO public.users VALUES (203, 'user_1739137737310', 0, NULL, 0);
INSERT INTO public.users VALUES (204, 'user_1739137983213', 0, NULL, 0);
INSERT INTO public.users VALUES (170, 'user_1739135259059', 1, NULL, 0);
INSERT INTO public.users VALUES (205, 'user_1739137983212', 0, NULL, 0);
INSERT INTO public.users VALUES (206, 'user_1739138668786', 0, NULL, 0);
INSERT INTO public.users VALUES (207, 'user_1739138668785', 0, NULL, 0);
INSERT INTO public.users VALUES (208, 'user_1739138682342', 0, NULL, 0);
INSERT INTO public.users VALUES (209, 'user_1739138682341', 0, NULL, 0);
INSERT INTO public.users VALUES (210, 'user_1739139442386', 0, NULL, 0);
INSERT INTO public.users VALUES (211, 'user_1739139442385', 0, NULL, 0);
INSERT INTO public.users VALUES (212, 'user_1739139541971', 0, NULL, 0);
INSERT INTO public.users VALUES (213, 'user_1739139541970', 0, NULL, 0);
INSERT INTO public.users VALUES (225, 'user_1739140008821', 2, 130, 0);
INSERT INTO public.users VALUES (215, 'user_1739139624290', 2, 75, 0);
INSERT INTO public.users VALUES (214, 'user_1739139624291', 5, 22, 0);
INSERT INTO public.users VALUES (224, 'user_1739140008822', 5, 64, 0);
INSERT INTO public.users VALUES (217, 'user_1739139691206', 2, 41, 0);
INSERT INTO public.users VALUES (227, 'user_1739140058217', 2, 421, 0);
INSERT INTO public.users VALUES (216, 'user_1739139691207', 5, 150, 0);
INSERT INTO public.users VALUES (226, 'user_1739140058218', 5, 195, 0);
INSERT INTO public.users VALUES (219, 'user_1739139857245', 2, 194, 0);
INSERT INTO public.users VALUES (218, 'user_1739139857246', 5, 32, 0);
INSERT INTO public.users VALUES (229, 'user_1739140084668', 2, 233, 0);
INSERT INTO public.users VALUES (228, 'user_1739140084669', 5, 20, 0);
INSERT INTO public.users VALUES (221, 'user_1739139915577', 2, 511, 0);
INSERT INTO public.users VALUES (220, 'user_1739139915578', 5, 145, 0);
INSERT INTO public.users VALUES (231, 'user_1739140120041', 2, 128, 0);
INSERT INTO public.users VALUES (230, 'user_1739140120042', 5, 247, 0);
INSERT INTO public.users VALUES (233, 'user_1739140183354', 2, 469, 0);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 126, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 233, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

