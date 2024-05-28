PGDMP     -    (                |            universe "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    universe    DATABASE     r   CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE universe;
                freecodecamp    false            �            1259    16388    galaxy    TABLE     �   CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age numeric NOT NULL,
    type character varying(50),
    discovered boolean NOT NULL,
    distance integer
);
    DROP TABLE public.galaxy;
       public         heap    freecodecamp    false            �            1259    16386    galaxy_galaxy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.galaxy_galaxy_id_seq;
       public          freecodecamp    false    203            �           0    0    galaxy_galaxy_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;
          public          freecodecamp    false    202            �            1259    16435    moon    TABLE     �   CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter numeric NOT NULL,
    planet_id integer,
    has_water boolean NOT NULL,
    geological_activity boolean NOT NULL
);
    DROP TABLE public.moon;
       public         heap    freecodecamp    false            �            1259    16433    moon_moon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.moon_moon_id_seq;
       public          freecodecamp    false    209            �           0    0    moon_moon_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;
          public          freecodecamp    false    208            �            1259    16417    planet    TABLE     �   CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius numeric NOT NULL,
    star_id integer,
    has_life boolean NOT NULL,
    population bigint,
    atmosphere text
);
    DROP TABLE public.planet;
       public         heap    freecodecamp    false            �            1259    16415    planet_planet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.planet_planet_id_seq;
       public          freecodecamp    false    207            �           0    0    planet_planet_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;
          public          freecodecamp    false    206            �            1259    16474 	   satellite    TABLE     �   CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(255) NOT NULL,
    mission text NOT NULL,
    orbiting_body character varying(255) NOT NULL,
    launch_year integer
);
    DROP TABLE public.satellite;
       public         heap    freecodecamp    false            �            1259    16472    satellite_satellite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.satellite_satellite_id_seq;
       public          freecodecamp    false    211            �           0    0    satellite_satellite_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;
          public          freecodecamp    false    210            �            1259    16401    star    TABLE     �   CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age numeric NOT NULL,
    type character varying(50),
    galaxy_id integer,
    mass integer,
    habitable boolean NOT NULL
);
    DROP TABLE public.star;
       public         heap    freecodecamp    false            �            1259    16399    star_star_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.star_star_id_seq;
       public          freecodecamp    false    205            �           0    0    star_star_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;
          public          freecodecamp    false    204            ,           2604    16391    galaxy galaxy_id    DEFAULT     t   ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);
 ?   ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
       public          freecodecamp    false    203    202    203            /           2604    16438    moon moon_id    DEFAULT     l   ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);
 ;   ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
       public          freecodecamp    false    209    208    209            .           2604    16420    planet planet_id    DEFAULT     t   ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);
 ?   ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
       public          freecodecamp    false    206    207    207            0           2604    16477    satellite satellite_id    DEFAULT     �   ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);
 E   ALTER TABLE public.satellite ALTER COLUMN satellite_id DROP DEFAULT;
       public          freecodecamp    false    211    210    211            -           2604    16404    star star_id    DEFAULT     l   ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);
 ;   ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
       public          freecodecamp    false    205    204    205            �          0    16388    galaxy 
   TABLE DATA           R   COPY public.galaxy (galaxy_id, name, age, type, discovered, distance) FROM stdin;
    public          freecodecamp    false    203   U6       �          0    16435    moon 
   TABLE DATA           b   COPY public.moon (moon_id, name, diameter, planet_id, has_water, geological_activity) FROM stdin;
    public          freecodecamp    false    209   �6       �          0    16417    planet 
   TABLE DATA           d   COPY public.planet (planet_id, name, radius, star_id, has_life, population, atmosphere) FROM stdin;
    public          freecodecamp    false    207   �7       �          0    16474 	   satellite 
   TABLE DATA           \   COPY public.satellite (satellite_id, name, mission, orbiting_body, launch_year) FROM stdin;
    public          freecodecamp    false    211   �8       �          0    16401    star 
   TABLE DATA           T   COPY public.star (star_id, name, age, type, galaxy_id, mass, habitable) FROM stdin;
    public          freecodecamp    false    205   @9       �           0    0    galaxy_galaxy_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);
          public          freecodecamp    false    202            �           0    0    moon_moon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);
          public          freecodecamp    false    208            �           0    0    planet_planet_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);
          public          freecodecamp    false    206            �           0    0    satellite_satellite_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);
          public          freecodecamp    false    210            �           0    0    star_star_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);
          public          freecodecamp    false    204            2           2606    16398    galaxy galaxy_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_name_key;
       public            freecodecamp    false    203            4           2606    16396    galaxy galaxy_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);
 <   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
       public            freecodecamp    false    203            >           2606    16445    moon moon_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_name_key;
       public            freecodecamp    false    209            @           2606    16443    moon moon_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);
 8   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
       public            freecodecamp    false    209            :           2606    16427    planet planet_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_name_key;
       public            freecodecamp    false    207            <           2606    16425    planet planet_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);
 <   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
       public            freecodecamp    false    207            B           2606    16484    satellite satellite_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.satellite DROP CONSTRAINT satellite_name_key;
       public            freecodecamp    false    211            D           2606    16482    satellite satellite_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);
 B   ALTER TABLE ONLY public.satellite DROP CONSTRAINT satellite_pkey;
       public            freecodecamp    false    211            6           2606    16409    star star_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);
 8   ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
       public            freecodecamp    false    205            8           2606    16486    star unique_star_name 
   CONSTRAINT     P   ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);
 ?   ALTER TABLE ONLY public.star DROP CONSTRAINT unique_star_name;
       public            freecodecamp    false    205            G           2606    16446    moon moon_planet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_planet_id_fkey;
       public          freecodecamp    false    2876    207    209            F           2606    16428    planet planet_star_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_star_id_fkey;
       public          freecodecamp    false    2870    205    207            E           2606    16410    star star_galaxy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.star DROP CONSTRAINT star_galaxy_id_fkey;
       public          freecodecamp    false    205    203    2868            �   �   x�]̱
�0����)����X-8:U��m�Ф)�y{A*V�z>~�ɇ�T�-`-��|�O�P8�}N��L���2�&"�q�ގ�9���D�{b���s�R
��1hS�f��?	^�M���:��Zp���B� I�5n      �   �   x�m��n� Eח��"���2I7^T��m7NL��T~H��ڀSB���܁�p�[�#���8��َb'!��J2�i�-��$N��1]Cϴg��U�����f���K�(��oq�����У�f=�-�M��pل�	��'}���Û�g<a��(bx	�ҳ,a���a��g*a�`�}���mCk�^d�e���#Q�XI�p�T��gG�''��O��#���ˎ�      �   �   x�m��n�0���� ������Po�8Ā��q}�Z��X�\f��4a#���%��QV�_`���gef���2K����U�		V�5��/�*&��Bu��AIy������اa���45D�ͱ�=.����w�/��,b�?v��+�T^�Ϊ�T�G�B�jL����v�P��i���V��pq�6�XL�4"��{��M�u      �   k   x�3��(MJ�I��O*N-*K,����tM,*��4��4�2�˯LLO-R0�t�(��/�(	��I,R�,.I��47�2�tN,.����N,)-�S@Qi����� 1�&      �   �   x�]��
�0���W�I��\S=� �ꥇ�j-i��BQd��fX�!-0�E��EҸ���?���KS����4$&�1���)��p%�s:������^�2��*��u�~Q��#�7N�
��`�l����>WX3u     