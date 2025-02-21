PGDMP                         y            contabilidad    13.2    13.2 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    31753    contabilidad    DATABASE     p   CREATE DATABASE contabilidad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE contabilidad;
                postgres    false            �            1259    48269    administrador    TABLE     {   CREATE TABLE public.administrador (
    adm_id integer NOT NULL,
    adm_nom character varying(60),
    adm_val integer
);
 !   DROP TABLE public.administrador;
       public         heap    postgres    false            �            1259    48267    administrador_adm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.administrador_adm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.administrador_adm_id_seq;
       public          postgres    false    206            �           0    0    administrador_adm_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.administrador_adm_id_seq OWNED BY public.administrador.adm_id;
          public          postgres    false    205            �            1259    48300    gastosoinversion    TABLE     �   CREATE TABLE public.gastosoinversion (
    gas_id integer NOT NULL,
    gas_tip integer,
    gas_nom character varying(60),
    gas_val integer,
    gas_fech date,
    gas_des character varying(255),
    gas_adm_id integer
);
 $   DROP TABLE public.gastosoinversion;
       public         heap    postgres    false            �            1259    48298    gastosoinversion_gas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gastosoinversion_gas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.gastosoinversion_gas_id_seq;
       public          postgres    false    208            �           0    0    gastosoinversion_gas_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.gastosoinversion_gas_id_seq OWNED BY public.gastosoinversion.gas_id;
          public          postgres    false    207            �            1259    40060    image    TABLE     �   CREATE TABLE public.image (
    ima_id integer NOT NULL,
    ima_path character varying(255),
    ima_pro_id character varying(255)
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    40058    image_ima_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_ima_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.image_ima_id_seq;
       public          postgres    false    204            �           0    0    image_ima_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.image_ima_id_seq OWNED BY public.image.ima_id;
          public          postgres    false    203            �            1259    40013    producto    TABLE     �   CREATE TABLE public.producto (
    pro_id character varying(255) NOT NULL,
    pro_nom character varying(60),
    pro_valc integer,
    pro_valv integer,
    pro_gan integer,
    pro_cant integer,
    pro_path character varying(255)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    40036    venta    TABLE     �   CREATE TABLE public.venta (
    ven_id integer NOT NULL,
    ven_val integer,
    ven_cant integer,
    ven_tot integer,
    ven_fech date,
    ven_gas integer,
    ven_gan integer,
    ven_pro_id character varying(255),
    ven_adm_id integer
);
    DROP TABLE public.venta;
       public         heap    postgres    false            �            1259    40034    venta_ven_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_ven_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.venta_ven_id_seq;
       public          postgres    false    202            �           0    0    venta_ven_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.venta_ven_id_seq OWNED BY public.venta.ven_id;
          public          postgres    false    201            <           2604    48272    administrador adm_id    DEFAULT     |   ALTER TABLE ONLY public.administrador ALTER COLUMN adm_id SET DEFAULT nextval('public.administrador_adm_id_seq'::regclass);
 C   ALTER TABLE public.administrador ALTER COLUMN adm_id DROP DEFAULT;
       public          postgres    false    205    206    206            =           2604    48303    gastosoinversion gas_id    DEFAULT     �   ALTER TABLE ONLY public.gastosoinversion ALTER COLUMN gas_id SET DEFAULT nextval('public.gastosoinversion_gas_id_seq'::regclass);
 F   ALTER TABLE public.gastosoinversion ALTER COLUMN gas_id DROP DEFAULT;
       public          postgres    false    207    208    208            ;           2604    40063    image ima_id    DEFAULT     l   ALTER TABLE ONLY public.image ALTER COLUMN ima_id SET DEFAULT nextval('public.image_ima_id_seq'::regclass);
 ;   ALTER TABLE public.image ALTER COLUMN ima_id DROP DEFAULT;
       public          postgres    false    203    204    204            :           2604    40039    venta ven_id    DEFAULT     l   ALTER TABLE ONLY public.venta ALTER COLUMN ven_id SET DEFAULT nextval('public.venta_ven_id_seq'::regclass);
 ;   ALTER TABLE public.venta ALTER COLUMN ven_id DROP DEFAULT;
       public          postgres    false    201    202    202            �          0    48269    administrador 
   TABLE DATA           A   COPY public.administrador (adm_id, adm_nom, adm_val) FROM stdin;
    public          postgres    false    206   �,       �          0    48300    gastosoinversion 
   TABLE DATA           l   COPY public.gastosoinversion (gas_id, gas_tip, gas_nom, gas_val, gas_fech, gas_des, gas_adm_id) FROM stdin;
    public          postgres    false    208   .-       �          0    40060    image 
   TABLE DATA           =   COPY public.image (ima_id, ima_path, ima_pro_id) FROM stdin;
    public          postgres    false    204   K-       �          0    40013    producto 
   TABLE DATA           d   COPY public.producto (pro_id, pro_nom, pro_valc, pro_valv, pro_gan, pro_cant, pro_path) FROM stdin;
    public          postgres    false    200   '4       �          0    40036    venta 
   TABLE DATA           w   COPY public.venta (ven_id, ven_val, ven_cant, ven_tot, ven_fech, ven_gas, ven_gan, ven_pro_id, ven_adm_id) FROM stdin;
    public          postgres    false    202   �:       �           0    0    administrador_adm_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.administrador_adm_id_seq', 3, true);
          public          postgres    false    205            �           0    0    gastosoinversion_gas_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.gastosoinversion_gas_id_seq', 1, false);
          public          postgres    false    207            �           0    0    image_ima_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.image_ima_id_seq', 53, true);
          public          postgres    false    203            �           0    0    venta_ven_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.venta_ven_id_seq', 265, true);
          public          postgres    false    201            E           2606    48274     administrador administrador_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (adm_id);
 J   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_pkey;
       public            postgres    false    206            G           2606    48305 &   gastosoinversion gastosoinversion_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.gastosoinversion
    ADD CONSTRAINT gastosoinversion_pkey PRIMARY KEY (gas_id);
 P   ALTER TABLE ONLY public.gastosoinversion DROP CONSTRAINT gastosoinversion_pkey;
       public            postgres    false    208            C           2606    40068    image image_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (ima_id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    204            ?           2606    40017    producto producto_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (pro_id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    200            A           2606    40041    venta venta_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (ven_id);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    202            K           2606    48306 1   gastosoinversion gastosoinversion_gas_adm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gastosoinversion
    ADD CONSTRAINT gastosoinversion_gas_adm_id_fkey FOREIGN KEY (gas_adm_id) REFERENCES public.administrador(adm_id);
 [   ALTER TABLE ONLY public.gastosoinversion DROP CONSTRAINT gastosoinversion_gas_adm_id_fkey;
       public          postgres    false    206    2885    208            J           2606    40069    image image_ima_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_ima_pro_id_fkey FOREIGN KEY (ima_pro_id) REFERENCES public.producto(pro_id);
 E   ALTER TABLE ONLY public.image DROP CONSTRAINT image_ima_pro_id_fkey;
       public          postgres    false    204    200    2879            I           2606    48290    venta ven_adm_id    FK CONSTRAINT     ~   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT ven_adm_id FOREIGN KEY (ven_adm_id) REFERENCES public.administrador(adm_id);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT ven_adm_id;
       public          postgres    false    2885    202    206            H           2606    40042    venta venta_ven_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_ven_pro_id_fkey FOREIGN KEY (ven_pro_id) REFERENCES public.producto(pro_id);
 E   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_ven_pro_id_fkey;
       public          postgres    false    2879    200    202            �   9   x�3��K-,��4767�4�2�L-��N�44250�2�L�K)J-r�M��b���� M0�      �      x������ � �      �   �  x�UWɎ-�]���I��5�H$��������ZEQg"��_���_�������t��"�k�-Q�y�vxt�a��o������l�B��Q�$��l3e'=�JW��cz�5��ܻ�ڳ���B��T\޺�J�eS=���yZLR��?����bH����Zq�Zƞ�V�=>�CV��ZĨ�휽JTr�n.�i�S�ϓl�҆Zv<ӼX��Y5�����[Jm��9W�L�S���������N,,���>���n��9��\��8@���ez�%Iup�]� �FT�B� ��(A2J���g���)�D��K�2WPiW	S��>T_4F;��J#��
���Ww�� �.��̪�Ya���T.� �u�C�����$wz 7�Q�+�Z��nQ��O�3P{�)s�'���1ک��<D?��f�ܤ��]W��1��?��
9�2)A�f��(N2_���{f�C/�,��jj��� �q[���C��m}+D�u�V��k�*Z�2����]]�,��fg��k@RZw�����5Ҧ�o���8`�Ofq�UfB t�Y"�Oi���U��ͭĆL����A�z~b�4b�6&��8u��kP0��^n�����^��	.��a@�x����U!�� ���7�����~���*d�7�T�Q�^��>���U?�ꂂu̸�# ��P4�I����Gs�#҂.Xً���q��[�����&�n'0����H���C/7r�W�Y!)��q�(�YLad�����Zbn� E@ ����:�6�d��_fܴr�1A�+aF$Y��q>�̯�Օ%��V����Yg���$�/!z�K�'��k1��ح����kň0��=�9�Џ�@Zo8|�aʆ� /�?����IҤ.������1C�pZ��nF�..�,���D���	��~��b#]�i t�j!X�'����op(±V-�?����<	�6�����Y'���.�q�p4��dKb�}!��ʹ/���"��b��]����yt���a�\�o̳f,*f�We��ɂ��+Zp��;�GC���9~�����v!�N�+�W�3��8��
�6NN���Ni��3,�f��z�a�Ax�����7^uRM[���h��lw`aj�"�\�9������WR���3��G��|��,�zBߙqXۈ�9��^2��H��3���_����X7�2{J+˥�J���-�4[6+u�����}����h�ԣ�,X�����t+~��������p�f�����.f=��sc��2��+�W"������ �D��x3v�ގ|G���sb����C����1\��S����7,q�a��c9�?P�Y��@r��^|F˰%��/%�M�+����2)��Ǳh8V8�w��}��6
�	�7���X��5t��sU�yݮ�$GM�����6�q��׺��]�n�A=̧��
|�
���T���-P�q��߬�yO^�����
�&�u��h:��tv�%`C��Ff�ev�6,����#ﵩK�@0�A��2~��=ua���S�[� ��=�0c�(�-ױd<��ˋ&إ����R��#6R�~�F�`��<\��6���H�`�:�2, �2�i� ��)�l��J/z�ͫ�֬��'����Wa�ČCR�Y�*ԍY����ˌ�$�9�n ��]XO�u���uM)+گe|�m��$mE,������<�:>~]      �   s  x�}V[r��朂���%|��) �GTS�f�w}+��sݔ4�v#:��JVefeUu.gIVsVS$��h�K椣�^�Zh_֕�c���J��:))�d�C��2��~��Д9&+�OYDW��2i[����G�g�<�ە'eO@��HO9g�)T-M�fI������2�	yz��A���r��nk�93�'?�Fq�Uv@'KnAr I��N[�}�N�2����{��.������.�)�5��[�+	�X[�Ϻ
���X/t"+}�J�S��v�\�']������l;bt����eIقx�
+����[�T�N�ZT�Z�n^�Ι�c�Y-U�9%J�d'�@�9)���le�܎�Z�)�/��E	��ulE�"�5���՗�X.ͽ<XDw�ܰH|��̙�02��0�H�&a�B
�z����m]�r��:;j�m���r�haCEw����\��r�*�.됯Q[ñw��}�5�|�8.1��RTj%zUsvQ��>����Ių3�{��(RUyӄ���DrM"KM��j���ة��^o�c����o 5M�^]Hgu�����ک^]RI�`�d�Zyz^��ܖ�����˵�h�n�08TnR���*h+�M�%�d���c��e�[��d�8�����$�Cs3V�)P.@��lS����˲�����e�K[J��YF�R{6���`���T�&6 )b���/4g�4Ƌ���NѠk5&"x4=�**�&J�a�T�X�����ԝ� ����{��s�i읷Na,b[-|��J� �^���!�u[i?y��ɺ�����0Qe��p�`F�����@t�$%�Gi~�ajW�����HNa��ʏ����Dp��=�Y`���Z�qH�����i�ϰ^Ъ{����J��%$(�0lR�R��
��6�|}����|��p0K�Uk��ϊR5��S��i57�ӯ堗��nt����ק�e���VHF�1�en�YV��)�^�6����~,�N�>���=��f�4!�6I�k�j�\������_��R����E�j�ْ�i�HF��B`I����<��N?����k��NH�=�kP�5�ֳ�&`�!���w=]x_��\?�K�Ѣ0�#oZD�T���QW���QϷP��C�O���b�
�T�pA���V!��T���#*�o8s�]*�Ɯ�F���bS`uG��Cg/3Fsz31 ���ָ=�y1�A�G�P�^p�-mpd_�}��Ʋ��?F����Ä�u�7���x�7a�]EN�v%0�Eۭ�{�n����j���!�*E93tNJ��E���I���
ڻA���_�]�=�-4�-q8x[�`.J�͊$�"���H�}/�M%�Y.��(��TSA��M��W�"j��,7���ðl�}}��$��B������`GKVa���;F�+@
1�j+B%���JlF�N���C̽��n����;s���� ���Ӡ�`CD���s�q$ټk�q.����r�!��@�G��dB>����P	q�eӺ�����ج��:����ν������!���텿�o�� �k��S�}����8،�=���}kG.m-�^2�9� [�/\�h�n��
x_�iJ�2�����۷o��xX�      �     x���Irc9D��]�A� ܥ7��NR���-U�6bX�~C"Af�c�!=O��(Vb	1���icDJsl�-�|�S�kG��r�!}0��$}v(q�]yP�P��Z�L��Uk,\���ŏ��"%��Rl]�3��I�G[KX�>��(�[/�|A
g�b�!��:IY��!Ѹ���9N�QePҳR�[���W���L9�E"���tʫU�y���G�~��k��W�G*#3I��Ć��9���m��~Y�ɒ����%��L�7q5d����fjM�N}���f�����6?����l�Q��o�"m��%�:�4y��|��)��io�h
��F����R޳�f�{�f|3��̳PL�h�d{Gh�]���PX�!�K��'K-ay��mQ���	���h7�o�Y	�Cڏ��D�JP`Z�J�j%��w�>�l�W�r<�Gj��0��X�,T��NV�S�>�*����$�$CwکR��I�""�A��l��b-�� ��ԢURPTo��A��Y6i���������y����Z5c 9�@zE�#2�z�I
F��3�o���ӂ)���uw�M�G����][��I�eɝ������}�Y�p���3���#�(���ֲ9��J�����\�i �y~�)�0�\:��ގ����$n���ͼ�E�w6���p�|
�[��U��:`2&�W��+�~2�;�Rz�M����D/�����*�����
H����╻#*��Iع@�p��ˎSUjcv�i�^,��{���U�cԝN,�;Q�d�,�V��dn�,��\�|FI2؞q�*2I;O��Y��$걆v�o��x�����Q[$+ʾ��=�݄��o:Ȏ��c��|�+7	0kg�Z�X*p�ڝ�h!�d�q7}���=h�V���u�v.X���u?�gm��b�ya�+H~�䑩�����)��-úw� )�aT�������~b�@�~��T�c��I7O���ao���.�d��6�4��pW�6AWZ�����\���j��K3�>�b�:Ƨ`�A]�j�ˑ��9%�+�^_�꽄p���4����������\cC=��V\=�^����|�n<1��Z��K�^:���8>���s>6�uA�`��+�����ǿ�|||��L`�     