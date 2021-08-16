--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.1

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
-- Name: d9urgekrqf72hs; Type: DATABASE; Schema: -; Owner: debnotcmmtxiyb
--

CREATE DATABASE d9urgekrqf72hs WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE d9urgekrqf72hs OWNER TO debnotcmmtxiyb;

\connect d9urgekrqf72hs

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
-- Name: appuser_appuser; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.appuser_appuser (
    id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.appuser_appuser OWNER TO debnotcmmtxiyb;

--
-- Name: appuser_appuser_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.appuser_appuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appuser_appuser_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: appuser_appuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.appuser_appuser_id_seq OWNED BY public.appuser_appuser.id;


--
-- Name: appuser_policy; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.appuser_policy (
    eula text NOT NULL,
    privacy_policy text NOT NULL,
    created timestamp with time zone,
    version integer NOT NULL,
    current boolean NOT NULL
);


ALTER TABLE public.appuser_policy OWNER TO debnotcmmtxiyb;

--
-- Name: appuser_policy_version_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.appuser_policy_version_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appuser_policy_version_seq OWNER TO debnotcmmtxiyb;

--
-- Name: appuser_policy_version_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.appuser_policy_version_seq OWNED BY public.appuser_policy.version;


--
-- Name: appuser_policylog; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.appuser_policylog (
    id bigint NOT NULL,
    "timestamp" timestamp with time zone,
    appuser_id bigint NOT NULL,
    policy_id integer
);


ALTER TABLE public.appuser_policylog OWNER TO debnotcmmtxiyb;

--
-- Name: appuser_policylog_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.appuser_policylog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appuser_policylog_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: appuser_policylog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.appuser_policylog_id_seq OWNED BY public.appuser_policylog.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO debnotcmmtxiyb;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO debnotcmmtxiyb;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO debnotcmmtxiyb;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO debnotcmmtxiyb;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO debnotcmmtxiyb;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO debnotcmmtxiyb;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO debnotcmmtxiyb;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO debnotcmmtxiyb;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO debnotcmmtxiyb;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO debnotcmmtxiyb;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO debnotcmmtxiyb;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: portfolio_contact; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.portfolio_contact (
    id bigint NOT NULL,
    submitter_email text NOT NULL,
    message text NOT NULL,
    submitted_at timestamp with time zone NOT NULL,
    responded_at timestamp with time zone
);


ALTER TABLE public.portfolio_contact OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.portfolio_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portfolio_contact_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.portfolio_contact_id_seq OWNED BY public.portfolio_contact.id;


--
-- Name: portfolio_gallery; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.portfolio_gallery (
    id bigint NOT NULL,
    portfolio_item_id bigint,
    name character varying(150) NOT NULL
);


ALTER TABLE public.portfolio_gallery OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_gallery_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.portfolio_gallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portfolio_gallery_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_gallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.portfolio_gallery_id_seq OWNED BY public.portfolio_gallery.id;


--
-- Name: portfolio_galleryimage; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.portfolio_galleryimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    is_primary boolean NOT NULL,
    is_thumbnail boolean NOT NULL,
    gallery_id bigint,
    "order" integer NOT NULL
);


ALTER TABLE public.portfolio_galleryimage OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_galleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.portfolio_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portfolio_galleryimage_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_galleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.portfolio_galleryimage_id_seq OWNED BY public.portfolio_galleryimage.id;


--
-- Name: portfolio_portfolioitem; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.portfolio_portfolioitem (
    id bigint NOT NULL,
    title character varying(250) NOT NULL,
    description text NOT NULL,
    date_created character varying(10) NOT NULL,
    portfolio_page_id character varying(100),
    "order" integer NOT NULL
);


ALTER TABLE public.portfolio_portfolioitem OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_portfolioitem_id_seq; Type: SEQUENCE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE SEQUENCE public.portfolio_portfolioitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portfolio_portfolioitem_id_seq OWNER TO debnotcmmtxiyb;

--
-- Name: portfolio_portfolioitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: debnotcmmtxiyb
--

ALTER SEQUENCE public.portfolio_portfolioitem_id_seq OWNED BY public.portfolio_portfolioitem.id;


--
-- Name: portfolio_portfoliopage; Type: TABLE; Schema: public; Owner: debnotcmmtxiyb
--

CREATE TABLE public.portfolio_portfoliopage (
    slug character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.portfolio_portfoliopage OWNER TO debnotcmmtxiyb;

--
-- Name: appuser_appuser id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_appuser ALTER COLUMN id SET DEFAULT nextval('public.appuser_appuser_id_seq'::regclass);


--
-- Name: appuser_policy version; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_policy ALTER COLUMN version SET DEFAULT nextval('public.appuser_policy_version_seq'::regclass);


--
-- Name: appuser_policylog id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_policylog ALTER COLUMN id SET DEFAULT nextval('public.appuser_policylog_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: portfolio_contact id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_contact ALTER COLUMN id SET DEFAULT nextval('public.portfolio_contact_id_seq'::regclass);


--
-- Name: portfolio_gallery id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_gallery ALTER COLUMN id SET DEFAULT nextval('public.portfolio_gallery_id_seq'::regclass);


--
-- Name: portfolio_galleryimage id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_galleryimage ALTER COLUMN id SET DEFAULT nextval('public.portfolio_galleryimage_id_seq'::regclass);


--
-- Name: portfolio_portfolioitem id; Type: DEFAULT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_portfolioitem ALTER COLUMN id SET DEFAULT nextval('public.portfolio_portfolioitem_id_seq'::regclass);


--
-- Data for Name: appuser_appuser; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.appuser_appuser (id, user_id) FROM stdin;
1	1
\.


--
-- Data for Name: appuser_policy; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.appuser_policy (eula, privacy_policy, created, version, current) FROM stdin;
<h1>Terms and Conditions ("Terms")</h1>\r\n\r\n    <p>Please read these Terms and Conditions ("Terms", "Terms and Conditions") carefully before using the Bo built website (the "Service") operated by bobuilt.me ("us", "we", or "our").</p>\r\n    <p>Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service.</p>\r\n    <p>By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. The Terms and Conditions agreement  for bobuilt.me&nbsp;has been created with the help of <a href="https://www.termsfeed.com/">TermsFeed</a>.</p>\r\n\r\n    <h2>Accounts</h2>\r\n    <p>When you create an account with us, you must provide us information that is accurate, complete, and current at all times. Failure to do so constitutes a breach of the Terms, which may result in immediate termination of your account on our Service.</p>\r\n    <p>You are responsible for safeguarding the password that you use to access the Service and for any activities or actions under your password, whether your password is with our Service or a third-party service.</p>\r\n    <p>You agree not to disclose your password to any third party. You must notify us immediately upon becoming aware of any breach of security or unauthorized use of your account.</p>\r\n\r\n    <h2>Links To Other Web Sites</h2>\r\n    <p>Our Service may contain links to third-party web sites or services that are not owned or controlled by bobuilt.me.</p>\r\n    <p>bobuilt.me has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that bobuilt.me&nbsp;shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services.</p>\r\n    <p>We strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit.</p>\r\n    <h2>Termination</h2>\r\n    <p>We may terminate or suspend access to our Service immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.</p>\r\n    <p>All provisions of the Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and limitations of liability.</p>\r\n    <p>We may terminate or suspend your account immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.</p>\r\n    <p>Upon termination, your right to use the Service will immediately cease. If you wish to terminate your account, you may simply discontinue using the Service.</p>\r\n    <p>All provisions of the Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and limitations of liability.</p>\r\n    <h2>Governing Law</h2>\r\n    <p>These Terms shall be governed and construed in accordance with the laws of Maryland, United States, without regard to its conflict of law provisions.</p>\r\n    <p>Our failure to enforce any right or provision of these Terms will not be considered a waiver of those rights. If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining provisions of these Terms will remain in effect. These Terms constitute the entire agreement between us regarding our Service, and supersede and replace any prior agreements we might have between us regarding the Service.</p>\r\n    <h2>Changes</h2>\r\n    <p>We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material we will try to provide at least 30 days notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.</p>\r\n    <p>By continuing to access or use our Service after those revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, please stop using the Service.</p>\r\n    <h2>Contact Us</h2>\r\n    <p>If you have any questions about these Terms, please <a href="mailto:{{APP NAME CONTACT}}">contact us.</a></p>	<h1><span style="color: inherit; font-family: inherit;">INTRODUCTION</span><br></h1>\r\n        <p>Thank you for choosing to be part of our community at bobuilt.me. (“company”, “we”, “us”, or “our”). We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about our policy, or our practices with regards to your personal information, please contact us at <a href="mailto:{{bo@bobuilt.me}}" target="_blank">bo@bobuilt.me</a>.</p>\r\n        <p>When you visit our website bobuilt.me&nbsp;(“Site”) and use our services, you trust us with your personal information. We take your privacy very seriously. In this privacy notice, we describe our privacy policy. We seek to explain to you in the clearest way possible what information we collect, how we use it and what rights you have in relation to it. We hope you take some time to read through it carefully, as it is important. If there are any terms in this privacy policy that you do not agree with, please discontinue use of our site and our services.</p>\r\n        <p>This privacy policy applies to all information collected through our websites (such as bobuilt.me), our mobile (“Apps”), and/or any related services, sales, marketing or events (we refer to them collectively in this privacy policy as the “Sites”).</p>\r\n        <p>Please read this privacy policy carefully as it will help you make informed decisions about sharing your personal information with us.</p>\r\n        <h1>TABLE OF CONTENTS</h1>\r\n\r\n        <ol>\r\n            <li>WHAT INFORMATION DO WE COLLECT?</li>\r\n            <li>HOW DO WE USE YOUR INFORMATION?</li>\r\n            <li>WILL YOUR INFORMATION BE SHARED WITH ANYONE?</li>\r\n            <li>DO WE USE COOKIES AND OTHER TRACKING TECHNOLOGIES?</li><li>HOW DO WE HANDLE YOUR SOCIAL LOGINS?</li>\r\n            <li>IS YOUR INFORMATION TRANSFERRED INTERNATIONALLY?</li>\r\n            <li>WHAT IS OUR STANCE ON THIRD-PARTY WEBSITES?</li>\r\n            <li>HOW LONG DO WE KEEP YOUR INFORMATION?</li>\r\n            <li>HOW DO WE KEEP YOUR INFORMATION SAFE?</li>\r\n            <li>DO WE COLLECT INFORMATION FROM MINORS?</li>\r\n            <li>WHAT ARE YOUR PRIVACY RIGHTS?</li>\r\n            <li>DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?</li>\r\n            <li>DO WE MAKE UPDATES TO THIS POLICY?</li>\r\n            <li>HOW CAN YOU CONTACT US ABOUT THIS POLICY?</li>\r\n        </ol>\r\n\r\n        <h1>WHAT INFORMATION DO WE COLLECT?</h1>\r\n        <p>Personal information you disclose to us\r\n        In Summary: We collect personal information that you provide to us such as name, contact information and security data.</p>\r\n        <p>We collect personal information that you voluntarily provide to us when expressing an interest in obtaining information about us or our products and services or otherwise contacting us.</p>\r\n        <p>The personal information that we collect depends on the context of your interactions with us and the Sites, the choices you make and the products and features you use. The personal information we COLLECT can include the following:</p>\r\n        <p><span class="text-bold">Name and Contact Data.</span> We collect your first and last name and email address.</p>\r\n        <p>All personal information that you provide to us must be true, complete and accurate, and you must notify us of any changes to such personal information.</p>\r\n\r\n        <p><span class="text-bold">Information automatically collected</span></p>\r\n        <p>In Summary: Some information – such as IP address and/or browser and device characteristics – is collected automatically when you visit our websites.</p>\r\n        <p>We automatically collect certain information when you visit, use or navigate the Sites. This information does not reveal your specific identity (like your name or contact information) but may include device and usage information, such as your IP address, browser and device characteristics, operating system, language preferences, referring URLs, device name, country, location, information about how and when you use our Site and other technical information. This information is primarily needed to maintain the security and operation of our Sites, and for our internal analytics and reporting purposes.</p>\r\n        <p>Like many businesses, we also collect information through cookies and similar technologies.</p>\r\n\r\n        <h1>HOW DO WE USE YOUR INFORMATION?</h1>\r\n        <p>In Summary: We process your information for purposes based on legitimate business interests, the fulfillment of our contract with you, compliance with our legal obligations, and/or your consent.</p>\r\n        <p>We use personal information collected via our Sites for a variety of business purposes described below. We process your personal information for these purposes in reliance on our legitimate business interests (“Business Purposes”), in order to enter into or perform a contract with you (“Contractual”), with your consent (“Consent”), and/or for compliance with our legal obligations (“Legal Reasons”). We indicate the specific processing grounds we rely on next to each purpose listed below.</p>\r\n        <p>We use the information we collect or receive:</p>\r\n        <p><span class="text-bold">To send administrative information to you for Business Purposes, Legal Reasons and/or possibly Contractual.</span> We may use your personal information to send you product, service, and new feature information and/or information about changes to our terms, conditions, and policies.</p>\r\n\r\n        <p><span class="text-bold">Request Feedback.</span> We may use your information to request feedback and to contact you about your use of our Sites.</p>\r\n        <p><span class="text-bold">To protect our Sites.</span> We may use your information as part of our efforts to keep our Sites safe and secure (for example, for fraud monitoring and prevention).</p>\r\n        <p><span class="text-bold">To enforce our terms, conditions and policies for Business Purposes, Legal Reasons and/or possibly Contractual.</span></p>\r\n        <p><span class="text-bold">To respond to legal requests and prevent harm for Legal Reasons. If we receive a subpoena or other legal request, we may need to inspect the data we hold to determine how to respond.</span></p>\r\n        <p><span class="text-bold">For other Business Purposes.</span> We may use your information for other Business Purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Sites, products, services, marketing and your experience.</p>\r\n\r\n        <h1>WILL YOUR INFORMATION BE SHARED WITH ANYONE?</h1>\r\n        <p>In Summary: We only share information with your consent, to comply with laws, to protect your rights, or to fulfill business obligations.</p>\r\n\r\n        <p><span class="text-bold">We only share and disclose your information in the following situations:</span></p>\r\n        <p><span class="text-bold">Compliance with Laws.</span> We may disclose your information where we are legally required to do so in order to comply with applicable law, governmental requests, a judicial proceeding, court order, or legal process, such as in response to a court order or a subpoena (including in response to public authorities to meet national security or law enforcement requirements).</p>\r\n        <p><span class="text-bold">Vital Interests and Legal Rights.</span> We may disclose your information where we believe it is necessary to investigate, prevent, or take action regarding potential violations of our policies, suspected fraud, situations involving potential threats to the safety of any person and illegal activities, or as evidence in litigation in which we are involved.</p>\r\n        <h1>DO WE USE COOKIES AND OTHER TRACKING TECHNOLOGIES?</h1>\r\n        <p>In Summary: We may use cookies and other tracking technologies to collect and store your information.</p>\r\n        <p>We may use cookies and similar tracking technologies (like web beacons and pixels) to access or store information. Specific information about how we use such technologies and how you can refuse certain cookies is set out in our Cookie Policy.</p><h1>IS YOUR INFORMATION TRANSFERRED INTERNATIONALLY?</h1>\r\n        <p>In Summary: Your information will be stored on servers that are not our own.</p>\r\n        Our site is hosted by <a href="https://www.heroku.com/about">Heroku</a>. Please refer to their website for more information.\r\n\r\n        <h1>WHAT IS OUR STANCE ON THIRD-PARTY WEBSITES?</h1>\r\n        <p>In Summary: We are not responsible for the safety of any information that you share with third-party providers who advertise, but are not affiliated with, our websites.</p>\r\n        <p><span class="text-bold">The Sites may contain advertisements from third parties that are not affiliated with us and which may link to other websites, online services or mobile applications.</span> We cannot guarantee the safety and privacy of data you provide to any third parties. Any data collected by third parties is not covered by this privacy policy. We are not responsible for the content or privacy and security practices and policies of any third parties, including other websites, services or applications that may be linked to or from the Sites. You should review the policies of such third parties and contact them directly to respond to your questions.</p>\r\n\r\n\r\n        <h1>HOW LONG DO WE KEEP YOUR INFORMATION?</h1>\r\n        <p>In Summary: We keep your information for as long as necessary to fulfill the purposes outlined in this privacy policy unless otherwise required by law.</p>\r\n        <p>We will only keep your personal information for as long as it is necessary for the purposes set out in this privacy policy, unless a longer retention period is required or permitted by law (such as tax, accounting or other legal requirements). No purpose in this policy will require us keeping your personal information for longer than the period of time in which you have an account with us or 2 years past the termination of your account.</p>\r\n        <p>When we have no ongoing legitimate business need to process your personal information, we will either delete or anonymize it, or, if this is not possible (for example, because your personal information has been stored in backup archives), then we will securely store your personal information and isolate it from any further processing until deletion is possible.</p>\r\n\r\n        <h1>HOW DO WE KEEP YOUR INFORMATION SAFE?</h1>\r\n        <p>In Summary: We aim to protect your personal information through a system of organizational and technical security measures.</p>\r\n        <p>We have implemented appropriate technical and organizational security measures designed to protect the security of any personal information we process. However, please also remember that we cannot guarantee that the internet itself is 100% secure. Although we will do our best to protect your personal information, transmission of personal information to and from our Sites is at your own risk. You should only access the services within a secure environment.</p>\r\n\r\n        <h1>DO WE COLLECT INFORMATION FROM MINORS?</h1>\r\n        <p>In Summary: We do not knowingly collect data from or market to children under 18 years of age.</p>\r\n        <p>We do not knowingly solicit data from or market to children under 18 years of age. By using the Sites, you represent that you are at least 18 or that you are the parent or guardian of such a minor and consent to such minor dependent’s use of the Site and App. If we learn that personal information from users less than 18 years of age has been collected, we will deactivate the account and take reasonable measures to promptly delete such data from our records. If you become aware of any data we have collected from children under age 18, please contact us at info@bobuilt.me.com.</p>\r\n        <h1>WHAT ARE YOUR PRIVACY RIGHTS?</h1>\r\n        <p>In Summary: You may review, change, or terminate your account at any time.</p>\r\n        <p>In some regions, like the European Economic Area, you have certain rights under applicable data protection laws. These may include the right (i) to request access and obtain a copy of your personal information, (ii) to request rectification or erasure; (iii) to restrict the processing of your personal information; and (iv) if applicable, to data portability. In certain circumstances, you may also have the right to object to the processing of your personal information. To make such a request, please use the contact details provided below. We will consider and act upon any request in accordance with applicable data protection laws.</p>\r\n        <p>If we are relying on your consent to process your personal information, you have the right to withdraw your consent at any time. Please note however that this will not affect the lawfulness of the processing before its withdrawal.</p>\r\n        <p>If you are resident in the European Economic Area and you believe we are unlawfully processing your personal information, you also have the right to complain to your local data protection supervisory authority. You can find their contact details here: <a href="http://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm">http://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm</a></p><h1>DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?</h1>\r\n        <p>In Summary: Yes, if you are a resident of California, you are granted specific rights regarding access to your personal information.</p>\r\n        <p>California Civil Code Section 1798.83, also known as the “Shine The Light” law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.</p>\r\n        <p>If you are under 18 years of age, reside in California, and have a registered account with bobuilt.me, you have the right to request removal of unwanted data that you publicly post on the Sites and Mobile Application. To request removal of such data, please contact us using the contact information provided below, and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the Sites and Mobile Application, but please be aware that the data may not be completely or comprehensively removed from our systems.</p>\r\n        <h1>DO WE MAKE UPDATES TO THIS POLICY?</h1>\r\n        <p>In Summary: Yes, we will update this policy as necessary to stay compliant with relevant laws.</p>\r\n        <p>We may update this privacy policy from time to time. The updated version will be indicated by an updated “Revised” date and the updated version will be effective as soon as it is accessible. If we make material changes to this privacy policy, we may notify you either by prominently posting a notice of such changes or by directly sending you a notification. We encourage you to review this privacy policy frequently to be informed of how we are protecting your information.</p>\r\n        <h1>HOW CAN YOU CONTACT US ABOUT THIS POLICY?</h1>\r\n        <p>If you have questions or comments about this policy, email us Our Privacy Officer at <a href="mailto:bo@bobuilt.me">bo@bobuilt.me</a>.</p>	2021-08-14 23:02:49.78267+00	1	t
\.


--
-- Data for Name: appuser_policylog; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.appuser_policylog (id, "timestamp", appuser_id, policy_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add attachment	7	add_attachment
26	Can change attachment	7	change_attachment
27	Can delete attachment	7	delete_attachment
28	Can view attachment	7	view_attachment
29	Can add app user	8	add_appuser
30	Can change app user	8	change_appuser
31	Can delete app user	8	delete_appuser
32	Can view app user	8	view_appuser
33	Can add policy	9	add_policy
34	Can change policy	9	change_policy
35	Can delete policy	9	delete_policy
36	Can view policy	9	view_policy
37	Can add policy log	10	add_policylog
38	Can change policy log	10	change_policylog
39	Can delete policy log	10	delete_policylog
40	Can view policy log	10	view_policylog
41	Can add portfolio page	11	add_portfoliopage
42	Can change portfolio page	11	change_portfoliopage
43	Can delete portfolio page	11	delete_portfoliopage
44	Can view portfolio page	11	view_portfoliopage
45	Can add portfolio item	12	add_portfolioitem
46	Can change portfolio item	12	change_portfolioitem
47	Can delete portfolio item	12	delete_portfolioitem
48	Can view portfolio item	12	view_portfolioitem
49	Can add portfolio gallery	13	add_portfoliogallery
50	Can change portfolio gallery	13	change_portfoliogallery
51	Can delete portfolio gallery	13	delete_portfoliogallery
52	Can view portfolio gallery	13	view_portfoliogallery
53	Can add contact	14	add_contact
54	Can change contact	14	change_contact
55	Can delete contact	14	delete_contact
56	Can view contact	14	view_contact
57	Can add gallery	15	add_gallery
58	Can change gallery	15	change_gallery
59	Can delete gallery	15	delete_gallery
60	Can view gallery	15	view_gallery
61	Can add gallery image	16	add_galleryimage
62	Can change gallery image	16	change_galleryimage
63	Can delete gallery image	16	delete_galleryimage
64	Can view gallery image	16	view_galleryimage
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$HuymekiXJ14eh7LVuxRldQ$aW/cqdTLFYJaOuxe4gbHNe6P18N2LMsKokAi6qa89mo=	2021-08-15 13:16:04.870688+00	t	bo			bo@bobuilt.me	t	t	2021-08-14 23:03:50.475178+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-08-14 23:06:03.744944+00	1	Policy object (1)	2	[{"changed": {"fields": ["Eula", "Privacy policy"]}}]	9	1
2	2021-08-14 23:06:29.298868+00	small-builds	PortfolioPage object (small-builds)	1	[{"added": {}}]	11	1
3	2021-08-14 23:06:48.796543+00	furniture	PortfolioPage object (furniture)	1	[{"added": {}}]	11	1
4	2021-08-14 23:07:07.505642+00	electrical-plumbing	PortfolioPage object (electrical-plumbing)	1	[{"added": {}}]	11	1
5	2021-08-14 23:07:25.225547+00	construction	PortfolioPage object (construction)	1	[{"added": {}}]	11	1
6	2021-08-14 23:08:08.656633+00	1	PortfolioItem object (1)	1	[{"added": {}}]	12	1
7	2021-08-14 23:09:47.288686+00	2	PortfolioItem object (2)	1	[{"added": {}}]	12	1
8	2021-08-14 23:10:18.182081+00	3	PortfolioItem object (3)	1	[{"added": {}}]	12	1
9	2021-08-14 23:12:57.415418+00	4	PortfolioItem object (4)	1	[{"added": {}}]	12	1
10	2021-08-14 23:13:28.859182+00	5	PortfolioItem object (5)	1	[{"added": {}}]	12	1
11	2021-08-15 10:21:06.148933+00	5	PortfolioItem object (5)	2	[{"changed": {"fields": ["Image"]}}]	12	1
12	2021-08-15 10:21:14.862886+00	4	PortfolioItem object (4)	2	[{"changed": {"fields": ["Image"]}}]	12	1
13	2021-08-15 10:21:24.253317+00	3	PortfolioItem object (3)	2	[{"changed": {"fields": ["Image"]}}]	12	1
14	2021-08-15 10:21:30.813696+00	2	PortfolioItem object (2)	2	[{"changed": {"fields": ["Image"]}}]	12	1
15	2021-08-15 10:21:39.753743+00	1	PortfolioItem object (1)	2	[{"changed": {"fields": ["Image"]}}]	12	1
16	2021-08-15 10:23:27.387428+00	furniture	PortfolioPage object (furniture)	2	[{"added": {"name": "portfolio item", "object": "PortfolioItem object (6)"}}]	11	1
17	2021-08-15 10:59:14.602392+00	small-builds	PortfolioPage object (small-builds)	2	[{"changed": {"name": "portfolio item", "object": "PortfolioItem object (2)", "fields": ["Image"]}}, {"changed": {"name": "portfolio item", "object": "PortfolioItem object (3)", "fields": ["Image", "Order"]}}, {"changed": {"name": "portfolio item", "object": "PortfolioItem object (5)", "fields": ["Image", "Order"]}}]	11	1
18	2021-08-15 10:59:39.69882+00	electrical-plumbing	PortfolioPage object (electrical-plumbing)	2	[{"changed": {"name": "portfolio item", "object": "PortfolioItem object (1)", "fields": ["Image"]}}]	11	1
19	2021-08-15 10:59:55.254517+00	furniture	PortfolioPage object (furniture)	2	[{"changed": {"name": "portfolio item", "object": "PortfolioItem object (4)", "fields": ["Image"]}}, {"changed": {"name": "portfolio item", "object": "PortfolioItem object (6)", "fields": ["Image"]}}]	11	1
20	2021-08-15 13:16:38.995834+00	small-builds	PortfolioPage object (small-builds)	2	[{"changed": {"name": "portfolio item", "object": "PortfolioItem object (2)", "fields": ["Image"]}}, {"changed": {"name": "portfolio item", "object": "PortfolioItem object (3)", "fields": ["Image"]}}, {"changed": {"name": "portfolio item", "object": "PortfolioItem object (5)", "fields": ["Image"]}}]	11	1
21	2021-08-15 13:17:04.626466+00	furniture	PortfolioPage object (furniture)	2	[{"changed": {"name": "portfolio item", "object": "PortfolioItem object (4)", "fields": ["Image"]}}, {"changed": {"name": "portfolio item", "object": "PortfolioItem object (6)", "fields": ["Image"]}}]	11	1
22	2021-08-15 13:17:20.950898+00	electrical-plumbing	PortfolioPage object (electrical-plumbing)	2	[{"changed": {"name": "portfolio item", "object": "PortfolioItem object (1)", "fields": ["Image"]}}]	11	1
23	2021-08-15 13:24:00.384028+00	electrical-plumbing	PortfolioPage object (electrical-plumbing)	2	[{"added": {"name": "portfolio item", "object": "PortfolioItem object (7)"}}]	11	1
24	2021-08-15 13:24:24.94603+00	7	PortfolioItem object (7)	2	[{"changed": {"fields": ["Description"]}}]	12	1
25	2021-08-15 13:26:37.437273+00	electrical-plumbing	PortfolioPage object (electrical-plumbing)	2	[{"added": {"name": "portfolio item", "object": "PortfolioItem object (8)"}}]	11	1
26	2021-08-16 14:37:57.299982+00	1	Gallery object (1)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (1)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (2)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (3)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (4)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (5)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (6)"}}]	15	1
27	2021-08-16 14:39:28.512199+00	2	Gallery object (2)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (7)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (8)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (9)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (10)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (11)"}}]	15	1
28	2021-08-16 14:40:31.521391+00	3	Gallery object (3)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (12)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (13)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (14)"}}]	15	1
29	2021-08-16 14:40:57.660009+00	4	Gallery object (4)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (15)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (16)"}}]	15	1
30	2021-08-16 14:41:21.045714+00	5	Gallery object (5)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (17)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (18)"}}]	15	1
31	2021-08-16 14:42:49.336912+00	6	Gallery object (6)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (19)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (20)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (21)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (22)"}}]	15	1
32	2021-08-16 14:44:15.499431+00	7	Gallery object (7)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (23)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (24)"}}]	15	1
33	2021-08-16 14:45:02.897232+00	8	Gallery object (8)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (25)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (26)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (27)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (28)"}}]	15	1
34	2021-08-16 14:47:49.724588+00	Skateboards	PortfolioPage object (Skateboards)	1	[{"added": {}}]	11	1
35	2021-08-16 14:52:51.294132+00	Skateboards	PortfolioPage object (Skateboards)	2	[{"added": {"name": "portfolio item", "object": "Furiosa"}}, {"added": {"name": "portfolio item", "object": "Shark"}}, {"added": {"name": "portfolio item", "object": "Jack Rabbit"}}, {"added": {"name": "portfolio item", "object": "Shredded Pineapple"}}, {"added": {"name": "portfolio item", "object": "Lion"}}]	11	1
36	2021-08-16 14:54:26.267792+00	9	Gallery object (9)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (29)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (30)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (31)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (32)"}}]	15	1
37	2021-08-16 14:56:00.152876+00	10	Gallery object (10)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (33)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (34)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (35)"}}]	15	1
38	2021-08-16 14:57:23.111037+00	11	Gallery object (11)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (36)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (37)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (38)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (39)"}}]	15	1
39	2021-08-16 14:59:00.536109+00	12	Gallery object (12)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (40)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (41)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (42)"}}]	15	1
40	2021-08-16 15:00:15.13345+00	13	Gallery object (13)	1	[{"added": {}}, {"added": {"name": "gallery image", "object": "GalleryImage object (43)"}}, {"added": {"name": "gallery image", "object": "GalleryImage object (44)"}}]	15	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	django_summernote	attachment
8	appuser	appuser
9	appuser	policy
10	appuser	policylog
11	portfolio	portfoliopage
12	portfolio	portfolioitem
14	portfolio	contact
13	portfolio	portfolioimage
15	portfolio	gallery
16	portfolio	galleryimage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-08-14 23:02:49.251408+00
2	auth	0001_initial	2021-08-14 23:02:49.476845+00
3	admin	0001_initial	2021-08-14 23:02:49.54071+00
4	admin	0002_logentry_remove_auto_add	2021-08-14 23:02:49.553464+00
5	admin	0003_logentry_add_action_flag_choices	2021-08-14 23:02:49.566441+00
6	appuser	0001_initial	2021-08-14 23:02:49.673545+00
7	appuser	0002_alter_appuser_user	2021-08-14 23:02:49.766226+00
8	appuser	0003_load_defauly_policies	2021-08-14 23:02:49.797005+00
9	contenttypes	0002_remove_content_type_name	2021-08-14 23:02:49.825518+00
10	auth	0002_alter_permission_name_max_length	2021-08-14 23:02:49.846155+00
11	auth	0003_alter_user_email_max_length	2021-08-14 23:02:49.860172+00
12	auth	0004_alter_user_username_opts	2021-08-14 23:02:49.873969+00
13	auth	0005_alter_user_last_login_null	2021-08-14 23:02:49.888632+00
14	auth	0006_require_contenttypes_0002	2021-08-14 23:02:49.894057+00
15	auth	0007_alter_validators_add_error_messages	2021-08-14 23:02:49.906597+00
16	auth	0008_alter_user_username_max_length	2021-08-14 23:02:49.927639+00
17	auth	0009_alter_user_last_name_max_length	2021-08-14 23:02:49.943908+00
18	auth	0010_alter_group_name_max_length	2021-08-14 23:02:49.961071+00
19	auth	0011_update_proxy_permissions	2021-08-14 23:02:49.974192+00
20	auth	0012_alter_user_first_name_max_length	2021-08-14 23:02:49.987947+00
21	django_summernote	0001_initial	2021-08-14 23:02:50.013378+00
22	django_summernote	0002_update-help_text	2021-08-14 23:02:50.026641+00
23	portfolio	0001_initial	2021-08-14 23:02:50.097108+00
24	portfolio	0002_auto_20210814_2147	2021-08-14 23:02:50.145506+00
25	sessions	0001_initial	2021-08-14 23:02:50.175238+00
26	portfolio	0003_portfolioitem_order	2021-08-15 10:19:02.638204+00
27	portfolio	0004_auto_20210815_1050	2021-08-15 11:25:25.631832+00
28	portfolio	0005_contact_submitted_at	2021-08-15 12:38:28.13198+00
29	portfolio	0006_contact_responded_at	2021-08-15 12:38:28.141312+00
30	portfolio	0007_rename_portfoliogallery_portfolioimage	2021-08-16 14:01:12.728322+00
31	portfolio	0008_auto_20210816_1336	2021-08-16 14:01:12.817982+00
32	portfolio	0009_auto_20210816_1337	2021-08-16 14:01:12.831256+00
33	portfolio	0010_gallery_name	2021-08-16 14:01:12.843251+00
34	portfolio	0011_alter_portfolioitem_title	2021-08-16 14:01:12.860438+00
35	portfolio	0012_remove_portfolioitem_image	2021-08-16 14:01:12.869766+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
mleps2rmhfqabfqnu1ie4jjvh5zg2c6f	.eJxVjMsOwiAQRf-FtSEwZXi4dO83kAEmUjWQlHZl_Hdt0oVu7znnvkSkba1xG7zEuYiz0OL0uyXKD247KHdqty5zb-syJ7kr8qBDXnvh5-Vw_w4qjfqtyXlVrLGYQQdDwSjGSTEAGrSAjmhSyN5kC5wIApnsMFEg5XVxCOL9AbOzNtQ:1mF2hu:I13jSbt9pRJf8PG213slG8OazWSA_1eZVm01fvOHELw	2021-08-28 23:04:50.316791+00
8r4t4xj95riypkbf98d3xmgmopib018e	.eJxVjMsOwiAQRf-FtSEwZXi4dO83kAEmUjWQlHZl_Hdt0oVu7znnvkSkba1xG7zEuYiz0OL0uyXKD247KHdqty5zb-syJ7kr8qBDXnvh5-Vw_w4qjfqtyXlVrLGYQQdDwSjGSTEAGrSAjmhSyN5kC5wIApnsMFEg5XVxCOL9AbOzNtQ:1mFFzg:CASObRGvGNMbIOfo9HvLm1KvI97U8l-yceFzIIeYW3w	2021-08-29 13:16:04.877108+00
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: portfolio_contact; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.portfolio_contact (id, submitter_email, message, submitted_at, responded_at) FROM stdin;
\.


--
-- Data for Name: portfolio_gallery; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.portfolio_gallery (id, portfolio_item_id, name) FROM stdin;
1	7	Retro Sink
2	4	WFH Desk
3	2	Camera Box
4	1	Skateboard Light
5	8	Recycled Lights
6	6	Show Bench
7	5	Fishy Box
8	3	Cutting boards
9	9	Furiosa
10	10	Shark Skateboard
11	11	Jack Rabbit Skateboard
12	13	Lion Skateboard
13	12	Shredded Pineapple Skateboard
\.


--
-- Data for Name: portfolio_galleryimage; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.portfolio_galleryimage (id, image, is_primary, is_thumbnail, gallery_id, "order") FROM stdin;
1	vanity-tn.jpg	f	t	1	0
2	vanity.jpg	t	f	1	1
3	original.jpg	f	f	1	2
4	original-plumbing.jpg	f	f	1	3
5	cleaned.jpg	f	f	1	4
6	cleaned-plumbing.jpg	f	f	1	5
7	my_desk-tn.png	f	t	2	0
8	my_desk-tn_nJE2FTR.png	t	f	2	1
9	clamping.jpg	f	f	2	2
10	desktop.jpg	f	f	2	3
11	in-progress.jpg	f	f	2	4
12	camera_box-tn.jpg	f	t	3	0
13	camera_box.jpg	t	f	3	1
14	camera_box-open.jpg	f	f	3	2
15	skateboard_light-tn.jpg	f	t	4	0
16	skateboard_light.jpg	t	f	4	1
17	lightfixture-tn.jpg	f	t	5	0
18	lightfixture.jpg	t	f	5	1
19	shoe_bench-tn.png	f	t	6	0
20	front.jpg	t	f	6	1
21	painted.jpg	f	f	6	2
22	side.jpg	f	f	6	3
23	fishbox-tn.jpg	f	t	7	0
24	fishbox.png	t	f	7	1
25	cuttingboards-tn.jpg	f	t	8	0
26	cuttingboard-1.jpg	t	f	8	1
27	cuttingboard-2.jpg	f	f	8	2
28	planer.jpg	f	f	8	3
29	TN.png	f	t	9	0
30	graphic.jpg	t	f	9	1
31	top.jpg	f	f	9	2
32	front_GFXKIy1.jpg	f	f	9	3
33	TN.jpg	f	t	10	0
34	done.jpg	t	f	10	1
35	WIP.jpg	f	f	10	2
36	TN_7S5iYlU.jpg	f	t	11	0
37	jackrabbit-complete.jpg	t	f	11	1
38	wip-1.jpg	f	f	11	2
39	wip-2.jpg	f	f	11	3
40	TN_q4eo6fk.jpg	f	t	12	0
41	Complete.jpg	t	f	12	1
42	WIP_Htr9r1d.jpg	f	f	12	2
43	TN_twjZLLA.jpg	f	t	13	0
44	complete.jpg	t	f	13	1
\.


--
-- Data for Name: portfolio_portfolioitem; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.portfolio_portfolioitem (id, title, description, date_created, portfolio_page_id, "order") FROM stdin;
4	WFH Desk	<p>A few months into the pandemic, it became obvious I was going to need a real desk at home (instead of piling things on a conveniently sized bookshelf). I took the opportunity to get creative with different shades of my favorite wood, poplar, and make this striped desk with a laptop shelf. I also experimented with A-frame legs and have loved the result. It's sturdy, nice to look at, and not a bad way to spend a day (or 600) working safely from home.<br></p>	09/2020	furniture	0
6	Shoe Bench	This shoe bench has come in very handy and was fun to build.	??/2020	furniture	1
1	Skateboard Light	<p>I've loved skateboarding for a few years...though, admittedly, I probably love collecting skateboards more than I love actually skateboarding. This one was a gift from my wife after our wedding in 2020 and I turned it into a light for my office when we bought our new house.<br></p>	06/2021	electrical-plumbing	0
7	Retro Sink	I fell in love with this 1950s American Standard ledgeback sink that I found at my local reuse warehouse, <a href="https://communityforklift.org/" target="_blank">Community Forklift</a>, and had to have it for my new house. In addition to building the vanity, the project required replacing all the water lines and fixtures on the sink, moving the sewage intake in the bathroom by a few inches, and installing a new P-trap and connecting it to the sewage line.	06/2021	electrical-plumbing	1
2	Camera Box	<p>I created this small camera box as a thank you for my amazing wedding photographer,&nbsp;<a href="https://www.instagram.com/carlettathegreat/?hl=en" target="_blank">@carlettathegreat</a>. It was a lot of fun to make something cute and (hopefully) useful that would be personally meaningful to her.</p>	08/2020	small-builds	0
3	Cutting Boards	<p>These cutting boards were made from a box of exotic wood cutoffs that I ordered online. I like to get experience with different types of woods and see the amazing finishes they can achieve, and doing so by reusing someone else's cutoffs is a great way to learn.&nbsp;<br></p>	03/2021	small-builds	1
5	Fishy Box	<p>Bandsaw boxes are great way to use up some of your growing cutoffs collection. This one was made from poplar cutoffs and sent to my dad, who is a lifelong fisherman.&nbsp;<br></p>	??/2020	small-builds	2
8	Recycled Lights	This light fixture came from an old vanity in the bathroom. The vanity wasn't in good shape, but I really liked the look of the attached light fixture. I removed the light fixture and cleaned it up a bit, and created a simple box frame to set it in. I hope the lights like their new home.	06/2021	electrical-plumbing	2
9	Furiosa	TK	??/2016	Skateboards	0
10	Shark	TK	??/2016	Skateboards	1
11	Jack Rabbit	TK	??/2016	Skateboards	2
12	Shredded Pineapple	TK	??/2016	Skateboards	3
13	Lion	TK	??/2016	Skateboards	4
\.


--
-- Data for Name: portfolio_portfoliopage; Type: TABLE DATA; Schema: public; Owner: debnotcmmtxiyb
--

COPY public.portfolio_portfoliopage (slug, title, description) FROM stdin;
construction	Construction	<p>Construction &amp; renovation projects! I am not a licensed contractor, but I enjoy things like laying flooring, painting, hanging trim, drywall repair, and other non-structural projects.<br></p>
small-builds	Small Builds & Sculptures	<p>These are items that are on the smaller side, either made for fun, for special occasions, or as a way to clean up my scrap piles.<br></p>
furniture	Furniture	<p>Furniture can be some of the most challenging, but most rewarding builds. Getting all the measurements, cuts, finished and hardware just right means so much more when it becomes a functional piece of your environment that you use daily.&nbsp;<br></p>
electrical-plumbing	Electrical & Plumbing	<p>Electrical &amp; plumbing projects! I am not a licensed contractor, but I can manage my way around building and installing light fixtures and basic plumbing.<br></p>
Skateboards	Skateboards	<p>Skateboards are a very fun and versatile canvas to work on, and I have especially loved doing woodburning designs on them. Admittedly, once I have put this much work into one, I would rather hang it on my wall than scuff it up on the street.&nbsp;</p>
\.


--
-- Name: appuser_appuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.appuser_appuser_id_seq', 1, true);


--
-- Name: appuser_policy_version_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.appuser_policy_version_seq', 1, true);


--
-- Name: appuser_policylog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.appuser_policylog_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 40, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: portfolio_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.portfolio_contact_id_seq', 1, false);


--
-- Name: portfolio_gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.portfolio_gallery_id_seq', 13, true);


--
-- Name: portfolio_galleryimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.portfolio_galleryimage_id_seq', 44, true);


--
-- Name: portfolio_portfolioitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: debnotcmmtxiyb
--

SELECT pg_catalog.setval('public.portfolio_portfolioitem_id_seq', 13, true);


--
-- Name: appuser_appuser appuser_appuser_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_appuser
    ADD CONSTRAINT appuser_appuser_pkey PRIMARY KEY (id);


--
-- Name: appuser_appuser appuser_appuser_user_id_43584cc1_uniq; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_appuser
    ADD CONSTRAINT appuser_appuser_user_id_43584cc1_uniq UNIQUE (user_id);


--
-- Name: appuser_policy appuser_policy_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_policy
    ADD CONSTRAINT appuser_policy_pkey PRIMARY KEY (version);


--
-- Name: appuser_policylog appuser_policylog_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_policylog
    ADD CONSTRAINT appuser_policylog_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: portfolio_contact portfolio_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_contact
    ADD CONSTRAINT portfolio_contact_pkey PRIMARY KEY (id);


--
-- Name: portfolio_gallery portfolio_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_gallery
    ADD CONSTRAINT portfolio_gallery_pkey PRIMARY KEY (id);


--
-- Name: portfolio_galleryimage portfolio_galleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_galleryimage
    ADD CONSTRAINT portfolio_galleryimage_pkey PRIMARY KEY (id);


--
-- Name: portfolio_portfolioitem portfolio_portfolioitem_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_portfolioitem
    ADD CONSTRAINT portfolio_portfolioitem_pkey PRIMARY KEY (id);


--
-- Name: portfolio_portfolioitem portfolio_portfolioitem_title_9ddbea15_uniq; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_portfolioitem
    ADD CONSTRAINT portfolio_portfolioitem_title_9ddbea15_uniq UNIQUE (title);


--
-- Name: portfolio_portfoliopage portfolio_portfoliopage_pkey; Type: CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_portfoliopage
    ADD CONSTRAINT portfolio_portfoliopage_pkey PRIMARY KEY (slug);


--
-- Name: appuser_policylog_appuser_id_92ba5c6d; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX appuser_policylog_appuser_id_92ba5c6d ON public.appuser_policylog USING btree (appuser_id);


--
-- Name: appuser_policylog_policy_id_c0e0466c; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX appuser_policylog_policy_id_c0e0466c ON public.appuser_policylog USING btree (policy_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: portfolio_gallery_portfolio_item_id_e5a1ec98; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX portfolio_gallery_portfolio_item_id_e5a1ec98 ON public.portfolio_gallery USING btree (portfolio_item_id);


--
-- Name: portfolio_galleryimage_gallery_id_66d8aae6; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX portfolio_galleryimage_gallery_id_66d8aae6 ON public.portfolio_galleryimage USING btree (gallery_id);


--
-- Name: portfolio_portfolioitem_portfolio_page_id_e0c57492; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX portfolio_portfolioitem_portfolio_page_id_e0c57492 ON public.portfolio_portfolioitem USING btree (portfolio_page_id);


--
-- Name: portfolio_portfolioitem_portfolio_page_id_e0c57492_like; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX portfolio_portfolioitem_portfolio_page_id_e0c57492_like ON public.portfolio_portfolioitem USING btree (portfolio_page_id varchar_pattern_ops);


--
-- Name: portfolio_portfolioitem_title_9ddbea15_like; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX portfolio_portfolioitem_title_9ddbea15_like ON public.portfolio_portfolioitem USING btree (title varchar_pattern_ops);


--
-- Name: portfolio_portfoliopage_slug_ee081aa4_like; Type: INDEX; Schema: public; Owner: debnotcmmtxiyb
--

CREATE INDEX portfolio_portfoliopage_slug_ee081aa4_like ON public.portfolio_portfoliopage USING btree (slug varchar_pattern_ops);


--
-- Name: appuser_appuser appuser_appuser_user_id_43584cc1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_appuser
    ADD CONSTRAINT appuser_appuser_user_id_43584cc1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: appuser_policylog appuser_policylog_appuser_id_92ba5c6d_fk_appuser_appuser_id; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_policylog
    ADD CONSTRAINT appuser_policylog_appuser_id_92ba5c6d_fk_appuser_appuser_id FOREIGN KEY (appuser_id) REFERENCES public.appuser_appuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: appuser_policylog appuser_policylog_policy_id_c0e0466c_fk_appuser_policy_version; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.appuser_policylog
    ADD CONSTRAINT appuser_policylog_policy_id_c0e0466c_fk_appuser_policy_version FOREIGN KEY (policy_id) REFERENCES public.appuser_policy(version) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: portfolio_gallery portfolio_gallery_portfolio_item_id_e5a1ec98_fk_portfolio; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_gallery
    ADD CONSTRAINT portfolio_gallery_portfolio_item_id_e5a1ec98_fk_portfolio FOREIGN KEY (portfolio_item_id) REFERENCES public.portfolio_portfolioitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: portfolio_galleryimage portfolio_galleryima_gallery_id_66d8aae6_fk_portfolio; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_galleryimage
    ADD CONSTRAINT portfolio_galleryima_gallery_id_66d8aae6_fk_portfolio FOREIGN KEY (gallery_id) REFERENCES public.portfolio_gallery(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: portfolio_portfolioitem portfolio_portfolioi_portfolio_page_id_e0c57492_fk_portfolio; Type: FK CONSTRAINT; Schema: public; Owner: debnotcmmtxiyb
--

ALTER TABLE ONLY public.portfolio_portfolioitem
    ADD CONSTRAINT portfolio_portfolioi_portfolio_page_id_e0c57492_fk_portfolio FOREIGN KEY (portfolio_page_id) REFERENCES public.portfolio_portfoliopage(slug) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DATABASE d9urgekrqf72hs; Type: ACL; Schema: -; Owner: debnotcmmtxiyb
--

REVOKE CONNECT,TEMPORARY ON DATABASE d9urgekrqf72hs FROM PUBLIC;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: debnotcmmtxiyb
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO debnotcmmtxiyb;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO debnotcmmtxiyb;


--
-- PostgreSQL database dump complete
--

