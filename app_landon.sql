PGDMP     .    .                y         
   app_landon    10.4    13.2 0    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    16385 
   app_landon    DATABASE     ~   CREATE DATABASE app_landon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8' TABLESPACE = tblspc_app_landon;
    DROP DATABASE app_landon;
                postgres    false            �            1259    16386    clients    TABLE     .  CREATE TABLE public.clients (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    zip_code character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);

ALTER TABLE ONLY public.clients REPLICA IDENTITY FULL;
    DROP TABLE public.clients;
       public            postgres    false            �            1259    16392    clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    198            F           0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    199            �            1259    16394 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false            �            1259    16397    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    200            G           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    201            �            1259    16399    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false            �            1259    16405    reservations    TABLE       CREATE TABLE public.reservations (
    id integer NOT NULL,
    date_in date NOT NULL,
    date_out date NOT NULL,
    client_id integer NOT NULL,
    room_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.reservations;
       public            postgres    false            �            1259    16408    reservations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reservations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.reservations_id_seq;
       public          postgres    false    203            H           0    0    reservations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.reservations_id_seq OWNED BY public.reservations.id;
          public          postgres    false    204            �            1259    16410    rooms    TABLE     �   CREATE TABLE public.rooms (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    floor integer NOT NULL,
    description text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.rooms;
       public            postgres    false            �            1259    16416    rooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rooms_id_seq;
       public          postgres    false    205            I           0    0    rooms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;
          public          postgres    false    206            �            1259    24581    ses    TABLE     M   CREATE TABLE public.ses (
    id integer NOT NULL,
    nama character(20)
);
    DROP TABLE public.ses;
       public            postgres    false            �            1259    16418    users    TABLE     C  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public            postgres    false            �            1259    16424    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    207            J           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    208            �           2604    16592 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    199    198            �           2604    16593    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            �           2604    16594    reservations id    DEFAULT     r   ALTER TABLE ONLY public.reservations ALTER COLUMN id SET DEFAULT nextval('public.reservations_id_seq'::regclass);
 >   ALTER TABLE public.reservations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            �           2604    16595    rooms id    DEFAULT     d   ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);
 7   ALTER TABLE public.rooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            �           2604    16596    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            4          0    16386    clients 
   TABLE DATA           |   COPY public.clients (id, title, name, last_name, address, zip_code, city, state, email, created_at, updated_at) FROM stdin;
    public          postgres    false    198   �5       6          0    16394 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    200   {6       8          0    16399    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    202   7       9          0    16405    reservations 
   TABLE DATA           i   COPY public.reservations (id, date_in, date_out, client_id, room_id, created_at, updated_at) FROM stdin;
    public          postgres    false    203   (7       ;          0    16410    rooms 
   TABLE DATA           U   COPY public.rooms (id, name, floor, description, created_at, updated_at) FROM stdin;
    public          postgres    false    205   &8       ?          0    24581    ses 
   TABLE DATA           '   COPY public.ses (id, nama) FROM stdin;
    public          postgres    false    209   c8       =          0    16418    users 
   TABLE DATA           b   COPY public.users (id, name, email, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    207   �8       K           0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 17, true);
          public          postgres    false    199            L           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 5, true);
          public          postgres    false    201            M           0    0    reservations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.reservations_id_seq', 17, true);
          public          postgres    false    204            N           0    0    rooms_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.rooms_id_seq', 4, true);
          public          postgres    false    206            O           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    208            �           2606    16432    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    198            �           2606    16434    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    200            �           2606    16436    reservations reservations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_pkey;
       public            postgres    false    203            �           2606    16438    rooms rooms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    205            �           2606    24585    ses ses_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ses
    ADD CONSTRAINT ses_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ses DROP CONSTRAINT ses_pkey;
       public            postgres    false    209            �           2606    16440    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    207            �           2606    16442    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    207            �           1259    16443    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    202            �           2606    16444 +   reservations reservations_client_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_client_id_foreign FOREIGN KEY (client_id) REFERENCES public.clients(id);
 U   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_client_id_foreign;
       public          postgres    false    2987    203    198            �           2606    16449 )   reservations reservations_room_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_room_id_foreign FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 S   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_room_id_foreign;
       public          postgres    false    2994    203    205            4   t   x�3��-�p�Q.I�KI���K��P0�4�34����
�E%
�&�F� '�����W
ԔY�Y�^\����K�����4202�50�50T00�25�2������� �        6   �   x�U���0��k�0�������L�	2�My}�����_n�؃	,��a0�E��j%�&m���>c�K�;L��mr�NZ��C8
����ؠ_�h�w��[_��4�k�#�}m���˘�ʯ'��|�D�      8      x������ � �      9   �   x�u���� E�RE��1�+������Q2x�o�D��q���fX���다c����e{@L��1�_*���!|�XQ�1ҭC�����;��#?�F�������
G��.|�Cl���uH�_#F�Be�8�O�4d�6�81���0b�O�u��}�\��|f�dgAZ�ͷ~#�/�a^ZA�{�,���ع��<�w���,)-b���h�g�w��/"�P��i      ;   -   x�3�440�4���".# ��5�4���&@������ `^
�      ?   O   x�3�t,�LMS@\F��%E��h�Ɯ���
�M8�K��хM9]J�1T�qF��`b�镟�X����"���� ���      =   �   x�-��
�P E���ŧ�s��%�s$n^ij�q�� �Áwq��5zV^]V�t�����s@�DVv�簂֬�[��R�F��\��6�F���"�4���sA)�U�%x_�o�m��]���c�������Q� ��0mgO��.�� �c%���X$���0�����&I�;�>�     