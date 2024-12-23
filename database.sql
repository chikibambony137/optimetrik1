PGDMP              
        |            postgres    17.0    17.0 8               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    5    postgres    DATABASE     |   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                     postgres    false            	           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4872            �            1259    24781 	   Diagnosis    TABLE     i   CREATE TABLE public."Diagnosis" (
    "ID" bigint NOT NULL,
    "Name" character varying(50) NOT NULL
);
    DROP TABLE public."Diagnosis";
       public         heap r       postgres    false            �            1259    24780    Diagnosis_ID_seq    SEQUENCE     �   ALTER TABLE public."Diagnosis" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Diagnosis_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    229            �            1259    24724    Doctor    TABLE     5  CREATE TABLE public."Doctor" (
    "ID" bigint NOT NULL,
    "Surname" character varying(50) NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Middle_name" character varying(50),
    "Phone_number" character varying(15) NOT NULL,
    "ID_section" bigint NOT NULL,
    "Experience" integer NOT NULL
);
    DROP TABLE public."Doctor";
       public         heap r       postgres    false            �            1259    25345    Doctor_ID_seq    SEQUENCE     �   ALTER TABLE public."Doctor" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Doctor_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    218            �            1259    24763 
   Inspection    TABLE     7  CREATE TABLE public."Inspection" (
    "ID" bigint NOT NULL,
    "ID_place" bigint NOT NULL,
    "Date" date NOT NULL,
    "ID_doctor" bigint NOT NULL,
    "ID_patient" bigint NOT NULL,
    "ID_symptoms" bigint NOT NULL,
    "ID_diagnosis" bigint NOT NULL,
    "Prescription" character varying(200) NOT NULL
);
     DROP TABLE public."Inspection";
       public         heap r       postgres    false            �            1259    25344    Inspection_ID_seq    SEQUENCE     �   ALTER TABLE public."Inspection" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Inspection_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    223            �            1259    24716    Patient    TABLE     Z  CREATE TABLE public."Patient" (
    "ID" bigint NOT NULL,
    "Surname" character varying(50) NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Middle_name" character varying(50),
    "Phone_number" character varying(15) NOT NULL,
    "Age" integer NOT NULL,
    "Address" character varying(100) NOT NULL,
    "ID_sex" bigint NOT NULL
);
    DROP TABLE public."Patient";
       public         heap r       postgres    false            �            1259    25346    Patient_ID_seq    SEQUENCE     �   ALTER TABLE public."Patient" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Patient_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    217            �            1259    24769    Place    TABLE     e   CREATE TABLE public."Place" (
    "ID" bigint NOT NULL,
    "Name" character varying(30) NOT NULL
);
    DROP TABLE public."Place";
       public         heap r       postgres    false            �            1259    24768    Place_ID_seq    SEQUENCE     �   ALTER TABLE public."Place" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Place_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    225            �            1259    24730    Section    TABLE     �   CREATE TABLE public."Section" (
    "ID" bigint NOT NULL,
    "ID_patient" bigint NOT NULL,
    "Section number" integer NOT NULL
);
    DROP TABLE public."Section";
       public         heap r       postgres    false            �            1259    24729    Section_ID_seq    SEQUENCE     �   ALTER TABLE public."Section" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Section_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    220            �            1259    24758    Sex    TABLE     c   CREATE TABLE public."Sex" (
    "ID" bigint NOT NULL,
    "Name" character varying(10) NOT NULL
);
    DROP TABLE public."Sex";
       public         heap r       postgres    false            �            1259    24757 
   Sex_ID_seq    SEQUENCE     �   ALTER TABLE public."Sex" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Sex_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    222            �            1259    24773    Symptoms    TABLE     d   CREATE TABLE public."Symptoms" (
    "ID" bigint NOT NULL,
    "Name" character varying NOT NULL
);
    DROP TABLE public."Symptoms";
       public         heap r       postgres    false            �            1259    24772    Symptoms_ID_seq    SEQUENCE     �   ALTER TABLE public."Symptoms" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Symptoms_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    227            �            1259    24824    Users    TABLE     �   CREATE TABLE public."Users" (
    "ID" bigint NOT NULL,
    "Username" character varying(50) NOT NULL,
    "Hashed_password" character varying NOT NULL,
    "Role" character varying(30) NOT NULL
);
    DROP TABLE public."Users";
       public         heap r       postgres    false            �            1259    25348    Users_ID_seq    SEQUENCE     �   ALTER TABLE public."Users" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Users_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    230            �          0    24781 	   Diagnosis 
   TABLE DATA           3   COPY public."Diagnosis" ("ID", "Name") FROM stdin;
    public               postgres    false    229   �A       �          0    24724    Doctor 
   TABLE DATA           v   COPY public."Doctor" ("ID", "Surname", "Name", "Middle_name", "Phone_number", "ID_section", "Experience") FROM stdin;
    public               postgres    false    218   �B       �          0    24763 
   Inspection 
   TABLE DATA           �   COPY public."Inspection" ("ID", "ID_place", "Date", "ID_doctor", "ID_patient", "ID_symptoms", "ID_diagnosis", "Prescription") FROM stdin;
    public               postgres    false    223   [C       �          0    24716    Patient 
   TABLE DATA           w   COPY public."Patient" ("ID", "Surname", "Name", "Middle_name", "Phone_number", "Age", "Address", "ID_sex") FROM stdin;
    public               postgres    false    217   �E       �          0    24769    Place 
   TABLE DATA           /   COPY public."Place" ("ID", "Name") FROM stdin;
    public               postgres    false    225   �G       �          0    24730    Section 
   TABLE DATA           I   COPY public."Section" ("ID", "ID_patient", "Section number") FROM stdin;
    public               postgres    false    220   �G       �          0    24758    Sex 
   TABLE DATA           -   COPY public."Sex" ("ID", "Name") FROM stdin;
    public               postgres    false    222   H       �          0    24773    Symptoms 
   TABLE DATA           2   COPY public."Symptoms" ("ID", "Name") FROM stdin;
    public               postgres    false    227   VH       �          0    24824    Users 
   TABLE DATA           N   COPY public."Users" ("ID", "Username", "Hashed_password", "Role") FROM stdin;
    public               postgres    false    230   �I       
           0    0    Diagnosis_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Diagnosis_ID_seq"', 20, true);
          public               postgres    false    228                       0    0    Doctor_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Doctor_ID_seq"', 1, false);
          public               postgres    false    232                       0    0    Inspection_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Inspection_ID_seq"', 30, true);
          public               postgres    false    231                       0    0    Patient_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Patient_ID_seq"', 12, true);
          public               postgres    false    233                       0    0    Place_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Place_ID_seq"', 2, true);
          public               postgres    false    224                       0    0    Section_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Section_ID_seq"', 4, true);
          public               postgres    false    219                       0    0 
   Sex_ID_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public."Sex_ID_seq"', 2, true);
          public               postgres    false    221                       0    0    Symptoms_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Symptoms_ID_seq"', 20, true);
          public               postgres    false    226                       0    0    Users_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_ID_seq"', 11, true);
          public               postgres    false    234            V           2606    24785    Diagnosis Diagnosis_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Diagnosis"
    ADD CONSTRAINT "Diagnosis_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."Diagnosis" DROP CONSTRAINT "Diagnosis_pkey";
       public                 postgres    false    229            L           2606    24728    Doctor Doctor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Doctor"
    ADD CONSTRAINT "Doctor_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Doctor" DROP CONSTRAINT "Doctor_pkey";
       public                 postgres    false    218            J           2606    24722    Patient Pacient_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Patient"
    ADD CONSTRAINT "Pacient_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."Patient" DROP CONSTRAINT "Pacient_pkey";
       public                 postgres    false    217            R           2606    24803    Place Place_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Place"
    ADD CONSTRAINT "Place_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Place" DROP CONSTRAINT "Place_pkey";
       public                 postgres    false    225            N           2606    24734    Section Section_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Section"
    ADD CONSTRAINT "Section_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."Section" DROP CONSTRAINT "Section_pkey";
       public                 postgres    false    220            P           2606    24762    Sex Sex_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Sex"
    ADD CONSTRAINT "Sex_pkey" PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public."Sex" DROP CONSTRAINT "Sex_pkey";
       public                 postgres    false    222            T           2606    24779    Symptoms Symptoms_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Symptoms"
    ADD CONSTRAINT "Symptoms_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Symptoms" DROP CONSTRAINT "Symptoms_pkey";
       public                 postgres    false    227            X           2606    24832    Users Users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public                 postgres    false    230            Z           2606    24797    Doctor Doctor_ID_section_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Doctor"
    ADD CONSTRAINT "Doctor_ID_section_fkey" FOREIGN KEY ("ID_section") REFERENCES public."Section"("ID") NOT VALID;
 K   ALTER TABLE ONLY public."Doctor" DROP CONSTRAINT "Doctor_ID_section_fkey";
       public               postgres    false    4686    218    220            \           2606    24814 '   Inspection Inspection_ID_diagnosis_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inspection"
    ADD CONSTRAINT "Inspection_ID_diagnosis_fkey" FOREIGN KEY ("ID_diagnosis") REFERENCES public."Diagnosis"("ID") NOT VALID;
 U   ALTER TABLE ONLY public."Inspection" DROP CONSTRAINT "Inspection_ID_diagnosis_fkey";
       public               postgres    false    229    223    4694            ]           2606    24804 $   Inspection Inspection_ID_doctor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inspection"
    ADD CONSTRAINT "Inspection_ID_doctor_fkey" FOREIGN KEY ("ID_doctor") REFERENCES public."Doctor"("ID") NOT VALID;
 R   ALTER TABLE ONLY public."Inspection" DROP CONSTRAINT "Inspection_ID_doctor_fkey";
       public               postgres    false    4684    223    218            ^           2606    24819 #   Inspection Inspection_ID_place_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inspection"
    ADD CONSTRAINT "Inspection_ID_place_fkey" FOREIGN KEY ("ID_place") REFERENCES public."Place"("ID") NOT VALID;
 Q   ALTER TABLE ONLY public."Inspection" DROP CONSTRAINT "Inspection_ID_place_fkey";
       public               postgres    false    225    4690    223            _           2606    24809 &   Inspection Inspection_ID_symptoms_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inspection"
    ADD CONSTRAINT "Inspection_ID_symptoms_fkey" FOREIGN KEY ("ID_symptoms") REFERENCES public."Symptoms"("ID") NOT VALID;
 T   ALTER TABLE ONLY public."Inspection" DROP CONSTRAINT "Inspection_ID_symptoms_fkey";
       public               postgres    false    4692    227    223            [           2606    24792    Section Section_ID_patient_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Section"
    ADD CONSTRAINT "Section_ID_patient_fkey" FOREIGN KEY ("ID_patient") REFERENCES public."Patient"("ID") NOT VALID;
 M   ALTER TABLE ONLY public."Section" DROP CONSTRAINT "Section_ID_patient_fkey";
       public               postgres    false    217    4682    220            Y           2606    24787    Patient sex    FK CONSTRAINT     y   ALTER TABLE ONLY public."Patient"
    ADD CONSTRAINT sex FOREIGN KEY ("ID_sex") REFERENCES public."Sex"("ID") NOT VALID;
 7   ALTER TABLE ONLY public."Patient" DROP CONSTRAINT sex;
       public               postgres    false    217    4688    222            �   �   x�-�OJqF׿F�Z��.��qQ����Sut�t�+|��/�]xIޗxѓ�1�������&*uQ��O{j�	�Es��[;c�~���.���},�ҦE�b5p��G����������9��t�3�3�;�$�f
�A�诏'�y2�c(�3���0��_�bk�!��vj�'IW��(�PԼ��ϑj>��ϗ�G����1������ �߸�      �   �   x�E�K
AD��ҝ�w�0~]�?t�F=��802�*7�Z7!�$��$ؠB�c4�q�Q��Nx����ܡ�tz���L��Tp�5�$��q>"��S��`�S
+��)�&�ETR0���w~<Q
.�M|I�g��B���e��i$F5�M�%�P�(���Ǫ|,80��G9Y�Td�?+j���4�!�7[��      �   #  x��TKn�0]sN�ԅHٲt��"���u�)��� )�|�E�6'(*v$�s���%G��E!��8���8Ck�q�����fh�5�0���2㻄��$���ʔ����1Yj2|��%3��˔0��R�r��4�?|˿�7�� �A���!P�'o&ą	�x�� ҭ�i��ar���0��R�Z�52� ׼�D	?rÏ2��e��UT�|�G\����My �_�K�w���=��z�.�;0���)�
��2W��_x��Ly��w�:��ql*��59,�{*ް�j��P�ӐTE���lz�L��`�~dmlw-%���2��f[��]M�pO��IW�Ox���>�h�d�c�:���l�;�P��+(�C� \��u�X�Y�PM>��Q��gޟ}!�I����O}�O��C%����	�5b!��m�$r��bR�J�ߴ#��a�H���P�66��j�ߣ`�vŏ�j�r�-[r��ϸ�XU,h��9nՍ9��2�w����:�y轣�Cn�I��q�?�W�Z97}z��==�      �     x�mSQ��0�vN�`�q��e����H -������j�6�p��x3iBS�*5�̼���X+z�=���6�>҆��R��GE_��a�1ڧW꙯��w��*(]�tE�EN�4�I?Q�u�e2��JcZ�e����)�ƀ�5��	t0!�e�*m&��
���y��K�١j\A��C������OoF��Y�
oWJ��;�F��ۣd��}@+k����Fzd<n��X�rrC�P�rx7K�EWm�7�U{E�E����_�?5�(lXy�u9A� <�y�6E�EmυS�̒{:@J}JP�B�U��k�^�Ƒ�ܗ��Λ�|ѥ�n�Ei���8_������`��ߩ~���j��ظ6GHg��L��y�g��܁ї����l��˘sg���\=Ip���@Aıxw�i��c�)��ޡ{d	�������N����7�~��qޖ���7��}"S��sm._�$7`��h?�h�H?_�n��,��רاO�y �L�Y��C�=�      �   0   x�3�0���[.컰�b3���@��;.��{��\1z\\\ ��      �   #   x�3�4�4�2�4�4�2�B.cNcN�=... 4�w      �   -   x�3�0���{/6^�uaǅ�\F��\l��,�(���� ז�      �   >  x�]QAN�0<{_� \(m��c�V�VT���i�S����1v�Ud)����;�w�:��B�%~�y�����ZD]YTV�:�aJ]ș�"����+9?�\@/C�W6M�Cn��\�L���6Ñ̑�C.�Ӱ��6�����\�����	5v�niם�}P�2S��=-ȹi����k��H�_K����cK�땮�Vxc�s����d�}-�loR�D�`>��z��u�o�;���}R���-e���^%�h�cb/|�EN���}b���!��]����y��]������0�Gj�Z�剈��TQ=      �   i  x�E�ǎ�@�5���6�(��`�1�iT@�`�3��iif�jst�{�iA|���?N�|�*?�n�2�@�uL���&�h��!��߀��N+l�AAqG�����莟qS�i��ϟǢ���j�ܺFI�O�[���,�;��l��3U��gT�) ��YD�����o^�7��E�hsz�4ԓ3�e�Ͼ� ��{m�^�@u<�b�pk}Ũ����U�(��Y�-^\>u�JU��n�ʼc��%�NE�t�[��w�.o�7�~�f�$�2��f��LL5=�*�谳�������;�3��C�>Sǻｕ}1X'��]R.�\���,�U�h
SB_OӱՀ�װ�hhD��#7���n�Z�[&�x��ū�&v�g����.zm[�g�1��F�$�4d��X�W�'�Eɪ�k	_Zm�0Ov~+�'&�l�~�+�hA�/�j���d7�0����U P����Q�ʤ��B��#RK|�w��8�Kl�p���(j�PVf��I��d�"P����g���n��|e�l���a� \&�{�Q�(�����E�l ��[�
�ф��֘� j��h08��7w��Vɟܖ=\b�sB�,�h���l6 `B�     