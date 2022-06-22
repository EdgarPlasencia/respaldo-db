PGDMP      )                    z            dbinec    14.1    14.1 '    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16535    dbinec    DATABASE     j   CREATE DATABASE dbinec WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE dbinec;
                postgres    false            �            1259    16536    dim_consumo_sec    TABLE     �  CREATE TABLE public.dim_consumo_sec (
    sk_consumo_sec integer NOT NULL,
    pk_consumo_sec character varying(1),
    materia_prima_utilizada double precision,
    suministros_herramientas_materiales_repuestos double precision,
    gastos_operacionales double precision,
    otros_gastos_operacionales double precision,
    valido_desde date,
    valido_hasta date,
    version integer
);
 #   DROP TABLE public.dim_consumo_sec;
       public         heap    postgres    false            �            1259    16539    dim_electricidad_sec    TABLE     �  CREATE TABLE public.dim_electricidad_sec (
    sk_electricidad_sec integer NOT NULL,
    pk_electricidad_sec character varying(1),
    valor_energia_electrica_producida_consumida double precision,
    valor_energia_electrica_comprada_red_publica double precision,
    cantidad_energia_electrica_producida_consumida double precision,
    cantidad_energia_electrica_comprada_red_publica double precision,
    valido_desde date,
    valido_hasta date,
    version integer
);
 (   DROP TABLE public.dim_electricidad_sec;
       public         heap    postgres    false            �            1259    16542    dim_empresas_sec    TABLE     Q  CREATE TABLE public.dim_empresas_sec (
    sk_empresas_sec integer NOT NULL,
    pk_empresas_sec character varying(1),
    numero_empresas double precision,
    remuneraciones double precision,
    valor_agregado double precision,
    depreciaciones double precision,
    valido_desde date,
    valido_hasta date,
    version integer
);
 $   DROP TABLE public.dim_empresas_sec;
       public         heap    postgres    false            �            1259    16545    dim_personal_sec    TABLE     �  CREATE TABLE public.dim_personal_sec (
    sk_personal_sec integer NOT NULL,
    pk_personal_sec character varying(1),
    total_hombres double precision,
    total_mujeres double precision,
    total_horas_noviembre double precision,
    total_sueldo_noviembre_hombres double precision,
    total_sueldo_noviembre_mujeres double precision,
    valido_desde date,
    valido_hasta date,
    version integer
);
 $   DROP TABLE public.dim_personal_sec;
       public         heap    postgres    false            �            1259    16548    dim_produccion_sec    TABLE       CREATE TABLE public.dim_produccion_sec (
    sk_produccion_sec integer NOT NULL,
    pk_produccion_sec character varying(1),
    produccion_total double precision,
    ventas_netas_de_bienes_producidos double precision,
    venta_de_bienes_comercializados double precision,
    ventas_netas_de_servicios double precision,
    compras_netas_de_mercaderias double precision,
    variacion_de_existencias_de_articulos_para_venta double precision,
    valido_desde date,
    valido_hasta date,
    version integer
);
 &   DROP TABLE public.dim_produccion_sec;
       public         heap    postgres    false            �            1259    16551    dim_relacion_sec    TABLE     �  CREATE TABLE public.dim_relacion_sec (
    sk_relacion_sec integer NOT NULL,
    pk_relacion_sec character varying(1),
    produccion_por_persona_ocupada double precision,
    produccion_por_hora_trabajada double precision,
    valoragregado_por_persona_ocupada double precision,
    valoragregado_por_hora_trabajada double precision,
    intensidad_uso_energia double precision,
    valido_desde date,
    valido_hasta date,
    version integer
);
 $   DROP TABLE public.dim_relacion_sec;
       public         heap    postgres    false            �            1259    16554    dim_remuneraciones_sec    TABLE     �  CREATE TABLE public.dim_remuneraciones_sec (
    sk_remuneraciones_sec integer NOT NULL,
    pk_remuneraciones_sec character varying(1),
    total_gasto_sueldos_remuneraciones_iess double precision,
    total_gasto_beneficiossociales_indemnizaciones_remuneraciones_i double precision,
    otras_remuneraciones double precision,
    valido_desde date,
    valido_hasta date,
    version integer
);
 *   DROP TABLE public.dim_remuneraciones_sec;
       public         heap    postgres    false            �            1259    16557    dim_seccion    TABLE     �   CREATE TABLE public.dim_seccion (
    sk_seccion integer NOT NULL,
    pk_seccion character varying(1),
    descripcion_seccion character varying(100),
    valido_desde date,
    valido_hasta date,
    version integer
);
    DROP TABLE public.dim_seccion;
       public         heap    postgres    false            �            1259    16560    fact_recopilatorio_inec    TABLE     �  CREATE TABLE public.fact_recopilatorio_inec (
    sk_seccion integer NOT NULL,
    sk_empresas_sec integer NOT NULL,
    sk_personal_sec integer NOT NULL,
    sk_remuneraciones_sec integer NOT NULL,
    sk_produccion_sec integer NOT NULL,
    sk_consumo_sec integer NOT NULL,
    sk_electricidad_sec integer NOT NULL,
    sk_relacion_sec integer NOT NULL,
    produccion_total double precision,
    total_sueldos_noviembre double precision,
    total_gasto_aporte_seguridadsocial double precision,
    total_construcciones_activos_fijos_cuenta_propia double precision,
    total_insumos double precision,
    valor_total_energia_electrica double precision
);
 +   DROP TABLE public.fact_recopilatorio_inec;
       public         heap    postgres    false                       0    16536    dim_consumo_sec 
   TABLE DATA           �   COPY public.dim_consumo_sec (sk_consumo_sec, pk_consumo_sec, materia_prima_utilizada, suministros_herramientas_materiales_repuestos, gastos_operacionales, otros_gastos_operacionales, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    209   �D       !          0    16539    dim_electricidad_sec 
   TABLE DATA           9  COPY public.dim_electricidad_sec (sk_electricidad_sec, pk_electricidad_sec, valor_energia_electrica_producida_consumida, valor_energia_electrica_comprada_red_publica, cantidad_energia_electrica_producida_consumida, cantidad_energia_electrica_comprada_red_publica, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    210   �I       "          0    16542    dim_empresas_sec 
   TABLE DATA           �   COPY public.dim_empresas_sec (sk_empresas_sec, pk_empresas_sec, numero_empresas, remuneraciones, valor_agregado, depreciaciones, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    211   �M       #          0    16545    dim_personal_sec 
   TABLE DATA           �   COPY public.dim_personal_sec (sk_personal_sec, pk_personal_sec, total_hombres, total_mujeres, total_horas_noviembre, total_sueldo_noviembre_hombres, total_sueldo_noviembre_mujeres, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    212   MR       $          0    16548    dim_produccion_sec 
   TABLE DATA           8  COPY public.dim_produccion_sec (sk_produccion_sec, pk_produccion_sec, produccion_total, ventas_netas_de_bienes_producidos, venta_de_bienes_comercializados, ventas_netas_de_servicios, compras_netas_de_mercaderias, variacion_de_existencias_de_articulos_para_venta, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    213   X       %          0    16551    dim_relacion_sec 
   TABLE DATA             COPY public.dim_relacion_sec (sk_relacion_sec, pk_relacion_sec, produccion_por_persona_ocupada, produccion_por_hora_trabajada, valoragregado_por_persona_ocupada, valoragregado_por_hora_trabajada, intensidad_uso_energia, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    214   �]       &          0    16554    dim_remuneraciones_sec 
   TABLE DATA             COPY public.dim_remuneraciones_sec (sk_remuneraciones_sec, pk_remuneraciones_sec, total_gasto_sueldos_remuneraciones_iess, total_gasto_beneficiossociales_indemnizaciones_remuneraciones_i, otras_remuneraciones, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    215   Gc       '          0    16557    dim_seccion 
   TABLE DATA           w   COPY public.dim_seccion (sk_seccion, pk_seccion, descripcion_seccion, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    216   Cg       (          0    16560    fact_recopilatorio_inec 
   TABLE DATA           n  COPY public.fact_recopilatorio_inec (sk_seccion, sk_empresas_sec, sk_personal_sec, sk_remuneraciones_sec, sk_produccion_sec, sk_consumo_sec, sk_electricidad_sec, sk_relacion_sec, produccion_total, total_sueldos_noviembre, total_gasto_aporte_seguridadsocial, total_construcciones_activos_fijos_cuenta_propia, total_insumos, valor_total_energia_electrica) FROM stdin;
    public          postgres    false    217   9j       |           2606    16564 !   dim_consumo_sec pk_dim_cosumo_sec 
   CONSTRAINT     k   ALTER TABLE ONLY public.dim_consumo_sec
    ADD CONSTRAINT pk_dim_cosumo_sec PRIMARY KEY (sk_consumo_sec);
 K   ALTER TABLE ONLY public.dim_consumo_sec DROP CONSTRAINT pk_dim_cosumo_sec;
       public            postgres    false    209            ~           2606    16566 ,   dim_electricidad_sec pk_dim_electricidad_sec 
   CONSTRAINT     {   ALTER TABLE ONLY public.dim_electricidad_sec
    ADD CONSTRAINT pk_dim_electricidad_sec PRIMARY KEY (sk_electricidad_sec);
 V   ALTER TABLE ONLY public.dim_electricidad_sec DROP CONSTRAINT pk_dim_electricidad_sec;
       public            postgres    false    210            �           2606    16568 $   dim_empresas_sec pk_dim_empresas_sec 
   CONSTRAINT     o   ALTER TABLE ONLY public.dim_empresas_sec
    ADD CONSTRAINT pk_dim_empresas_sec PRIMARY KEY (sk_empresas_sec);
 N   ALTER TABLE ONLY public.dim_empresas_sec DROP CONSTRAINT pk_dim_empresas_sec;
       public            postgres    false    211            �           2606    16570 $   dim_personal_sec pk_dim_personal_sec 
   CONSTRAINT     o   ALTER TABLE ONLY public.dim_personal_sec
    ADD CONSTRAINT pk_dim_personal_sec PRIMARY KEY (sk_personal_sec);
 N   ALTER TABLE ONLY public.dim_personal_sec DROP CONSTRAINT pk_dim_personal_sec;
       public            postgres    false    212            �           2606    16572 (   dim_produccion_sec pk_dim_produccion_sec 
   CONSTRAINT     u   ALTER TABLE ONLY public.dim_produccion_sec
    ADD CONSTRAINT pk_dim_produccion_sec PRIMARY KEY (sk_produccion_sec);
 R   ALTER TABLE ONLY public.dim_produccion_sec DROP CONSTRAINT pk_dim_produccion_sec;
       public            postgres    false    213            �           2606    16574 $   dim_relacion_sec pk_dim_relacion_sec 
   CONSTRAINT     o   ALTER TABLE ONLY public.dim_relacion_sec
    ADD CONSTRAINT pk_dim_relacion_sec PRIMARY KEY (sk_relacion_sec);
 N   ALTER TABLE ONLY public.dim_relacion_sec DROP CONSTRAINT pk_dim_relacion_sec;
       public            postgres    false    214            �           2606    16576 0   dim_remuneraciones_sec pk_dim_remuneraciones_sec 
   CONSTRAINT     �   ALTER TABLE ONLY public.dim_remuneraciones_sec
    ADD CONSTRAINT pk_dim_remuneraciones_sec PRIMARY KEY (sk_remuneraciones_sec);
 Z   ALTER TABLE ONLY public.dim_remuneraciones_sec DROP CONSTRAINT pk_dim_remuneraciones_sec;
       public            postgres    false    215            �           2606    16578    dim_seccion pk_dim_seccion 
   CONSTRAINT     `   ALTER TABLE ONLY public.dim_seccion
    ADD CONSTRAINT pk_dim_seccion PRIMARY KEY (sk_seccion);
 D   ALTER TABLE ONLY public.dim_seccion DROP CONSTRAINT pk_dim_seccion;
       public            postgres    false    216            �           2606    16580 2   fact_recopilatorio_inec pk_fact_recopilatorio_inec 
   CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT pk_fact_recopilatorio_inec PRIMARY KEY (sk_seccion, sk_empresas_sec, sk_personal_sec, sk_remuneraciones_sec, sk_produccion_sec, sk_consumo_sec, sk_electricidad_sec, sk_relacion_sec);
 \   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT pk_fact_recopilatorio_inec;
       public            postgres    false    217    217    217    217    217    217    217    217            �           2606    16581 A   fact_recopilatorio_inec dim_cosumo_sec_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_cosumo_sec_fact_recopilatorio_inec_fk FOREIGN KEY (sk_consumo_sec) REFERENCES public.dim_consumo_sec(sk_consumo_sec);
 k   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_cosumo_sec_fact_recopilatorio_inec_fk;
       public          postgres    false    3196    209    217            �           2606    16586 G   fact_recopilatorio_inec dim_electricidad_sec_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_electricidad_sec_fact_recopilatorio_inec_fk FOREIGN KEY (sk_electricidad_sec) REFERENCES public.dim_electricidad_sec(sk_electricidad_sec);
 q   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_electricidad_sec_fact_recopilatorio_inec_fk;
       public          postgres    false    3198    217    210            �           2606    16591 C   fact_recopilatorio_inec dim_empresas_sec_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_empresas_sec_fact_recopilatorio_inec_fk FOREIGN KEY (sk_empresas_sec) REFERENCES public.dim_empresas_sec(sk_empresas_sec);
 m   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_empresas_sec_fact_recopilatorio_inec_fk;
       public          postgres    false    217    3200    211            �           2606    16596 C   fact_recopilatorio_inec dim_personal_sec_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_personal_sec_fact_recopilatorio_inec_fk FOREIGN KEY (sk_personal_sec) REFERENCES public.dim_personal_sec(sk_personal_sec);
 m   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_personal_sec_fact_recopilatorio_inec_fk;
       public          postgres    false    212    217    3202            �           2606    16601 E   fact_recopilatorio_inec dim_produccion_sec_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_produccion_sec_fact_recopilatorio_inec_fk FOREIGN KEY (sk_produccion_sec) REFERENCES public.dim_produccion_sec(sk_produccion_sec);
 o   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_produccion_sec_fact_recopilatorio_inec_fk;
       public          postgres    false    217    213    3204            �           2606    16606 C   fact_recopilatorio_inec dim_relacion_sec_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_relacion_sec_fact_recopilatorio_inec_fk FOREIGN KEY (sk_relacion_sec) REFERENCES public.dim_relacion_sec(sk_relacion_sec);
 m   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_relacion_sec_fact_recopilatorio_inec_fk;
       public          postgres    false    3206    217    214            �           2606    16611 I   fact_recopilatorio_inec dim_remuneraciones_sec_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_remuneraciones_sec_fact_recopilatorio_inec_fk FOREIGN KEY (sk_remuneraciones_sec) REFERENCES public.dim_remuneraciones_sec(sk_remuneraciones_sec);
 s   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_remuneraciones_sec_fact_recopilatorio_inec_fk;
       public          postgres    false    3208    217    215            �           2606    16616 >   fact_recopilatorio_inec dim_seccion_fact_recopilatorio_inec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fact_recopilatorio_inec
    ADD CONSTRAINT dim_seccion_fact_recopilatorio_inec_fk FOREIGN KEY (sk_seccion) REFERENCES public.dim_seccion(sk_seccion);
 h   ALTER TABLE ONLY public.fact_recopilatorio_inec DROP CONSTRAINT dim_seccion_fact_recopilatorio_inec_fk;
       public          postgres    false    217    216    3210                �  x^��Ir9E��]��p����a����?�+Yt�C�%�TQ��O ���wdsNW��"U>ej�����t������BV΁7ڣ�gL'��W�o�U�Մ�E�{���j��1c�����a2���b���5ag�����m�I�~ �cp�!ĄW��l�4�wUM��	�2R>��R3Â��!���G��>�<�WQIW���ZAb���6���â@��1%!��	���L�R��ɆI�i��1�]��bǷ�&����x*�ׁ��)�~&=�:�9� k�b=Ƒ	md�'C���ndR�p«a9%r�V�/�Xx+Ez�P��1#��B��2�$l �`��1gZ��6�JZ!G*2G��-��1V5ˠa��m	�<AH�#<b��3�7�����|
dfRu:f5��"	%a�s4�ěB��I05ܐ!(�B�s&��RXH��e�=��/���
�q���t���\y䌣��8:�>GeO�&P�>��	ڎd�P��~�?�f����G��c1�u ��&5�V#2QɄ��'z��)ޫ.F ������jE(�J�#;�K���	Xw���w��`Ց������S49�h���5�-y��D�f��&�E&�"����x���BA�v�#G�x���!H"(�/QI�j#o�hG��b���?#�*���(&��~�̨/T���<ڠ|#��	����Ck�Wp
�Q���Hң`Q�ˀ'(�<(��,} Ъ�޶:1}���W^�W �?����o��\�s�.�Y��G��8�f�͙6{ب���3l�9Y��fﻮ��h̼�2(�3dĜ�_[�g�A�xA~��76*��u�H��G��T�K�Ϡ�-�#S��H�z�l|N@Yx���W�@�G��$Gs{#Ht� A>b���Ȟ��oc�B���R��c����f+`�GǙ��������X�qf�B����^�i��b�E��i9�\J~9�\I�U�:�\J뛉`�^"`�t+p(zr�x\o&NTO��!v�O�!����R"��-.%���D��?oK�~3��B��@�	�^ ����ۀ�;��B��#n&�˨+�Q��!��@H�)W!�f ��^ �_�������=N�K�㈐u/�o&������	���Q      !   I  x^��Ɏ9D������u�՘�����<��,����B�0���D�����{Jy�(�>�d��5<I�
����M��<�*&')K~`����� ����M�{
m�·91�[���Z��#2�ֿ�,:
�N#�Z\�$�������9z�촐v�4�`���|0�L��(��!6ק�c;���V��։)�`)��6e��I[N�9�ҕ4Y=�e��B��=�'�f�(S{� �T��i0%Oi��jo�J���Җ�T��^F[�j51�f�d�����=i��<5u�s�OR�ܟm0��P�
ܷ,xd���0(����؉GƆ_���l�ާfү$�R	-����֒�e��ȣ&Y��E��1�cw��4�k���jc�Z*j,w�'��-by�^��i�0vra���6��C����#x��{l	�V���A8fB	������jz�3#��kA+�^�������Xp<�\�o�A6�H�Â� ��ٖ�X83	��` �vz�`��T�Y���F>R�<�8�Eޞc�
��PT�Զ�0��5`�k� �ańȨ{C���1Ac�p&V�#b�=1�m�"U�	*Di�px���&|�2���췓�v� �h䌅	$�
�ȅx��)3(��j"�8ðD��À�.SIu,w��7��59	D�$<��%��ן���'?����},
~�	y,	/��sI�x���V��C�S5�c-���R ��J�<)�B��2�WDu[6E`�F;�8� $���/`?�� �8��������#�����#����'#�Ǝ��ľ�3����}�L��?P�y�����&�h�e��;����E�����wh�gȣJ������=a����_s�������n�0}/s�n�{�mu���{�+��7�]��^p;�n�����s�~%�ݮ7��'�����q���n�����Bp�2��=�7���^p����Bp�E�i;�Np��n�>�.a���o7ޖ�7w����[����Ҏ�y��;�*p�|3�S/7n�.7�q�p+�qkq�V���κܸ��ܟ����g�rHw      "   U  x^��Ir+9D��]� f`��������9:)oT%���f(,�R ��7�)��S��uT�i�A�U)�\�,��8�]$�T��A29�'�~�w�we�7�o�q�}�j�u�6������!:QJ�Yz���!�鞗Q��#�c"E>5�Zd�����c����`,!��6Ѷ�e��)Q�������cvLS6�v5��'^�؉s�V�<��i��~@�>d��^Yj�C��pָU���,iTM�P��܁��e��	U��a�,p�u�%E�i�
��w99#��e2�e�����C�N*�&�dh�!����б£=�Bxd��
���2J�Ϥ�dV���X*�B�n*<V+,b��w�e=����=�Nc,&���\��%Y�JG��Q2�g�쐟�5^LO������&����dd6�T�kCAS�v$A��t�Wc��2�o�w#٪|�2�DTN҂�;�K��P4��U�������)sp�0׸n�w�5J�T���h*���bIoL_�������1�u��e̐@��[Pt��I����@1����b�� 5L��B�3��	`V-@I)4�Y��φ0��e�.�I��/!�.��4�K�i�:��f�A����V �E��¬c�����g�(�6��z8�DŠ0�2 ;�����&�����d �>�����T����c�x�&����~y��7��Y���v��9�lxӚ��=��ً^��\Vt�ͽ�@�'�y0�k��<8��g��6#�|�烳������k��>ۈ�\d!��/z��5�L�l/�������g����ŃC��9�Ër�2����V���*����<b�}=3�E1���?3�ψ�����aO��S�=�����Ѕs���%�����N��[@�#������N>#u�9��}��5�ԞC�����Nܷs���a�����a������ �v�l��~���f���9���v���9l�����9�s;�q*zzX�v��a����n�9�c����n�˪��a1�s�{;�c��p�n���p�~�3�f���0�^�}���a|鱛�_����?�kI�      #   �  x^��In9E��]L0&2��y4z�����c�at%E{UY�,�*���`J�wE�4�a-�X��l�:[�6҇EMM��tI��b\>�z5�>��(a�ڥ���i1�6�����D?�y��}�L��{צ��m�k�t5�S��H���ڎ�"]�kZ�}ش�ESGV���j�m��PčMBǗW��;��嵼�2��gמ�)���Zvn�|��^z���ƌ:�5z�Ë��U'����;�s��U�uX���F���s�$I$l�Z"�nF��D�M�����^��Y�&t���ȧ��4�6����1FȿGNn�M[j�F���)���\������Z]�\Kdu,�t��K����p!јqy�8q����)��q�Q~)��*������{ޭ�uv�2"�-k�֪�M��~O��2(=%�t���1I��q�,���4�TE#zT~�~�N�P�C
I�A���[P�Ċ�S��G��g˼!D���)�}
�,����Jկ0�Z��g��6�S�2�H��B>���"(�D�7��֣uٝK��C���H�d�l�[{�H���g��1�FI��DV"�O��S���N3�*>��Α)�����6S�	��#�@fNv����jr�\�����t¢ւ����%�������Oj�Jn+[d)�u�_��í�aY�ڗ�R���Yԍ��I�Ny�S�.G�BstR�|,H��L�X�u�N�M���UP�/2:�!�m��u��9Vqz�T?R`&K؏{��eH�>V7(}��QB��ffQ�'�}%��,��]�m�L�b�*QCU乬��� �7��QP��{t��^A#QDd+�+\�,�I�ڲ��*��~t2�Aӵ����?T��2���^�w2�W�k!�IV��n��DW�uj�%H���ӡ��Z�C=ʿ�,��#��졻J!եܤOhJ$s�`C]�H��P����F�mP�F�#
I捥��ʧ��ɛ�>��e4���X �������܇�}&�F�m"�����y ���b����u�ʸ#�$���<|{�g���`� ����+���Uv�_ѯ�7�_��W&��� �������hх���A�w`���
z��7̟w��P~c�F����;����
�5�?�]7�o`?�;���3�I��ү@?O0:w�3�]h~e���'�/��A~>w����lpa��҅���~_����/쾢��r�څ��f�F쳇���I��WP��n��(}e������資q7���s�k�(��_�`���0�Rۼ���F����(���_�`N��A��v��<Jڎ֯E0���H�Z�Xg;I��<zُ�/E��{�f�܌�л�ɛ~�yXw/��ߌ`m�|
��ͧ`��s3�{��<�۞q��̣���nw��=�F0	��̟��֯<� ��S�����U�h      $   r  x^ř�r+9E����A�m5vW������:t��tʮh�J�R� pq�'�/M�4ǌr�^KC[J�r��n9�7�!Ӻ�MK]֬b���Z�6���Z���S۳u��՗��C�)������g�g�&O����|xd�n.ZL��̾�.n�$��e�m�tis)���>b��jƸ���5��;ҽ˒��v���5өQ�����WSu��W꾈:�dYO&_�c蜫�_�/�c��:I�!���r��H����ń}�F/����#��K(\���`���-�r���H�<7���^�^�=/*N�~�H�E(�}�ȼ�W��;�5��G(j@�I�E4�^e�"�qE�d�t~q�ɘ��OQ�I �H��v�#�q]�h�6ALw��Z˴!W���Ը�Mw��#{e�S���:�F�jn|~�8��d~:�� ��.s����k2�5)�(*�6���L�z�`&���H���C$:Ȉ*B����W��L��9Q0������v6_�K��{d$=H#�3�Fon4ܵ�V�����X[/4�h.3e�^A�!l�x䥇Md�A�"��}�ޜ���c���Xm��0S7��F����n_d���BA�RM��0���蔄��)\c��i�I�P��l���C7F��O�\��$~���6���v{j�#&5���S��&�EI�t��¨�P����4
n�3}s9Sk?�"/#yR�{��zI��
�ZvM�=Z.b�L�q���rQD�=P��zk���հw��'FO�D�{!��B��*)�"d�E�B#GkzJ��C�i��rZ���x�a�ёR�tt6��!l��IJe5��U��F�� I:n��HFI��y{�]�,��OCg��ʋ�$i�" �Č�8�h�0����;9��,��q'*�-&${�px6o��ζk!(&�³Z��8Sǰ�	y��mU���~zm������<�	��.�OP��OH�.�:�<?��s4p`����K�q9&|���Ҽf���rF���m^�;��&[��}f��@p�����5�O�>q�ؾ΃���#����#�ϼ>��r�o��k��5���kT�x���u�P�N��gL�!}"��7�Ϗ��&�Y��Ll�$��̲�f;a�e�p@���>�m���7h|���7T�&���L:`���0���o�g��=���w����k�?�]Qg��m
��{�^'�����p>����O�/�)K����+xj�x���|8O}<����w���S�+ǭ�����<u�����/O�o<�����������t�O�)�H��)g�ޟrX�h�NO�|<O9Q{8O9z:+������󔓵��4��y�a�Ϗo�O9��/O9�|O���Sέ�?��Z��k���4��<��?==�Х�      %   �  x^���r7E�Կ�E�m�ѕa�����NV��~R*VW�.�Y$����U���{Z��eM|���*�ֈh�jC��)9,cU+�>���)efڬ�G��rS[6���4�����$�ɤɋ���hYH���f94�W�ҹ�4T�`�Ҵ>�*��Y�k��l��6�R_i���%6/-[��I�1��ɖ*%-��/�д\Z�F�#�qD3�N;�>[C�ڸ4���6��<ԧHU���ja5�<IK�E��Z5�ԓC1�3�qtM���V���:�w����i�V�X���2����(c��V�I2Ué݁k��<]df���#������bF��9?�=zʲ�ruYC����]�:v%ԕ�Ҽ��g����f#�A�G�Y��7�mU��je%֤�B����"���0H!&zlE�&�1����t~$ Hu�0/4��j?�5��f����u<wB+NA���&�S�!2#)K���R#ǃO�:e!� )�aO���Ol)q���RD���(-��o/����T�� ��f&�F6T���(:�~"+��f�n�G�ե\�b��0���E#�Ĺ$�h0�U4�-7+��ö��'S��=�ȵH�Cˊmq��w��褐�C�ӷ�m�t[�����h�CĖh]���x��"��k��~�
���nX�IT��"���=gGW�(�p�T��(��4��X�>�
��zm��gfS*{ VƬ��4�EF�9���´��wm&C�:*tIF����xB�Hs0W�j�"��4{�����+L7r~��p�_��'�"%���P�~���?����POTG�� ��1.��qL��N���]�H���C�l\�뵄�L��L2M�,tϰ+��܏�Ǣ�&b�����.�^Zhx��`�1q�=rP���yB��g2��2Ӎ�%���H��yO����d�=
��1m �D%Dp0�HR�w��L��'`̡12B�@!���$�#��zj����׿�Ej?��@�<r;�O O�z��3���gn�ȿq���1ރ�����0�l�GϙOL���x����Ϩ���m=��0�Q�y�<2�z
����3�7����t�Gt��3��v;s���	��I��P}�����d��3�9�>�Q����b���r�����#���z��;�����d���{m�>��6noԾ���+�>{�����ՠ�mVׄR����9a�
�7Jo�~�O����3�Q�#���|5���⼛����G�����˹�V�r�|�U�K������d�^({]�f�����~�_�?��>og�ǽ��-�|q�X�z��^_��w�{�;�n��=�콗��[�˓�;���׽�ǝ[�˛����a�������Yw�w����v���������{�/�_��~3{c��^~�y�����y��Qw�������7���      &   �  x^��I��8E�̻$��y��a[�?G}g�Ƣ��nS�EZaQ ��#$�'��N��$"92��-gX����L5%�"���!�wb|n��;˻��7�	�6א��<�R�i�;��H*Ni��&�u|7�ݤRi�ǁ �o����1�$�+��slW���`CFE̳,��cH��hM*�tV�C(�f5���6��}�0�)U�dw�����8�����H�Y94u�f����0��4���iZ�NO/g�3�H���>9~�䐓��f+�gJ�e�50ȁ�9n>����*�������Q�wu��6R7���L5��&��<tQ�_�ATtQׁe�q�Ms��q�Tp�tMN���4~���U�¡j�f!'|/����e�$mX����;�y�6kb����⢚$m2!�� �!�h2�Y0����Y���Ȃa&�P �g��&+����Q��,
Eݩ�$��ӈ��۬&��(k�ipg�Y�Ƈ9i�x���XM�6D[�[z�'Сbvޔ.��C�y���Lv��p��J�r�X4rj���>e��=w
�!���R�Zw�#����B�{c��W
&��)�*̄�L� �&:�z�{���r���-S�d�yPO��$S��3A)�������-�]�4>�~��kE4�pOh4�=�s_�^�l�:�qO+�8���{��W6�22_��d;�X�R�p�d��+� c����|��/0�����J�\@�_.����+�����`l�_!���R�{���O���]�{��~SZ�+W�b�� w?� n/�ݯ'+o{�텶O������W��L_d���#��a�^Q?R�� �<R�ː�
H�ς��,H�ς��u�}���։����2̾R� �8R˳ �:R� u:RL�'A�r�x"X��2���)�����	닂&Rϳ �:R� :	�� 9	�г ;R<H���H�by��D������+i�Q�~�ooo_ ��C      '   �  x^ŖKn�0���S� I!>m#�4I���>�e6E',$Ҡ$��"�|���S�1$�� q柙>��k8�9�}��]�qIf��:U&�D+W��J�)��)�+ގ	=dȀ�	���.�`�D�\=Q����SN��$�����Fcm3�$7�<Hfj�jP6�Di�2|��|�gpc���_-�VG��c-*�<���c��)����`�ngQ�)��R9�
k\՜T�8���z��Q����eaց��X_��U����(	f���8f�vq��%���|@��$�i�sSm������\��*��U(m�K�������r�cu���0�c���عf���=ze�f_����Y����7�5%���6z�Q�M|sjB��Z�
ms��ؠ�P��vl�Ĕх�A��W-�&XAR-~�X�.�����8�l�
M��#v�`�l>�����,����[(��ì6q��B��u��ָ�j���e��K��ʛ�K��h/�
�$<fC��yi�C���U��%\y���)\]<]d@F]�Fƭ�F�Q��}`�ҭ�F�~�FyK�Q�3ڨl�6:��6:j�6:�m,�m�����-���6�۳��.,c���pG,c�}����fO��2NZ��ӞY�Y[�qޕe\�b�=��{fm�2>�-�Dڅ&�����;��`����[�D���DȖ4Þi"Fmi"�]i"�V4��g�H�3M$ێ&��&Rt�3�����ի�`���      (   #  x^m�ɑ7E�T0,�K.�??�}��P5�V��)'�G���dM�Y+;�:SW�{C�̺E�\�����1��}˼���d��n�N���<�WV��>�'�G��j���6�t�:dn��v��ݭ�bVǥ%�UoK���1�l���jnI�5~��O�D�(�}���w�VQ��'KS28��߱�h���*]���g=�<.�5m~����U��nu�������L ����P@�~Ж��)��<m=v��p��8/�xO*�3.~���k23yB��3� 䁹�����
�ҹ�O�9ڠ\c�_�0X|=-��0{�(e:zfd������m� (=$S���E����|s
-��iG��) ��^g����v��<8�ӗ�����	1�y��)���޷5���DY����<��#�5�qϱ�Bu7�f:�(�G)Z��8��tu#*��H1_~	� �����Z��@�)�R�+3��!T���~�Īv?�_�"��Ay��)љ���y��k�S��T�8�hko����!M�%�p��,����#���E�_e0X8���
߫�\�%_�E��T���-���Hӫ�U�靃~�.J���\����������Fxî{�4�2� p�y&��R���s��:��Z"U��7��(�4;�	�^�3��]E֪9��9�T� ��3/�n
��p�5��C8��M������af� ��6��؉y�E�(�L��A�'�]� |��z� �ɬiPG�7q�(DD���Q��3�@lìnc3r�%{���n,(�4z��� �>��F�J��ϛJ�J��;Z���	�8��{� 䇃�H��qᶡ���Ģ�S���<�]����PD7���K��< �G���B��$!"o �y������;�`��x"���Kr �{���q� ��m g�~��U����/Gţ�]%���-ibᙁsޚ$�2���V!���S/�2Yo{ã���������|�i���     