PGDMP                     	    y         	   plantilla    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16504 	   plantilla    DATABASE     g   CREATE DATABASE plantilla WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE plantilla;
                postgres    false            �            1259    16659    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    16646    pais    TABLE     Y   CREATE TABLE public.pais (
    id integer NOT NULL,
    nombre character varying(255)
);
    DROP TABLE public.pais;
       public         heap    postgres    false            �            1259    16651    persona    TABLE     �   CREATE TABLE public.persona (
    id integer NOT NULL,
    apellido character varying(255),
    edad character varying(255),
    nombre character varying(255),
    pais_id integer
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �          0    16646    pais 
   TABLE DATA           *   COPY public.pais (id, nombre) FROM stdin;
    public          postgres    false    200   �       �          0    16651    persona 
   TABLE DATA           F   COPY public.persona (id, apellido, edad, nombre, pais_id) FROM stdin;
    public          postgres    false    201   �       �           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 17, true);
          public          postgres    false    202            (           2606    16650    pais pais_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public            postgres    false    200            *           2606    16658    persona persona_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    201            +           2606    16661 #   persona fklaw6iphl585ydo6mx3bfdsqo1    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT fklaw6iphl585ydo6mx3bfdsqo1 FOREIGN KEY (pais_id) REFERENCES public.pais(id);
 M   ALTER TABLE ONLY public.persona DROP CONSTRAINT fklaw6iphl585ydo6mx3bfdsqo1;
       public          postgres    false    201    2856    200            �   �   x�=��r�0�뻧�0��$�Q�����l+���%�$��H��~1���۽�ٵP�\��!\@%�&\B5Ԅ+�r��D�5lS�q������
�F�p�@m���}I�.���C�sp���x�}6��m�h-8�"��.����7h�|���z�z��;�fE���4���{4�����֎��f�xvP�      �   O   x�34�t��O��42��O)�L��4�24�L�*��&%r�s����x�\��!��I����F& ���N�=... �w�     