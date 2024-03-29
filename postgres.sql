PGDMP     &                    z         
   bdcatalogo    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394 
   bdcatalogo    DATABASE     e   CREATE DATABASE bdcatalogo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE bdcatalogo;
                postgres    false            �            1259    16412    marcas    TABLE     r   CREATE TABLE public.marcas (
    id_marca integer NOT NULL,
    nombre character varying(50),
    imagen bytea
);
    DROP TABLE public.marcas;
       public         heap    postgres    false            �            1259    16411    marcas_id_marca_seq    SEQUENCE     �   CREATE SEQUENCE public.marcas_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.marcas_id_marca_seq;
       public          postgres    false    212            �           0    0    marcas_id_marca_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.marcas_id_marca_seq OWNED BY public.marcas.id_marca;
          public          postgres    false    211            �            1259    16403 	   productos    TABLE     �   CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    marca character varying(100),
    tipo character varying(50),
    nombre character varying(150),
    descripcion text,
    imagen bytea,
    precio integer
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16402    productos_id_productos_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_productos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.productos_id_productos_seq;
       public          postgres    false    210            �           0    0    productos_id_productos_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.productos_id_productos_seq OWNED BY public.productos.id_producto;
          public          postgres    false    209            b           2604    16415    marcas id_marca    DEFAULT     r   ALTER TABLE ONLY public.marcas ALTER COLUMN id_marca SET DEFAULT nextval('public.marcas_id_marca_seq'::regclass);
 >   ALTER TABLE public.marcas ALTER COLUMN id_marca DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    16406    productos id_producto    DEFAULT        ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_productos_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    16412    marcas 
   TABLE DATA           :   COPY public.marcas (id_marca, nombre, imagen) FROM stdin;
    public          postgres    false    212   �       �          0    16403 	   productos 
   TABLE DATA           b   COPY public.productos (id_producto, marca, tipo, nombre, descripcion, imagen, precio) FROM stdin;
    public          postgres    false    210          �           0    0    marcas_id_marca_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.marcas_id_marca_seq', 1, false);
          public          postgres    false    211            �           0    0    productos_id_productos_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.productos_id_productos_seq', 1, false);
          public          postgres    false    209            f           2606    16419    marcas marcas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id_marca);
 <   ALTER TABLE ONLY public.marcas DROP CONSTRAINT marcas_pkey;
       public            postgres    false    212            d           2606    16410    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    210            �      x������ � �      �      x������ � �     