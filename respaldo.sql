PGDMP                         z            dbinec    14.1    14.1 '    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    210   GI       "          0    16542    dim_empresas_sec 
   TABLE DATA           �   COPY public.dim_empresas_sec (sk_empresas_sec, pk_empresas_sec, numero_empresas, remuneraciones, valor_agregado, depreciaciones, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    211   QM       #          0    16545    dim_personal_sec 
   TABLE DATA           �   COPY public.dim_personal_sec (sk_personal_sec, pk_personal_sec, total_hombres, total_mujeres, total_horas_noviembre, total_sueldo_noviembre_hombres, total_sueldo_noviembre_mujeres, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    212   Q       $          0    16548    dim_produccion_sec 
   TABLE DATA           8  COPY public.dim_produccion_sec (sk_produccion_sec, pk_produccion_sec, produccion_total, ventas_netas_de_bienes_producidos, venta_de_bienes_comercializados, ventas_netas_de_servicios, compras_netas_de_mercaderias, variacion_de_existencias_de_articulos_para_venta, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    213   �V       %          0    16551    dim_relacion_sec 
   TABLE DATA             COPY public.dim_relacion_sec (sk_relacion_sec, pk_relacion_sec, produccion_por_persona_ocupada, produccion_por_hora_trabajada, valoragregado_por_persona_ocupada, valoragregado_por_hora_trabajada, intensidad_uso_energia, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    214   \       &          0    16554    dim_remuneraciones_sec 
   TABLE DATA             COPY public.dim_remuneraciones_sec (sk_remuneraciones_sec, pk_remuneraciones_sec, total_gasto_sueldos_remuneraciones_iess, total_gasto_beneficiossociales_indemnizaciones_remuneraciones_i, otras_remuneraciones, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    215   sa       '          0    16557    dim_seccion 
   TABLE DATA           w   COPY public.dim_seccion (sk_seccion, pk_seccion, descripcion_seccion, valido_desde, valido_hasta, version) FROM stdin;
    public          postgres    false    216   3e       (          0    16560    fact_recopilatorio_inec 
   TABLE DATA           n  COPY public.fact_recopilatorio_inec (sk_seccion, sk_empresas_sec, sk_personal_sec, sk_remuneraciones_sec, sk_produccion_sec, sk_consumo_sec, sk_electricidad_sec, sk_relacion_sec, produccion_total, total_sueldos_noviembre, total_gasto_aporte_seguridadsocial, total_construcciones_activos_fijos_cuenta_propia, total_insumos, valor_total_energia_electrica) FROM stdin;
    public          postgres    false    217   h       |           2606    16564 !   dim_consumo_sec pk_dim_cosumo_sec 
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
       public          postgres    false    217    216    3210                L  x���Ɏ#9DϬiA����kc�k��wt�R%�N۰[&�����iw���c�$���CË��C�j���bҴ�x#5Ҭ���?M�c��O,���߄�%6�LͲ�ݜȂV����M�xmA�1Ӳ�Q�dǚ�ѥ�$Jߑ�Z�(��oEmQ:C�ei����~���D���K����{j��6��[Rre��ْ�N�naR:|��
�)r4���F�~�Pe���~Y9;�f�|Wi���[H�x�n�������s��I�V��-
�ȧ��c�N(5'�"���tL1%�ć���F��1K�O4q���!���gu�2*b��3ِhFh���L�Ϋ�ó��Q�N�"JL��F�Mth���R[2���c��<M��|����·� AYa3�id�4؅J"Z�(lȏ!yүK�F<v���w@KA���FP��[��g�L�-QCю��93V��=ъ�������Pt-��ٺ��u�����,�;�*�ތ���j��8-h�TA��Tsx�L�W;���V�A�,J�!Q;Cm���S�$X4cj����%C�&��8��v�j���a=��b�qc̲�X��)���s�$r��'a,��&f��#�+P?N
ޱx�Q4^�(c0�Ȗ�������[4�r~I�U�L<�X.A��0���2O�.�� k�$�M0\�KkEU(
y1��0�04�8T�2P	���bb8F5��1ˤ/�?x }� �+~b��>کw�\�#w6��6����f�͕6B�N��&���QsN ;iz͆��)�n�� �!�
��ي}���%�py�G�w�ȕ,|��N�s��*yeJ=�ɏ�RP6��#�N���D�$��A"��D����ș�:�c�F�sD��>���sD9��J����|x�m���+36b���3���bc���f"�So%��."���ko%z�V"���D�X�WT/&�վ���Wa����D������g"\��@�y/�o�p���@p��7��^ @�[���j ��!櫁�r^�{�z3p�/�􋁀�v�%B�D���_����W���Q      !   �  x����r�FD��QG������r�������01A2������W��7d>-��,:�q�gY���$s�k�r��!wɊQ^c�IʒX�>���LHޔ��б)|��܆���Z#��t�,g�U��F�Z\����61��cz礅�S�	�-���Bi��(���%�ǫ�����r+��h�,E�P�Z����eSu��+i�z$�/�v���a�c�)�=B�6�֠4��Q�-��*$�H�i�V*�c/�Ɩ��W5�h�#���f���nnM]�b.�&E?���Q��U�e�#[SP�àt�7"�ډKƆ�s�Gx��i��D�TBd��|vO]z1:#��d�nK8i��A����-h��~��5�x�T�:�mOD[���^���`�V�_���`�8$Z�+;2���b��� ��ʾ��o�c&�0�,9�f��;3R+y,�H턗�����w��is!�U��<D24C `l/d[�b��|$p��:���!>�4�H7_�|����9�A>�����H��
�:�p Z�_���v"�h����:~��;�����U8�X쎈��D��q�Cp<>
/Vs�	���a!�FIa� :�� g�@����<� O�p�8fPl��D
q�a�8��p�>L%AԱ��o�֣9	DA^P��������7z�u*�y(�y&�y$���\G��'B}i�=�<�i��Y��Q0���b��o��^����})��8��:O���}� �����9���������g��Ɉ������>�|���B��%z������=�w�����h�e�������q��~�W���g��������>_��;��5��%��e�apC�G��=n����$s��7n=n�,���7b����������ht����ϳ���{�0�p��g����G���!�3�����Yp��Yp�<�������N�	�iw������$wֳ�ξܟ����?�rHw      "     x���9r$9Em�.� v��}�Yܾ�9�SrTLe�fT��$���(��SF����T��jLs
�J��e�����"1G������e2�m}a��L�"�=1���l���ƣ�WԐ�d�!�RJ�ҳ<laO������?&R�S#�EFM_1�f�K�%d�!ަ#��u��GJ����TpM�1;�)Y���Y�?N��9X+F^�6�0��O���$�W���)3+�[U:|̒Fu�u.��Oo��L��|����Q�ZR�ΙV�`�y��32�7�(��oc$�%�-�]A��9�e�-m�����#;W��m��_I%ɬBq>�T4���4Tx�VXĒJ�6��z�7��7���l�6s}_K�(�
��e�d���!?xk<���;�4���z�H���Ra׆���5 �H�X�p��>ؓ@LV=F�Uy�+�9�Q9IR�D{,�Bѐ�OT��gN��0BRrleCKs�;��D*�Rj4��b���7&�������!Tc��p2fH �H�-(�J��P[�{���FH�6��ߤ�C�W"*fN�k1
���6@R
�{V�%	#�^f��?��}	�t��F`��_�L�ա55K����`�qO��/f�_���H��Gba@}�Á�%*���٩ �O��!] @��` $��	��
50$����8=~A���Ԙ����W�f��t�ݜ��߼�.nt1�݋���\V����z.�s�%���iv���ی��gٍ%m�ށE�<�w��E���/��5�b�e<���_����|���C���=<)g.s���Vp���������3�I1����������Jxۘ����8���y� ��~������n���[���6�#R��i�1���1�/���~K?�a�|�Ø���:�a���y�� �q��0:q�Ð�a���9�f�0*����q[����4��0�0��qcOs�9�a���s��8�c��p�i�9z���~��P�qG�p�qG�������?�kI�      #   [  x���Ir$7E��]:�	n=��a��?�e�Ñ�T�X!��*I>�PҾj:���c�u���F^����Q>,��jy�KIEH4c�H��d�����5����b6풟���[�D?�4y��u�*�*3���lC��t���o1�}c^����$�]���æu\u�V{4k�&n	���%���^�v#JFS�J��My)�T�d������޾m�1��٧������[n�s��zN�S�]�5����|���ɮI�HجuD<ڍ�]�>��k�>Ȫz�Q��n�����ȧp9�m'3qFȿGN�e�^z��D�<���}�iz����r�Q�㉕��h)}���ÅD�J.ȕW���X�	S�2\A��G��q�� /�9���y�ŭ+�eD_���/�L��5ޗ��+��>	�b�wLR��h�ڏ+3�.Tщ��\���
�R�iǑF�bPif��M��:�=b�:[�!
$$8L����~j���Wc���yE�	�ԫ�!RnT�����X�"(8XD-{����@��,����~�E�� �f�l͆H�湳M�1@��od(����S��:՟���5�]�i��K3TD�!J��q8V���Q�@fM,K�q�jr�]�Q��ʥ7¢ւ�-�ՋӞu�<m���侲E��X�+�=�zV�С�\����fs�ϼ�:$����S�*�moH>���[���4S!�\Z'�#�ߖ��� �@�����GW ��a>�X��e�~Z�����h��B����A���j��Ӕh~N1sh�d����3y����.�X�$j�� ����Y��
�D�W�zT�ӽ�,F�h"38�Z�`��D$��K�*8�^ɶ�����������GС�UP;U�M�VV��d�_pG~�D���"G��8��	�s��P��<�/bJ��� ٣�*B�V�&}BQ��` �Nw��T�.��[�W���W�:IG�4�"�揖{������}6��h���`܇��>��`�	��`��y�y
��<P�i`<��I��qG�I �9��c�}x6�/F�m��;���� ���w�����w�?�+�F�yg�݉�7�?[���P�o��0�l1_P~c�F��ޟ-����w��]7�o`�X;�ǝ�sc���;П'���s�h~g���|n ���w�˝�cc���٢�����z��n쾣�Y9|���[7j������^����� ��sz����v'tn�~6�̣����A0�,���Y{?�`�������a��F0)9�`J�0��|���0�a�QG?����=�`��0��!���E0 9�`��aG�Fp���~�4��FT�L_<�����8�`�r�4��:��������U�h      $     x�ŗ�r�FD��aG������r����)ڎ@C:�! ����YY�F<��*Ie<�ZBFrV�q��t��\�:M�5�uh���N�H�!�XW=�bs�Lb��Ě��8���?��zdyT� ��jd�I�S���1�`�͜�Ҹ%��7j��Mi<��Qդ�d���ؗ�QL`c���x"�&7���i):�*.QTl�$�5DO��NY�m�[g���$�=��y6���B
%���2?��Ʒ�q`s��%��z�Bj���h�M���G�&Q8jD"XGn]<������8���U����n@y-���K�r��"n�*}f����.ean��Ť<�[������5G!	�����yGb|9$��	��ʀ]-�QH��p3���P��RC�����X�5Lm9my�r�H�O<'�`�����?k����\�L����X�8���JX���AX��X�N���#�.uw8�J®0���x8-	�p,M��S��	(<<0p�6��*4�wE/�p`�i{�F?�m�c�]f�ÆCa�l���̓0���kP":0ƈ<��$�� ��r��E<~]p��V�)5��p�&Z���SH�^s3� �!�Ip�ȾY��_�r�I�Ax�z����J;ۥ�E��[G� *�Nd)A��e?�և�0CI�A�̘��t|k���dH��'�:+�ԼdT��a�0�X>�� ��Dx��H�2�u^�Ļ��1S"im�K��"U!�2!�j��)(ܒ'f95孭|��zC�&��Ra�0��-zu� ��q�T��!:�P,a��T�Ǖ�z>���>C�?�OB��b��u�@� �W��Ot�W�"�h�-ըq	�5Ďx@��x�r%���fWȬQ�| obd߮���^���<i|�t��Jk�����1}C��X�]7�o4?�\7�o$?�JA;�k����M����;�7�ב�y��έ���egwo��Ƚq��>�A_��ڶ!�H��\�CN�Z��#�������o���(-�cz��F�#�o��o���p�G:���S2���̺a��ސ|$���c�x���0�H|�x��8�;��Ha�|k�	�����{�������]|�ڱ�*t}C����������^5O��%<պ��0��<5�����S�w�n<5�;O�ޅ�Ȇ��F��������B(O�ށ�Η�*_�S$��<u������<������y��?O���xtw��r��Ӑ;��_�Ӱ���~�"�>�����S��<�<�Х�      %   K  x���Ir9D��]�  ö�9z�����G����r/\�C�RD"��,�fi��g���)eM��5�.KϬ��TՆ�!KbXxeK�s���%ifڬsF�HMS+[���8���m~�h�䃶o�h�K_<��b���]RWy�����a}�J�1#�<�i\q�-��V/�6U�x��mek�5�1���8R%�yv��Jk�SZ�������,��N�Ü�j�Z�Ef���B�>r��%��tu�*��䌆h!]<���r9ң��1��a�>���5RV�����-���f�Ǩ�ltY���Q��qdP��BLUk��t���f3�Ȋ�=(��5WC����~l�ߊ�?c)��.5T���9������Z�8m�����sXI��:�GpX�o7�O�2V���RA5iV�7�(����[���Sˣ�H���"e���'w@�a3��n��ٚYL��.�����93�=��M,��m2C�����x��x��Ԟ/�/qDu{a�j�p��6�����,e2Z����Q<}/�~iͽE��ʭVύh�����VF_�JF���Ĵ�Gp�e\\�z�0�1��=c�6��u2v���h�KVn�R�]{��'B���9!�~�PYr,�L���		���m+i�[�����������{������}]m�S���dnT;��O1Z8a�v$����̘)����<@j�/�"�.y_��dS(g`Vb�Xyq�"#t�X�0g�0�s�w�6�P�����݉'L�5��WS��V��O�����nh���嗹�I�X	y;�d�u����x��a��u(��1���4��B����`��f�I�P��s_=Kdt&.I�fa
�vɢ�0��C��f�����n�b�K���+q2�H����5ȩ��<-q�3ȨdLF���MA���^���B�h�������Ew����K�`3�Nb� �s$� ��sÔ�c(��@!f�;	|���Sk�O��ŭ�|��k�\_�x�����:_ ������ܿ�_�����_0�Я��_W�����_���W�����v�����B����Oa�o �J��y��J�-�7�~E{\�nW������%T?�~E��D�/o ��s��<�(?A~_1O��A�+���p=~_��'�	���}��6xׁ�+����A�������>x}���a5���z%u�>8}o�rb�����w���<�|�s^�\W2������%�Q�r��f/�ݏ��E{��s<��)O��?��i�����?�^�4{�?�^�y����a���O�w�gً	f�ҧٻ�Y�2ޯ�^L�({i�a��x��+�f/�=�^����i��>�^$��>f/��0{�g/{��������?|��/���      &   �  x���Ir�HD��]\�y��<��a���N:z�2ս(Z�A�@f�I����+�li��U�x���0k�*sc�b��_���;^׿�.�nB��-i������l�4.���,fT�R:�+�<]+}G:��e���@���7q���fM������'qL�,���[#IK\�zq�T�9a�^=2!��<���#u�h��(i�f��I�u�Qx�IZ�cͤ��H�Mm9|�L����f+
�U�.���� Ջً~��S:�js��ගv�����L�jx�cͦ�Ѧ(�$�옞"��1�p��L/�^�HS�<V�]:����ዅʲ��s��}�v��
+)~�[�~�����l̄��\�p��e�� �<Hl�s2E�7J�D�Y���B�H�q]0�M�#��Ls5�k��������)�-8P��k �+ڪ`��0j5��iН���F_(�(�{/pT
;P�>�ˑ�B���p�
�a{����Jb)��Xkl���>t����+�:#K4��xN���lZ�C�T��L#�U��M��SH�B]����Zݧ�I>0(׻�5ނPN/�1a�e�������ً���I!*פ����@π۬��5�@)�f�C]�;/<b����£zG��	�w@�s���7<ot~�=�t��<w6?����62߹���H?���ug�ymG����ż�	�7o0~���N��@�\.?��w
?W�����~Q�?�7���v>���;v�?Ìw�Ꝺ�!��������z��v6��h�b\�Q�h�}�8�d�ؾ�9+��Q�b��[���}�6gA�|�.gA��>'A�M=R|=?
R�� ��GA�u���Q��i�Y�b�O�4�,H��(H�ς�����:
R@�(H�ς�~��'A�r��'A�v�H�Q�#GA�y���Q�f��������C      '   �  x�ŗKn�0@��)t�����U��m�I?�2�	E',$Ҡ$��"�|�S;�S�1$��?�������4�h����$�uP&�D��L�����Ô���C�9%t��	9wY]V��F�����Q��SrY��z>:4��hB����ʃdS0��$���p�;�|�]A��i�i���\আ����h]��ZId�4��Ǆ1v;�A�2��ָ�٩$oȉw��N%y���	����
���r�i�GI0SO혙�ŝ�s������p�J[��jC�������2�
�ƽ�؈����z@�,��N,�	�ؖ�־@��8��=��ćb��<���j�\7��k�Lp<��q�Va���7���|\�`]�mn!�m�#��Ԧ�OL�078�:Vbq7�b �ⷎ�l0����J��͖GP�/S�S0o��9s�Y܃��r�|����q�#�{^g�m����K�&
�&�����F�q��*X�`P�>J0:���<$��s[���
Ԩ�����m��0��[A��;����c[s�������dc�g�1ՖmlؕmlԊml�3�x�3���8�-�8��6.ڳ��.,��m�#���>X��[�L��a��-Y&X�,�-˄��2![�L��Y&�=�L��c��e2�BI[�D��D�����i"�~h"UK��a�4���4��4Qi+�(�3M�&�oG%vK%�ތ�j3�z5���      (     x�m�ɍ�8EϪ`�"s���Ǟ9�@�k�e�o씓�Q�nO�:�F��������ބ��q�4��w�EW��[�O�O���D^{)6s��k��ʨԳ_�I�(wS�s��P�c�f/�o���:)�3Sq�8��˓xO�>y>�~L$V�u5��	c�j��w㿝<>�˭ZZ�o_��*�~�diJ���c�2⩟IUys�n{}��e��@���4?j"ҭn��;��#���bz,�-��>u
�h(ϳ�v�Lpn/���)�:ܙ�>*��h �&ݝ' T��:�7@�˨��!n:�`*/g��Tq����v�k�����%7k�}�L'Mό����y |!��i ���m�~�S�8?wN�eZ<ϑ�z
@��� A�}C�k�v������ᠫ&1~A4l�%[ş������<��.M�]`����8rP��k-Qw�Y��`��(E��Y'X��bD�)�Ý@�
��u] ��r>
~e��X3��&V5�cޒ�B����S$�3����;��N����Q�@[s��$.> i,	�S�g�wN,)?f-�(�}��;#|�2"pp�F�LH���$��Q�.�B��o����*���_�K������Q���[`u�h�B�I#<�a׹�=�L2 hք�\J{x�r�WA�^K�������Ga���&O����fӃ|0@֪ف�9�T� ��ӛs����p�57�O�p�ߎ��h�03\ qx�D�ļ c�"A� ~L��������@����	�.�A��v��(DD���Q��B�^�V
�m���/'6)�8��Aub8@�_���v��	j�3@�*Aw~;m}�N�w�*7A�q8Q�� ��A	wY��'�>�bC*,�f�89zc�]����1��������N�>��`'�2��&	�y�jgd;;������-
�D0����*ֽhu��f�^.�pv�o�"�w�o�8�G9�C����]�����Ȯi@�
6�lV!��Ȫ_�,����E>D$1�����~�i���     