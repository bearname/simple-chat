--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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
-- Name: chat; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE chat WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE chat OWNER TO postgres;

\connect chat

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

SET default_with_oids = false;

--
-- Name: application_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.application_user (
    id bigint NOT NULL,
    password character varying(255),
    username character varying(255)
);


ALTER TABLE public.application_user OWNER TO postgres;

--
-- Name: chat_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chat_group (
    id bigint NOT NULL,
    image character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.chat_group OWNER TO postgres;

--
-- Name: chat_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chat_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_group_id_seq OWNER TO postgres;

--
-- Name: chat_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chat_group_id_seq OWNED BY public.chat_group.id;


--
-- Name: comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment (
    id bigint NOT NULL,
    text text,
    message_id bigint NOT NULL,
    user_id character varying(255) NOT NULL
);


ALTER TABLE public.comment OWNER TO postgres;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO postgres;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO postgres;

--
-- Name: message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.message (
    id bigint NOT NULL,
    creation_date timestamp without time zone,
    text character varying(255),
    user_id character varying(255),
    link character varying(255),
    link_cover character varying(255),
    link_description character varying(255),
    link_title character varying(255)
);


ALTER TABLE public.message OWNER TO postgres;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    text_message character varying(255)
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: schema_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_version (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE public.schema_version OWNER TO postgres;

--
-- Name: spring_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spring_session (
    primary_id character(36) NOT NULL,
    session_id character(36) NOT NULL,
    creation_time bigint NOT NULL,
    last_access_time bigint NOT NULL,
    max_inactive_interval integer NOT NULL,
    expiry_time bigint NOT NULL,
    principal_name character varying(300)
);


ALTER TABLE public.spring_session OWNER TO postgres;

--
-- Name: spring_session_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spring_session_attributes (
    session_primary_id character(36) NOT NULL,
    attribute_name character varying(200) NOT NULL,
    attribute_bytes bytea NOT NULL
);


ALTER TABLE public.spring_session_attributes OWNER TO postgres;

--
-- Name: user_subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_subscription (
    subscriber_id character varying(255) NOT NULL,
    channel_id character varying(255) NOT NULL,
    active boolean
);


ALTER TABLE public.user_subscription OWNER TO postgres;

--
-- Name: usr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usr (
    id character varying(255) NOT NULL,
    email character varying(255),
    gender character varying(255),
    last_visit timestamp without time zone,
    locale character varying(255),
    name character varying(255),
    userpic character varying(255)
);


ALTER TABLE public.usr OWNER TO postgres;

--
-- Name: chat_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chat_group ALTER COLUMN id SET DEFAULT nextval('public.chat_group_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Data for Name: application_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.application_user (id, password, username) VALUES (1, '123', 'MikhailSecond2279');
INSERT INTO public.application_user (id, password, username) VALUES (2, '123', 'MikhailSecond5569');
INSERT INTO public.application_user (id, password, username) VALUES (7, '123', 'MikhailSecond8225');
INSERT INTO public.application_user (id, password, username) VALUES (8, '123', 'MikhailSecond7383');
INSERT INTO public.application_user (id, password, username) VALUES (9, '123', 'MikhailSecond4815');
INSERT INTO public.application_user (id, password, username) VALUES (10, '123', 'MikhailSecond3455');
INSERT INTO public.application_user (id, password, username) VALUES (11, '123', 'MikhailSecond5766');
INSERT INTO public.application_user (id, password, username) VALUES (12, '123', 'MikhailSecond8518');
INSERT INTO public.application_user (id, password, username) VALUES (13, '123', 'MikhailSecond2031');
INSERT INTO public.application_user (id, password, username) VALUES (14, '123', 'MikhailSecond6576');
INSERT INTO public.application_user (id, password, username) VALUES (15, '123', 'MikhailSecond1995');
INSERT INTO public.application_user (id, password, username) VALUES (16, '123', 'MikhailSecond4794');
INSERT INTO public.application_user (id, password, username) VALUES (17, '123', 'MikhailSecond3020');
INSERT INTO public.application_user (id, password, username) VALUES (18, '123', 'MikhailSecond6979');
INSERT INTO public.application_user (id, password, username) VALUES (19, '123', 'MikhailSecond112');
INSERT INTO public.application_user (id, password, username) VALUES (20, '123', 'MikhailSecond5419');
INSERT INTO public.application_user (id, password, username) VALUES (21, '123', 'MikhailSecond200');
INSERT INTO public.application_user (id, password, username) VALUES (22, '123', 'MikhailSecond9727');
INSERT INTO public.application_user (id, password, username) VALUES (23, '123', 'MikhailSecond798');
INSERT INTO public.application_user (id, password, username) VALUES (24, '123', 'MikhailSecond7834');
INSERT INTO public.application_user (id, password, username) VALUES (29, '123', 'MikhailSecond2457');
INSERT INTO public.application_user (id, password, username) VALUES (31, '123', 'MikhailSecond7629');
INSERT INTO public.application_user (id, password, username) VALUES (32, '123', 'MikhailSecond9996');
INSERT INTO public.application_user (id, password, username) VALUES (38, '123', 'MikhailSecond2599');
INSERT INTO public.application_user (id, password, username) VALUES (39, '123', 'MikhailSecond4366');
INSERT INTO public.application_user (id, password, username) VALUES (40, '123', 'MikhailSecond6079');
INSERT INTO public.application_user (id, password, username) VALUES (41, '123', 'MikhailSecond6660');
INSERT INTO public.application_user (id, password, username) VALUES (42, '123', 'MikhailSecond6688');
INSERT INTO public.application_user (id, password, username) VALUES (45, '123', 'MikhailSecond9923');
INSERT INTO public.application_user (id, password, username) VALUES (46, '123', 'MikhailSecond1529');
INSERT INTO public.application_user (id, password, username) VALUES (47, '123', 'MikhailSecond6843');
INSERT INTO public.application_user (id, password, username) VALUES (48, '123', 'MikhailSecond4312');
INSERT INTO public.application_user (id, password, username) VALUES (50, '123', 'MikhailSecond7897');
INSERT INTO public.application_user (id, password, username) VALUES (60, '123', 'MikhailSecond9841');
INSERT INTO public.application_user (id, password, username) VALUES (62, '123', 'MikhailSecond8558');
INSERT INTO public.application_user (id, password, username) VALUES (63, '123', 'MikhailSecond4162');
INSERT INTO public.application_user (id, password, username) VALUES (65, '123', 'MikhailSecond7900');
INSERT INTO public.application_user (id, password, username) VALUES (69, '123', 'MikhailSecond3396');
INSERT INTO public.application_user (id, password, username) VALUES (70, '123', 'MikhailSecond787');
INSERT INTO public.application_user (id, password, username) VALUES (71, '123', 'MikhailSecond1906');
INSERT INTO public.application_user (id, password, username) VALUES (79, '123', 'MikhailSecond1257');
INSERT INTO public.application_user (id, password, username) VALUES (80, '123', 'MikhailSecond7030');
INSERT INTO public.application_user (id, password, username) VALUES (81, '123', 'MikhailSecond5594');
INSERT INTO public.application_user (id, password, username) VALUES (82, '123', 'MikhailSecond992');
INSERT INTO public.application_user (id, password, username) VALUES (84, '123', 'MikhailSecond56');
INSERT INTO public.application_user (id, password, username) VALUES (85, '123', 'MikhailSecond3041');
INSERT INTO public.application_user (id, password, username) VALUES (86, '123', 'MikhailSecond2181');
INSERT INTO public.application_user (id, password, username) VALUES (87, '123', 'MikhailSecond3339');
INSERT INTO public.application_user (id, password, username) VALUES (88, '123', 'MikhailSecond1797');
INSERT INTO public.application_user (id, password, username) VALUES (89, '123', 'MikhailSecond6281');
INSERT INTO public.application_user (id, password, username) VALUES (90, '123', 'MikhailSecond8840');
INSERT INTO public.application_user (id, password, username) VALUES (91, '123', 'MikhailSecond5412');
INSERT INTO public.application_user (id, password, username) VALUES (94, '123', 'MikhailSecond3482');
INSERT INTO public.application_user (id, password, username) VALUES (95, '123', 'MikhailSecond7028');
INSERT INTO public.application_user (id, password, username) VALUES (99, '123', 'MikhailSecond4890');
INSERT INTO public.application_user (id, password, username) VALUES (104, '123', 'MikhailSecond5069');
INSERT INTO public.application_user (id, password, username) VALUES (109, '123', 'MikhailSecond6230');
INSERT INTO public.application_user (id, password, username) VALUES (110, '123', 'MikhailSecond3459');
INSERT INTO public.application_user (id, password, username) VALUES (111, '123', 'MikhailSecond8942');
INSERT INTO public.application_user (id, password, username) VALUES (112, '123', 'MikhailSecond627');
INSERT INTO public.application_user (id, password, username) VALUES (113, '123', 'MikhailSecond610');
INSERT INTO public.application_user (id, password, username) VALUES (114, '123', 'MikhailSecond7183');
INSERT INTO public.application_user (id, password, username) VALUES (144, '123', 'MikhailSecond2611');
INSERT INTO public.application_user (id, password, username) VALUES (145, '123', 'MikhailSecond3225');
INSERT INTO public.application_user (id, password, username) VALUES (146, '123', 'MikhailSecond9633');
INSERT INTO public.application_user (id, password, username) VALUES (149, '123', 'MikhailSecond4003');
INSERT INTO public.application_user (id, password, username) VALUES (152, '123', 'MikhailSecond7113');
INSERT INTO public.application_user (id, password, username) VALUES (153, '123', 'MikhailSecond3798');
INSERT INTO public.application_user (id, password, username) VALUES (154, '123', 'MikhailSecond8589');
INSERT INTO public.application_user (id, password, username) VALUES (155, '123', 'MikhailSecond6988');
INSERT INTO public.application_user (id, password, username) VALUES (156, '123', 'MikhailSecond1202');
INSERT INTO public.application_user (id, password, username) VALUES (157, '123', 'MikhailSecond860');
INSERT INTO public.application_user (id, password, username) VALUES (159, '123', 'MikhailSecond9925');
INSERT INTO public.application_user (id, password, username) VALUES (168, '123', 'MikhailSecond9319');
INSERT INTO public.application_user (id, password, username) VALUES (193, '123', 'MikhailSecond3241');
INSERT INTO public.application_user (id, password, username) VALUES (194, '123', 'MikhailSecond2964');
INSERT INTO public.application_user (id, password, username) VALUES (195, '123', 'MikhailSecond9760');
INSERT INTO public.application_user (id, password, username) VALUES (196, '123', 'MikhailSecond5656');
INSERT INTO public.application_user (id, password, username) VALUES (226, '123', 'MikhailSecond6292');
INSERT INTO public.application_user (id, password, username) VALUES (234, '123', 'MikhailSecond4658');
INSERT INTO public.application_user (id, password, username) VALUES (253, '123', 'MikhailSecond7634');
INSERT INTO public.application_user (id, password, username) VALUES (254, '123', 'MikhailSecond7994');
INSERT INTO public.application_user (id, password, username) VALUES (266, '123', 'MikhailSecond213');
INSERT INTO public.application_user (id, password, username) VALUES (267, '123', 'MikhailSecond896');
INSERT INTO public.application_user (id, password, username) VALUES (268, '123', 'MikhailSecond1718');
INSERT INTO public.application_user (id, password, username) VALUES (269, '123', 'MikhailSecond5865');
INSERT INTO public.application_user (id, password, username) VALUES (270, '123', 'MikhailSecond9731');
INSERT INTO public.application_user (id, password, username) VALUES (271, '123', 'MikhailSecond3227');
INSERT INTO public.application_user (id, password, username) VALUES (272, '123', 'MikhailSecond5406');
INSERT INTO public.application_user (id, password, username) VALUES (273, '123', 'MikhailSecond1778');
INSERT INTO public.application_user (id, password, username) VALUES (274, '123', 'MikhailSecond4246');
INSERT INTO public.application_user (id, password, username) VALUES (275, '123', 'MikhailSecond1429');
INSERT INTO public.application_user (id, password, username) VALUES (278, '123', 'MikhailSecond6049');
INSERT INTO public.application_user (id, password, username) VALUES (279, '123', 'MikhailSecond7160');
INSERT INTO public.application_user (id, password, username) VALUES (283, '123', 'MikhailSecond3892');
INSERT INTO public.application_user (id, password, username) VALUES (285, '123', 'MikhailSecond4563');
INSERT INTO public.application_user (id, password, username) VALUES (286, '123', 'MikhailSecond1112');
INSERT INTO public.application_user (id, password, username) VALUES (292, '123', 'MikhailSecond2132');
INSERT INTO public.application_user (id, password, username) VALUES (293, '123', 'MikhailSecond4332');
INSERT INTO public.application_user (id, password, username) VALUES (294, '123', 'MikhailSecond6008');
INSERT INTO public.application_user (id, password, username) VALUES (296, '123', 'MikhailSecond605');
INSERT INTO public.application_user (id, password, username) VALUES (298, '123', 'MikhailSecond8122');
INSERT INTO public.application_user (id, password, username) VALUES (300, '123', 'MikhailSecond2501');
INSERT INTO public.application_user (id, password, username) VALUES (301, '123', 'MikhailSecond7239');
INSERT INTO public.application_user (id, password, username) VALUES (302, '123', 'MikhailSecond7576');
INSERT INTO public.application_user (id, password, username) VALUES (303, '123', 'MikhailSecond6556');
INSERT INTO public.application_user (id, password, username) VALUES (304, '123', 'MikhailSecond3132');
INSERT INTO public.application_user (id, password, username) VALUES (305, '123', 'MikhailSecond2210');
INSERT INTO public.application_user (id, password, username) VALUES (306, '123', 'MikhailSecond9564');
INSERT INTO public.application_user (id, password, username) VALUES (307, '123', 'MikhailSecond7114');
INSERT INTO public.application_user (id, password, username) VALUES (308, '123', 'MikhailSecond7311');
INSERT INTO public.application_user (id, password, username) VALUES (309, '123', 'MikhailSecond6673');
INSERT INTO public.application_user (id, password, username) VALUES (310, '123', 'MikhailSecond9275');
INSERT INTO public.application_user (id, password, username) VALUES (311, '123', 'MikhailSecond3461');
INSERT INTO public.application_user (id, password, username) VALUES (312, '123', 'MikhailSecond8274');
INSERT INTO public.application_user (id, password, username) VALUES (313, '123', 'MikhailSecond3392');
INSERT INTO public.application_user (id, password, username) VALUES (314, '123', 'MikhailSecond9002');
INSERT INTO public.application_user (id, password, username) VALUES (315, '123', 'MikhailSecond9890');
INSERT INTO public.application_user (id, password, username) VALUES (316, '123', 'MikhailSecond5698');
INSERT INTO public.application_user (id, password, username) VALUES (317, '123', 'MikhailSecond9757');
INSERT INTO public.application_user (id, password, username) VALUES (318, '123', 'MikhailSecond222');
INSERT INTO public.application_user (id, password, username) VALUES (319, '123', 'MikhailSecond5749');
INSERT INTO public.application_user (id, password, username) VALUES (320, '123', 'MikhailSecond5100');
INSERT INTO public.application_user (id, password, username) VALUES (321, '123', 'MikhailSecond9750');
INSERT INTO public.application_user (id, password, username) VALUES (322, '123', 'MikhailSecond4064');
INSERT INTO public.application_user (id, password, username) VALUES (323, '123', 'MikhailSecond78');
INSERT INTO public.application_user (id, password, username) VALUES (324, '123', 'MikhailSecond2133');
INSERT INTO public.application_user (id, password, username) VALUES (325, '123', 'MikhailSecond5852');
INSERT INTO public.application_user (id, password, username) VALUES (326, '123', 'MikhailSecond7228');
INSERT INTO public.application_user (id, password, username) VALUES (327, '123', 'MikhailSecond9475');
INSERT INTO public.application_user (id, password, username) VALUES (328, '123', 'MikhailSecond6633');


--
-- Data for Name: chat_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.chat_group (id, image, name) VALUES (1, '/asd', 'ps-318970');
INSERT INTO public.chat_group (id, image, name) VALUES (2, '/asd', 'ps-318614');
INSERT INTO public.chat_group (id, image, name) VALUES (3, '/asd', 'ps-311172');
INSERT INTO public.chat_group (id, image, name) VALUES (4, '/asd', 'ps-318150');
INSERT INTO public.chat_group (id, image, name) VALUES (5, '/asd', 'ps-311543');
INSERT INTO public.chat_group (id, image, name) VALUES (6, '/asd', 'ps-312555');
INSERT INTO public.chat_group (id, image, name) VALUES (7, '/asd', 'ps-316747');
INSERT INTO public.chat_group (id, image, name) VALUES (8, '/asd', 'ps-315212');
INSERT INTO public.chat_group (id, image, name) VALUES (9, '/asd', 'ps-315820');
INSERT INTO public.chat_group (id, image, name) VALUES (10, '/asd', 'ps-313401');
INSERT INTO public.chat_group (id, image, name) VALUES (11, '/asd', 'ps-319198');
INSERT INTO public.chat_group (id, image, name) VALUES (12, '/asd', 'ps-317593');
INSERT INTO public.chat_group (id, image, name) VALUES (13, '/asd', 'ps-319920');
INSERT INTO public.chat_group (id, image, name) VALUES (14, '/asd', 'ps-318626');
INSERT INTO public.chat_group (id, image, name) VALUES (15, '/asd', 'ps-311841');
INSERT INTO public.chat_group (id, image, name) VALUES (16, '/asd', 'ps-313657');
INSERT INTO public.chat_group (id, image, name) VALUES (17, '/asd', 'ps-316967');
INSERT INTO public.chat_group (id, image, name) VALUES (18, '/asd', 'ps-314311');
INSERT INTO public.chat_group (id, image, name) VALUES (19, '/asd', 'ps-313348');
INSERT INTO public.chat_group (id, image, name) VALUES (20, '/asd', 'ps-311345');
INSERT INTO public.chat_group (id, image, name) VALUES (21, '/asd', 'ps-315650');
INSERT INTO public.chat_group (id, image, name) VALUES (22, '/asd', 'ps-312459');
INSERT INTO public.chat_group (id, image, name) VALUES (23, '/asd', 'ps-318643');
INSERT INTO public.chat_group (id, image, name) VALUES (24, '/asd', 'ps-314669');
INSERT INTO public.chat_group (id, image, name) VALUES (25, '/asd', 'ps-317157');
INSERT INTO public.chat_group (id, image, name) VALUES (26, '/asd', 'ps-316221');
INSERT INTO public.chat_group (id, image, name) VALUES (27, '/asd', 'ps-316454');
INSERT INTO public.chat_group (id, image, name) VALUES (28, '/asd', 'ps-316666');
INSERT INTO public.chat_group (id, image, name) VALUES (29, '/asd', 'ps-312266');
INSERT INTO public.chat_group (id, image, name) VALUES (30, '/asd', 'ps-3147');
INSERT INTO public.chat_group (id, image, name) VALUES (31, '/asd', 'ps-315301');
INSERT INTO public.chat_group (id, image, name) VALUES (32, '/asd', 'ps-31540');
INSERT INTO public.chat_group (id, image, name) VALUES (33, '/asd', 'ps-319620');
INSERT INTO public.chat_group (id, image, name) VALUES (34, '/asd', 'ps-319497');
INSERT INTO public.chat_group (id, image, name) VALUES (35, '/asd', 'ps-312293');
INSERT INTO public.chat_group (id, image, name) VALUES (36, '/asd', 'ps-318465');
INSERT INTO public.chat_group (id, image, name) VALUES (37, '/asd', 'ps-316035');
INSERT INTO public.chat_group (id, image, name) VALUES (38, '/asd', 'ps-316531');
INSERT INTO public.chat_group (id, image, name) VALUES (39, '/asd', 'ps-316531');
INSERT INTO public.chat_group (id, image, name) VALUES (40, '/asd', 'ps-313824');
INSERT INTO public.chat_group (id, image, name) VALUES (41, '/asd', 'ps-311578');
INSERT INTO public.chat_group (id, image, name) VALUES (42, '/asd', 'ps-319759');
INSERT INTO public.chat_group (id, image, name) VALUES (43, '/asd', 'ps-314548');
INSERT INTO public.chat_group (id, image, name) VALUES (44, '/asd', 'ps-316254');
INSERT INTO public.chat_group (id, image, name) VALUES (45, '/asd', 'ps-312279');
INSERT INTO public.chat_group (id, image, name) VALUES (46, '/asd', 'ps-318880');
INSERT INTO public.chat_group (id, image, name) VALUES (47, '/asd', 'ps-316574');
INSERT INTO public.chat_group (id, image, name) VALUES (48, '/asd', 'ps-316268');
INSERT INTO public.chat_group (id, image, name) VALUES (49, '/asd', 'ps-311295');
INSERT INTO public.chat_group (id, image, name) VALUES (50, '/asd', 'ps-31794');
INSERT INTO public.chat_group (id, image, name) VALUES (51, '/asd', 'ps-312494');
INSERT INTO public.chat_group (id, image, name) VALUES (52, '/asd', 'ps-314475');
INSERT INTO public.chat_group (id, image, name) VALUES (53, '/asd', 'ps-316213');
INSERT INTO public.chat_group (id, image, name) VALUES (54, '/asd', 'ps-315617');
INSERT INTO public.chat_group (id, image, name) VALUES (55, '/asd', 'ps-317820');
INSERT INTO public.chat_group (id, image, name) VALUES (56, '/asd', 'ps-311589');
INSERT INTO public.chat_group (id, image, name) VALUES (57, '/asd', 'ps-319018');
INSERT INTO public.chat_group (id, image, name) VALUES (58, '/asd', 'ps-319304');
INSERT INTO public.chat_group (id, image, name) VALUES (59, '/asd', 'ps-316733');
INSERT INTO public.chat_group (id, image, name) VALUES (60, '/asd', 'ps-316691');
INSERT INTO public.chat_group (id, image, name) VALUES (61, '/asd', 'ps-312881');
INSERT INTO public.chat_group (id, image, name) VALUES (62, '/asd', 'ps-315168');
INSERT INTO public.chat_group (id, image, name) VALUES (63, '/asd', 'ps-311991');
INSERT INTO public.chat_group (id, image, name) VALUES (64, '/asd', 'ps-317446');
INSERT INTO public.chat_group (id, image, name) VALUES (65, '/asd', 'ps-319527');
INSERT INTO public.chat_group (id, image, name) VALUES (66, '/asd', 'ps-318433');
INSERT INTO public.chat_group (id, image, name) VALUES (67, '/asd', 'ps-319760');
INSERT INTO public.chat_group (id, image, name) VALUES (68, '/asd', 'ps-31285');
INSERT INTO public.chat_group (id, image, name) VALUES (69, '/asd', 'ps-318331');
INSERT INTO public.chat_group (id, image, name) VALUES (70, '/asd', 'ps-316969');
INSERT INTO public.chat_group (id, image, name) VALUES (71, '/asd', 'ps-313213');
INSERT INTO public.chat_group (id, image, name) VALUES (72, '/asd', 'ps-318761');
INSERT INTO public.chat_group (id, image, name) VALUES (73, '/asd', 'ps-315012');
INSERT INTO public.chat_group (id, image, name) VALUES (74, '/asd', 'ps-315941');
INSERT INTO public.chat_group (id, image, name) VALUES (75, '/asd', 'ps-318857');
INSERT INTO public.chat_group (id, image, name) VALUES (76, '/asd', 'ps-312153');
INSERT INTO public.chat_group (id, image, name) VALUES (77, '/asd', 'ps-316763');
INSERT INTO public.chat_group (id, image, name) VALUES (78, '/asd', 'ps-317215');
INSERT INTO public.chat_group (id, image, name) VALUES (79, '/asd', 'ps-318667');
INSERT INTO public.chat_group (id, image, name) VALUES (80, '/asd', 'ps-316969');
INSERT INTO public.chat_group (id, image, name) VALUES (81, '/asd', 'ps-313051');
INSERT INTO public.chat_group (id, image, name) VALUES (82, '/asd', 'ps-312739');
INSERT INTO public.chat_group (id, image, name) VALUES (83, '/asd', 'ps-315544');
INSERT INTO public.chat_group (id, image, name) VALUES (84, '/asd', 'ps-313164');
INSERT INTO public.chat_group (id, image, name) VALUES (85, '/asd', 'ps-311211');
INSERT INTO public.chat_group (id, image, name) VALUES (86, '/asd', 'ps-316460');
INSERT INTO public.chat_group (id, image, name) VALUES (87, '/asd', 'ps-312698');
INSERT INTO public.chat_group (id, image, name) VALUES (88, '/asd', 'ps-314684');
INSERT INTO public.chat_group (id, image, name) VALUES (89, '/asd', 'ps-317137');
INSERT INTO public.chat_group (id, image, name) VALUES (90, '/asd', 'ps-315424');
INSERT INTO public.chat_group (id, image, name) VALUES (91, '/asd', 'ps-319248');
INSERT INTO public.chat_group (id, image, name) VALUES (92, '/asd', 'ps-319263');
INSERT INTO public.chat_group (id, image, name) VALUES (93, '/asd', 'ps-312414');
INSERT INTO public.chat_group (id, image, name) VALUES (94, '/asd', 'ps-312252');
INSERT INTO public.chat_group (id, image, name) VALUES (95, '/asd', 'ps-311692');
INSERT INTO public.chat_group (id, image, name) VALUES (96, '/asd', 'ps-311070');
INSERT INTO public.chat_group (id, image, name) VALUES (97, '/asd', 'ps-313046');
INSERT INTO public.chat_group (id, image, name) VALUES (98, '/asd', 'ps-31151');
INSERT INTO public.chat_group (id, image, name) VALUES (99, '/asd', 'ps-314335');
INSERT INTO public.chat_group (id, image, name) VALUES (100, '/asd', 'ps-312438');
INSERT INTO public.chat_group (id, image, name) VALUES (101, '/asd', 'ps-312443');
INSERT INTO public.chat_group (id, image, name) VALUES (102, '/asd', 'ps-318069');
INSERT INTO public.chat_group (id, image, name) VALUES (103, '/asd', 'ps-317936');
INSERT INTO public.chat_group (id, image, name) VALUES (104, '/asd', 'ps-311645');
INSERT INTO public.chat_group (id, image, name) VALUES (105, '/asd', 'ps-315589');
INSERT INTO public.chat_group (id, image, name) VALUES (106, '/asd', 'ps-31317');
INSERT INTO public.chat_group (id, image, name) VALUES (107, '/asd', 'ps-318334');
INSERT INTO public.chat_group (id, image, name) VALUES (108, '/asd', 'ps-318696');
INSERT INTO public.chat_group (id, image, name) VALUES (109, '/asd', 'ps-315994');
INSERT INTO public.chat_group (id, image, name) VALUES (110, '/asd', 'ps-317809');
INSERT INTO public.chat_group (id, image, name) VALUES (111, '/asd', 'ps-311066');
INSERT INTO public.chat_group (id, image, name) VALUES (112, '/asd', 'ps-315921');
INSERT INTO public.chat_group (id, image, name) VALUES (113, '/asd', 'ps-314262');
INSERT INTO public.chat_group (id, image, name) VALUES (114, '/asd', 'ps-318620');
INSERT INTO public.chat_group (id, image, name) VALUES (115, '/asd', 'ps-313638');
INSERT INTO public.chat_group (id, image, name) VALUES (116, '/asd', 'ps-315253');
INSERT INTO public.chat_group (id, image, name) VALUES (117, '/asd', 'ps-31228');
INSERT INTO public.chat_group (id, image, name) VALUES (118, '/asd', 'ps-319623');
INSERT INTO public.chat_group (id, image, name) VALUES (119, '/asd', 'ps-311085');
INSERT INTO public.chat_group (id, image, name) VALUES (120, '/asd', 'ps-313357');
INSERT INTO public.chat_group (id, image, name) VALUES (121, '/asd', 'ps-31991');
INSERT INTO public.chat_group (id, image, name) VALUES (122, '/asd', 'ps-313851');
INSERT INTO public.chat_group (id, image, name) VALUES (123, '/asd', 'ps-311920');
INSERT INTO public.chat_group (id, image, name) VALUES (124, '/asd', 'ps-318043');
INSERT INTO public.chat_group (id, image, name) VALUES (125, '/asd', 'ps-317895');
INSERT INTO public.chat_group (id, image, name) VALUES (126, '/asd', 'ps-311390');
INSERT INTO public.chat_group (id, image, name) VALUES (127, '/asd', 'ps-319420');
INSERT INTO public.chat_group (id, image, name) VALUES (128, '/asd', 'ps-311567');
INSERT INTO public.chat_group (id, image, name) VALUES (129, '/asd', 'ps-313121');
INSERT INTO public.chat_group (id, image, name) VALUES (130, '/asd', 'ps-318482');
INSERT INTO public.chat_group (id, image, name) VALUES (131, '/asd', 'ps-314624');


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comment (id, text, message_id, user_id) VALUES (115, 'sdf', 108, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (116, 'dgfsfasd', 108, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (117, 'asdfsa', 108, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (119, 'dsfdsafas', 118, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (120, 'asfdgsdgjhslkf;jas;', 118, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (133, 'sdf', 122, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (134, 'sdfas', 122, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (135, 'sdfs', 122, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (136, 'sfs', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (137, 'dgfsdf', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (138, 'sadfasdf', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (139, 'sadfasd', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (140, '', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (141, '', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (142, '', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (143, '', 121, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (148, 'sdfdsa', 147, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (150, 'sdfdsa', 147, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (151, 'sdfdsa', 147, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (172, 'sdfs', 171, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (173, 'sdfs', 171, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (179, '1', 178, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (180, '1', 178, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (182, '3', 181, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (185, 'sdfs', 178, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (192, '4', 191, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (198, 'sdfds', 197, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (200, 'dfgdsf', 199, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (202, 'dgsd', 201, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (204, 'sdf', 203, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (206, 'dfsa', 205, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (230, 'sdf', 229, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (231, 'dfgf', 229, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (233, 'hjkl', 232, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (236, 'hell', 235, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (237, 'hell', 235, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (238, 'sd', 232, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (240, 'hi', 239, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (241, 'df', 239, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (243, 'sdaf', 242, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (244, 'sd', 242, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (245, 'sdgdsf', 242, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (246, 'asf', 242, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (247, 'sadf', 242, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (248, 'f', 242, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (249, 'f', 242, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (256, 'asdfas', 255, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (257, 'afasd', 255, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (258, 'asdf', 255, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (259, 'sds', 255, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (260, 'awe', 255, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (261, 'x`', 255, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (262, 'wer', 255, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (263, 'sdfsa', 255, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (264, 'asdf', 255, '107290916521259610236');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (265, 'sdfasd', 255, '107364220503636041063');
INSERT INTO public.comment (id, text, message_id, user_id) VALUES (277, 'sdf', 250, '107290916521259610236');


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES ('raw', 'includeAll', 'db/changelog/changes/v0001.sql', '2020-12-05 00:05:08.576659', 1, 'EXECUTED', '7:e6c4e1276e8b7a75af8f5b82399a9602', 'sql', '', NULL, '3.5.4', NULL, NULL, '7115908563');
INSERT INTO public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES ('raw', 'includeAll', 'BOOT-INF/classes/db/changelog/changes/v0001.sql', '2020-12-08 06:37:06.040881', 2, 'EXECUTED', '7:e6c4e1276e8b7a75af8f5b82399a9602', 'sql', '', NULL, '3.5.4', NULL, NULL, '7398626019');


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.databasechangeloglock (id, locked, lockgranted, lockedby) VALUES (1, false, NULL, NULL);


--
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (201, '2020-12-07 15:14:36.703', 'dsf', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (203, '2020-12-07 15:18:49.718', 'sdf', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (205, '2020-12-07 15:20:52.919', 'sdfa', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (118, '2020-12-07 05:50:45.86', 'sdf', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (229, '2020-12-07 15:40:36.306', 'sd', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (96, '2020-12-07 03:12:49.549', 'sdaga', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (3, '2020-12-05 18:00:41.933', 'тестируем одновременное редактирование сообщений с помощью веб сокет', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (5, '2020-12-05 18:00:52.714', 'Hello 1999', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (4, '2020-12-05 18:00:50.306', 'Hello 2 Mikhail Mikushov', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (93, '2020-12-07 02:58:17.475', 'https://www.youtube.com/watch?v=QCR6llh8EVA', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (92, '2020-12-07 02:55:24.908', 'смотри какой интересный видос https://www.youtube.com/watch?v=QCR6llh8EVA', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (98, '2020-12-07 03:14:55.329', 'yet anoteher https://youtu.be/allU9o_p080s', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (101, '2020-12-07 03:18:10.764', 'https:://jsoup.com/', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (100, '2020-12-07 03:18:02.136', 'sdafas', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (102, '2020-12-07 03:19:56.407', 'https:://jsoup.com', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (232, '2020-12-07 15:41:19.721', 'stewrt', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (105, '2020-12-07 03:21:24.631', 'https://images.pexels.com/photos/1824353/pexels-photo-1824353.jpeg https://images.pexels.com/photos/1824353/pexels-photo-1824353.jpeg', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (107, '2020-12-07 03:26:05.345', 'https://vuetifyjs.com/en/getting-started/quick-start/', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (106, '2020-12-07 03:23:32.717', 'https://github.com/bearname', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (49, NULL, '  Reverse Message Mikhail Mi', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (108, '2020-12-07 03:26:42.818', 'https://translate.google.com/', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (75, '2020-12-06 23:51:16.025', 'dfsfsafas', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (77, '2020-12-06 23:53:42.401', ') new one messag) new one messag) new one messag) new one messag', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (76, '2020-12-06 23:52:18.745', 'new one messag', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (51, NULL, 'asdfasdfadsasdfasdfadsasdfasdfadsasdfasdfadssdfds', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (83, '2020-12-07 00:40:41.135', 'writwing new message', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (1, '2020-12-05 20:09:22', '\"<h2>hyper visor</h2>\"h2>hyper visor</h2>\"h2>hyper visor</h2>\"', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (235, '2020-12-07 15:45:23.092', 'hello', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (239, '2020-12-07 15:46:39.431', 'hi', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (121, '2020-12-07 05:56:32.592', 'sgsfgds', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (122, '2020-12-07 06:02:43.766', 'sdf', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (147, '2020-12-07 06:17:42.601', 'dssd', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (171, '2020-12-07 06:43:26.814', 'sdf', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (178, '2020-12-07 06:46:57.913', '1', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (181, '2020-12-07 06:47:19.92', '2', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (191, '2020-12-07 06:50:46.742', '4', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (197, '2020-12-07 15:08:14.841', 'sdfds', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (199, '2020-12-07 15:09:30.332', 'xdgs', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (242, '2020-12-07 15:48:31.137', 's', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (250, '2020-12-07 15:54:10.291', 'ва', '107290916521259610236', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (251, '2020-12-07 15:54:14.043', 'ыва', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (252, '2020-12-07 16:01:50.126', 'https://images.pexels.com/photos/1824353/pexels-photo-1824353.jpeg https://images.pexels.com/photos/1824353/pexels-photo-1824353.jpeg', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (255, '2020-12-07 17:26:49.285', 'asdfa', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (284, '2020-12-08 04:02:46.506', 'message from me edir', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (287, '2020-12-08 04:08:54.707', 'sdfasdfs', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (276, '2020-12-07 20:16:32.177', 'sdfsddfg', '107290916521259610236', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (288, '2020-12-08 04:09:25.393', 'messagessdgdf', '107364220503636041063', NULL, NULL, NULL, NULL);
INSERT INTO public.message (id, creation_date, text, user_id, link, link_cover, link_description, link_title) VALUES (299, '2020-12-08 05:30:06.33', 'create', '107364220503636041063', NULL, NULL, NULL, NULL);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: schema_version; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: spring_session; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: spring_session_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_subscription (subscriber_id, channel_id, active) VALUES ('107364220503636041063', '107290916521259610236', true);


--
-- Data for Name: usr; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usr (id, email, gender, last_visit, locale, name, userpic) VALUES ('107364220503636041063', 'ya.mikushoff@gmail.com', NULL, '2020-12-09 01:50:18.309', 'en', 'Mikhail Mikushov', 'https://lh3.googleusercontent.com/a-/AOh14GgeHXp2FoNxdm4_qx8JkmnzWSdCnT0y-vkhsQeO4Q=s96-c');
INSERT INTO public.usr (id, email, gender, last_visit, locale, name, userpic) VALUES ('107290916521259610236', 'mihail12russ@gmail.com', NULL, '2020-12-08 04:28:08.134', 'ru', 'Михаил Микушов', 'https://lh6.googleusercontent.com/-nPnd70rUysk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmUDQ3puSTJc6sY17vLcaXtoP5lRA/s96-c/photo.jpg');


--
-- Name: chat_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chat_group_id_seq', 131, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: application_user application_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.application_user
    ADD CONSTRAINT application_user_pkey PRIMARY KEY (id);


--
-- Name: chat_group chat_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chat_group
    ADD CONSTRAINT chat_group_pkey PRIMARY KEY (id);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: user_subscription fk_subscrition_subscriber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_subscription
    ADD CONSTRAINT fk_subscrition_subscriber_pkey PRIMARY KEY (subscriber_id, channel_id);


--
-- Name: message message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: databasechangeloglock pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);


--
-- Name: schema_version schema_version_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_version
    ADD CONSTRAINT schema_version_pk PRIMARY KEY (installed_rank);


--
-- Name: spring_session_attributes spring_session_attributes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_pk PRIMARY KEY (session_primary_id, attribute_name);


--
-- Name: spring_session spring_session_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spring_session
    ADD CONSTRAINT spring_session_pk PRIMARY KEY (primary_id);


--
-- Name: usr usr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (id);


--
-- Name: schema_version_s_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schema_version_s_idx ON public.schema_version USING btree (success);


--
-- Name: spring_session_ix1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX spring_session_ix1 ON public.spring_session USING btree (session_id);


--
-- Name: spring_session_ix2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX spring_session_ix2 ON public.spring_session USING btree (expiry_time);


--
-- Name: spring_session_ix3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX spring_session_ix3 ON public.spring_session USING btree (principal_name);


--
-- Name: comment comment_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.message(id);


--
-- Name: comment comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usr(id);


--
-- Name: message fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.usr(id);


--
-- Name: spring_session_attributes spring_session_attributes_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id) REFERENCES public.spring_session(primary_id) ON DELETE CASCADE;


--
-- Name: user_subscription user_subscriptions_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_subscription
    ADD CONSTRAINT user_subscriptions_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.usr(id);


--
-- Name: user_subscription user_subscriptions_subscriber_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_subscription
    ADD CONSTRAINT user_subscriptions_subscriber_id_fkey FOREIGN KEY (subscriber_id) REFERENCES public.usr(id);


--
-- PostgreSQL database dump complete
--

