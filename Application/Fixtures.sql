

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body) VALUES ('a836c40d-ec69-425d-a2a6-9b53033b507c', 'First post', 'this is firt post');
INSERT INTO public.posts (id, title, body) VALUES ('84b9fe0f-6907-4e8f-9983-fb6e40b9394e', 'Secid post', 'this is second post');
INSERT INTO public.posts (id, title, body) VALUES ('73399a01-d1f6-451c-954a-fafafe17e5fc', 'third post', 'third text');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.schema_migrations DISABLE TRIGGER ALL;

INSERT INTO public.schema_migrations (revision) VALUES (1701945494);


ALTER TABLE public.schema_migrations ENABLE TRIGGER ALL;


