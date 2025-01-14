PGDMP         #                z            ujikom    14.1    14.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24587    ujikom    DATABASE     Q   CREATE DATABASE ujikom WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE ujikom;
                postgres    false            �            1259    32791    comments    TABLE     �   CREATE TABLE public.comments (
    id bigint NOT NULL,
    message character varying(512),
    user_id bigint,
    timestamps timestamp with time zone DEFAULT now() NOT NULL,
    parent_id bigint,
    pelajaran_id bigint
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    32790    comments_id_seq    SEQUENCE     �   ALTER TABLE public.comments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    24615    hadir    TABLE     �   CREATE TABLE public.hadir (
    id bigint NOT NULL,
    pelajaran_id bigint NOT NULL,
    siswa_id bigint NOT NULL,
    status bigint,
    guru_id bigint NOT NULL,
    timestamps timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.hadir;
       public         heap    postgres    false            �            1259    24614    hadir_id_seq    SEQUENCE     �   ALTER TABLE public.hadir ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hadir_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    24606 	   pelajaran    TABLE     �   CREATE TABLE public.pelajaran (
    id bigint NOT NULL,
    nama character varying(32) NOT NULL,
    kelas character varying(32),
    guru_id bigint,
    waktu timestamp without time zone DEFAULT now() NOT NULL,
    materi character varying(64)
);
    DROP TABLE public.pelajaran;
       public         heap    postgres    false            �            1259    24605    pelajaran_id_seq    SEQUENCE     �   ALTER TABLE public.pelajaran ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelajaran_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �            1259    24589    users    TABLE     O  CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(24) NOT NULL,
    password character varying(500) NOT NULL,
    email character varying(64),
    token character varying(128),
    image character varying(124),
    roles bigint DEFAULT 1,
    nama character varying(64),
    kelas character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24588    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210                      0    32791    comments 
   TABLE DATA           ]   COPY public.comments (id, message, user_id, timestamps, parent_id, pelajaran_id) FROM stdin;
    public          postgres    false    216   ~                 0    24615    hadir 
   TABLE DATA           X   COPY public.hadir (id, pelajaran_id, siswa_id, status, guru_id, timestamps) FROM stdin;
    public          postgres    false    214   �                 0    24606 	   pelajaran 
   TABLE DATA           L   COPY public.pelajaran (id, nama, kelas, guru_id, waktu, materi) FROM stdin;
    public          postgres    false    212   8                 0    24589    users 
   TABLE DATA           `   COPY public.users (id, username, password, email, token, image, roles, nama, kelas) FROM stdin;
    public          postgres    false    210   �                  0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 3, true);
          public          postgres    false    215                       0    0    hadir_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.hadir_id_seq', 8, true);
          public          postgres    false    213                       0    0    pelajaran_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pelajaran_id_seq', 22, true);
          public          postgres    false    211                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 35, true);
          public          postgres    false    209            �           2606    32797    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    216            �           2606    24619    hadir hadir_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hadir
    ADD CONSTRAINT hadir_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hadir DROP CONSTRAINT hadir_pkey;
       public            postgres    false    214            ~           2606    24611    pelajaran pelajaran_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pelajaran
    ADD CONSTRAINT pelajaran_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pelajaran DROP CONSTRAINT pelajaran_pkey;
       public            postgres    false    212            z           2606    24661 
   users user 
   CONSTRAINT     K   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "user" UNIQUE (username);
 6   ALTER TABLE ONLY public.users DROP CONSTRAINT "user";
       public            postgres    false    210            |           2606    24597    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210               g   x�U�1
�0�9=Ew�$?�jo�	\

"�8x{� �&��˸���yj	B`�d-���ΜBd�FN�wT;�K�l=��7�f��UBݤ'������ ��         3   x���  �w���hEO����09hh����<�s�nU�r��f���^         �   x�m��
�0��s�{�I�2�����K���+�u=�Dh!�/�@K�P�����z�;�<�'�P4���4�p�c���@U�5n㟨ѡ��r�)����V��j��%+������;MT�c��=��<C��a7&��ac�����]֧nqϊ�"�� =@         �  x�e��n�0@��+X��bǻ^-ЖgQ7�/��� ��~B)R����|�s|LYp�4K���FT�����Eh:>L��q�o��y3!��c;�>�f�U��Ws�}�/�թ�l2��m]�|�1�-\L�I�� <�`�$���*9��M��c�ޤ�]�qk`)�:��O�Y�l�~N�4J��9J�e�8I����L3�-�g��4VRpD⠑Q�8����1Œb���X������{D���[		䏎�.����@/��,p*���s��83�k}�^ݥ��g1Q������w�`xJ�{0����jss �-0&��C�h����mc84��7k=.֧v��5ʮ�ݖ7[�#�\��s�n�u�3~y#�Bi����
c2VFF�C"0� Bf�sHE<bQ����#�E2$\ST
��6�<	�B�Vł��Z�@qH��9x����Q�T*� ak�     