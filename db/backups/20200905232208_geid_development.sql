PGDMP                         x            geid_development %   10.12 (Ubuntu 10.12-0ubuntu0.18.04.1) %   10.12 (Ubuntu 10.12-0ubuntu0.18.04.1) �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    1302933    geid_development    DATABASE     �   CREATE DATABASE geid_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'fr_FR.UTF-8' LC_CTYPE = 'fr_FR.UTF-8';
     DROP DATABASE geid_development;
          
   geid_admin    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6                        3079    13047    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    1303494    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public      
   geid_admin    false    6            �            1259    1303492 !   active_storage_attachments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public    
   geid_admin    false    6    249            �           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
            public    
   geid_admin    false    248            �            1259    1303482    active_storage_blobs    TABLE     F  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public      
   geid_admin    false    6            �            1259    1303480    active_storage_blobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public    
   geid_admin    false    6    247            �           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
            public    
   geid_admin    false    246            �            1259    1302942    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public      
   geid_admin    false    6            �            1259    1303259    arrival_mails    TABLE     Q  CREATE TABLE public.arrival_mails (
    id bigint NOT NULL,
    uid character varying,
    register_id bigint,
    internal_reference character varying,
    external_reference character varying,
    departure_date timestamp without time zone,
    receipt_date timestamp without time zone,
    linked_to_mail character varying,
    reference_linked_mail character varying,
    to_answer character varying,
    response_limit_time timestamp without time zone,
    response_date timestamp without time zone,
    support_id bigint,
    nature_id bigint,
    correspondent_id bigint,
    object character varying,
    description text,
    reserved_suite character varying,
    folder_id bigint,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.arrival_mails;
       public      
   geid_admin    false    6            �            1259    1303257    arrival_mails_id_seq    SEQUENCE     }   CREATE SEQUENCE public.arrival_mails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.arrival_mails_id_seq;
       public    
   geid_admin    false    6    233            �           0    0    arrival_mails_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.arrival_mails_id_seq OWNED BY public.arrival_mails.id;
            public    
   geid_admin    false    232                       1259    1303626    ckeditor_assets    TABLE     f  CREATE TABLE public.ckeditor_assets (
    id bigint NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    data_fingerprint character varying,
    type character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.ckeditor_assets;
       public      
   geid_admin    false    6                       1259    1303624    ckeditor_assets_id_seq    SEQUENCE        CREATE SEQUENCE public.ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ckeditor_assets_id_seq;
       public    
   geid_admin    false    6    261            �           0    0    ckeditor_assets_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ckeditor_assets_id_seq OWNED BY public.ckeditor_assets.id;
            public    
   geid_admin    false    260            �            1259    1303547    comments    TABLE     *  CREATE TABLE public.comments (
    id bigint NOT NULL,
    content text,
    status character varying,
    user_id bigint,
    commentable_type character varying,
    commentable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.comments;
       public      
   geid_admin    false    6            �            1259    1303545    comments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public    
   geid_admin    false    253    6            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
            public    
   geid_admin    false    252                       1259    1303638    configs    TABLE     �  CREATE TABLE public.configs (
    id bigint NOT NULL,
    smtp_host character varying,
    smtp_user_name character varying,
    smtp_user_password character varying,
    smtp_domain character varying,
    smtp_address character varying,
    smtp_port integer,
    smtp_authentification character varying,
    smtp_enable_starttls_auto boolean,
    smtp_ssl boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.configs;
       public      
   geid_admin    false    6                       1259    1303636    configs_id_seq    SEQUENCE     w   CREATE SEQUENCE public.configs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.configs_id_seq;
       public    
   geid_admin    false    263    6            �           0    0    configs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.configs_id_seq OWNED BY public.configs.id;
            public    
   geid_admin    false    262            �            1259    1303184    correspondent_types    TABLE     -  CREATE TABLE public.correspondent_types (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 '   DROP TABLE public.correspondent_types;
       public      
   geid_admin    false    6            �            1259    1303182    correspondent_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.correspondent_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.correspondent_types_id_seq;
       public    
   geid_admin    false    6    225            �           0    0    correspondent_types_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.correspondent_types_id_seq OWNED BY public.correspondent_types.id;
            public    
   geid_admin    false    224            �            1259    1303201    correspondents    TABLE     �  CREATE TABLE public.correspondents (
    id bigint NOT NULL,
    uid character varying,
    correspondent_type_id bigint,
    organization_name character varying,
    contact_first_name character varying,
    contact_last_name character varying,
    contact_civility character varying,
    address character varying,
    contact_phone character varying,
    phone character varying,
    city character varying,
    country character varying,
    zip_code character varying,
    email character varying,
    contact_email character varying,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 "   DROP TABLE public.correspondents;
       public      
   geid_admin    false    6            �            1259    1303199    correspondents_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.correspondents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.correspondents_id_seq;
       public    
   geid_admin    false    6    227            �           0    0    correspondents_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.correspondents_id_seq OWNED BY public.correspondents.id;
            public    
   geid_admin    false    226            �            1259    1303306    departure_mails    TABLE     �  CREATE TABLE public.departure_mails (
    id bigint NOT NULL,
    uid character varying,
    register_id bigint,
    internal_reference character varying,
    departure_date timestamp without time zone,
    linked_to_mail character varying,
    reference_linked_mail character varying,
    to_answer character varying,
    response_limit_time timestamp without time zone,
    response_date timestamp without time zone,
    support_id bigint,
    nature_id bigint,
    correspondent_id bigint,
    object character varying,
    description text,
    folder_id bigint,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.departure_mails;
       public      
   geid_admin    false    6            �            1259    1303304    departure_mails_id_seq    SEQUENCE        CREATE SEQUENCE public.departure_mails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.departure_mails_id_seq;
       public    
   geid_admin    false    235    6            �           0    0    departure_mails_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.departure_mails_id_seq OWNED BY public.departure_mails.id;
            public    
   geid_admin    false    234            �            1259    1303126 
   directions    TABLE     	  CREATE TABLE public.directions (
    id bigint NOT NULL,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.directions;
       public      
   geid_admin    false    6            �            1259    1303124    directions_id_seq    SEQUENCE     z   CREATE SEQUENCE public.directions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.directions_id_seq;
       public    
   geid_admin    false    219    6            �           0    0    directions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.directions_id_seq OWNED BY public.directions.id;
            public    
   geid_admin    false    218            �            1259    1303143 	   divisions    TABLE     !  CREATE TABLE public.divisions (
    id bigint NOT NULL,
    direction_id bigint,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.divisions;
       public      
   geid_admin    false    6            �            1259    1303141    divisions_id_seq    SEQUENCE     y   CREATE SEQUENCE public.divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.divisions_id_seq;
       public    
   geid_admin    false    221    6            �           0    0    divisions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.divisions_id_seq OWNED BY public.divisions.id;
            public    
   geid_admin    false    220            �            1259    1303512 	   documents    TABLE     �  CREATE TABLE public.documents (
    id bigint NOT NULL,
    uid character varying,
    slug character varying,
    support_id bigint,
    nature_id bigint,
    folder_id bigint,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.documents;
       public      
   geid_admin    false    6            �            1259    1303510    documents_id_seq    SEQUENCE     y   CREATE SEQUENCE public.documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.documents_id_seq;
       public    
   geid_admin    false    6    251            �           0    0    documents_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;
            public    
   geid_admin    false    250                       1259    1303678    drive_attachments    TABLE       CREATE TABLE public.drive_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    attachable_type character varying NOT NULL,
    attachable_id bigint NOT NULL,
    drive_blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 %   DROP TABLE public.drive_attachments;
       public      
   geid_admin    false    6                       1259    1303676    drive_attachments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.drive_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.drive_attachments_id_seq;
       public    
   geid_admin    false    269    6            �           0    0    drive_attachments_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.drive_attachments_id_seq OWNED BY public.drive_attachments.id;
            public    
   geid_admin    false    268                       1259    1303666    drive_blobs    TABLE     =  CREATE TABLE public.drive_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
    DROP TABLE public.drive_blobs;
       public      
   geid_admin    false    6            
           1259    1303664    drive_blobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.drive_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.drive_blobs_id_seq;
       public    
   geid_admin    false    6    267            �           0    0    drive_blobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.drive_blobs_id_seq OWNED BY public.drive_blobs.id;
            public    
   geid_admin    false    266            �            1259    1302963    features    TABLE     3  CREATE TABLE public.features (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    subject_class character varying,
    description text,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.features;
       public      
   geid_admin    false    6            �            1259    1302961    features_id_seq    SEQUENCE     x   CREATE SEQUENCE public.features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.features_id_seq;
       public    
   geid_admin    false    201    6            �           0    0    features_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;
            public    
   geid_admin    false    200            �            1259    1303224    folders    TABLE     �  CREATE TABLE public.folders (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    path character varying,
    description text,
    status character varying,
    parent_id bigint,
    google_drive_parent_id character varying,
    google_drive_file_id character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.folders;
       public      
   geid_admin    false    6            �            1259    1303222    folders_id_seq    SEQUENCE     w   CREATE SEQUENCE public.folders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.folders_id_seq;
       public    
   geid_admin    false    6    229            �           0    0    folders_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.folders_id_seq OWNED BY public.folders.id;
            public    
   geid_admin    false    228            �            1259    1303430    imputation_items    TABLE     �  CREATE TABLE public.imputation_items (
    id bigint NOT NULL,
    uid character varying,
    title character varying,
    description text,
    due_date timestamp without time zone,
    start_date timestamp without time zone,
    completed_date timestamp without time zone,
    status character varying,
    priority character varying,
    imputation_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.imputation_items;
       public      
   geid_admin    false    6            �            1259    1303428    imputation_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.imputation_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.imputation_items_id_seq;
       public    
   geid_admin    false    6    243            �           0    0    imputation_items_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.imputation_items_id_seq OWNED BY public.imputation_items.id;
            public    
   geid_admin    false    242            �            1259    1303393    imputations    TABLE     �  CREATE TABLE public.imputations (
    id bigint NOT NULL,
    uid character varying,
    imputable_type character varying,
    imputable_id bigint,
    direction_id bigint,
    division_id bigint,
    service_id bigint,
    recipient_id bigint,
    viewed_at timestamp without time zone,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.imputations;
       public      
   geid_admin    false    6            �            1259    1303391    imputations_id_seq    SEQUENCE     {   CREATE SEQUENCE public.imputations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.imputations_id_seq;
       public    
   geid_admin    false    6    241            �           0    0    imputations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.imputations_id_seq OWNED BY public.imputations.id;
            public    
   geid_admin    false    240            �            1259    1303052    natures    TABLE     !  CREATE TABLE public.natures (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.natures;
       public      
   geid_admin    false    6            �            1259    1303050    natures_id_seq    SEQUENCE     w   CREATE SEQUENCE public.natures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.natures_id_seq;
       public    
   geid_admin    false    6    211            �           0    0    natures_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.natures_id_seq OWNED BY public.natures.id;
            public    
   geid_admin    false    210            �            1259    1303565    notifications    TABLE     }  CREATE TABLE public.notifications (
    id bigint NOT NULL,
    nature character varying,
    recipient_id bigint,
    content text,
    status character varying,
    readed_at timestamp without time zone,
    notificable_type character varying,
    notificable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.notifications;
       public      
   geid_admin    false    6            �            1259    1303563    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public    
   geid_admin    false    255    6            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
            public    
   geid_admin    false    254            �            1259    1303086    organization_types    TABLE     ,  CREATE TABLE public.organization_types (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 &   DROP TABLE public.organization_types;
       public      
   geid_admin    false    6            �            1259    1303084    organization_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organization_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.organization_types_id_seq;
       public    
   geid_admin    false    215    6            �           0    0    organization_types_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.organization_types_id_seq OWNED BY public.organization_types.id;
            public    
   geid_admin    false    214            �            1259    1303103    organizations    TABLE     ?  CREATE TABLE public.organizations (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    organization_type_id bigint,
    slogan character varying,
    address character varying,
    city character varying,
    state character varying,
    country character varying,
    phone character varying,
    fax character varying,
    zip_code character varying,
    web_site character varying,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.organizations;
       public      
   geid_admin    false    6            �            1259    1303101    organizations_id_seq    SEQUENCE     }   CREATE SEQUENCE public.organizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.organizations_id_seq;
       public    
   geid_admin    false    6    217            �           0    0    organizations_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.organizations_id_seq OWNED BY public.organizations.id;
            public    
   geid_admin    false    216            �            1259    1302997    permission_items    TABLE     !  CREATE TABLE public.permission_items (
    id bigint NOT NULL,
    uid character varying,
    permission_id bigint,
    action_name character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.permission_items;
       public      
   geid_admin    false    6            �            1259    1302995    permission_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permission_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.permission_items_id_seq;
       public    
   geid_admin    false    6    205            �           0    0    permission_items_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.permission_items_id_seq OWNED BY public.permission_items.id;
            public    
   geid_admin    false    204            �            1259    1302974    permissions    TABLE     
  CREATE TABLE public.permissions (
    id bigint NOT NULL,
    uid character varying,
    feature_id bigint,
    role_id bigint,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.permissions;
       public      
   geid_admin    false    6            �            1259    1302972    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public    
   geid_admin    false    203    6            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public    
   geid_admin    false    202            �            1259    1303447    profiles    TABLE       CREATE TABLE public.profiles (
    id bigint NOT NULL,
    uid character varying,
    civility character varying,
    first_name character varying,
    last_name character varying,
    "position" character varying,
    address character varying,
    phone character varying,
    description text,
    status character varying,
    service_id bigint,
    direction_id bigint,
    division_id bigint,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.profiles;
       public      
   geid_admin    false    6            �            1259    1303445    profiles_id_seq    SEQUENCE     x   CREATE SEQUENCE public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profiles_id_seq;
       public    
   geid_admin    false    245    6            �           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
            public    
   geid_admin    false    244            �            1259    1303035 	   registers    TABLE     �  CREATE TABLE public.registers (
    id bigint NOT NULL,
    uid character varying,
    register_type character varying,
    name character varying,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    reference character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.registers;
       public      
   geid_admin    false    6            �            1259    1303033    registers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.registers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.registers_id_seq;
       public    
   geid_admin    false    209    6            �           0    0    registers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.registers_id_seq OWNED BY public.registers.id;
            public    
   geid_admin    false    208            �            1259    1303353    request_types    TABLE     '  CREATE TABLE public.request_types (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.request_types;
       public      
   geid_admin    false    6            �            1259    1303351    request_types_id_seq    SEQUENCE     }   CREATE SEQUENCE public.request_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.request_types_id_seq;
       public    
   geid_admin    false    6    237            �           0    0    request_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.request_types_id_seq OWNED BY public.request_types.id;
            public    
   geid_admin    false    236            �            1259    1303370    requests    TABLE     �  CREATE TABLE public.requests (
    id bigint NOT NULL,
    uid character varying,
    request_type_id bigint,
    first_name character varying,
    last_name character varying,
    gender character varying,
    born_date timestamp without time zone,
    born_place character varying,
    academic_year character varying,
    grade character varying,
    specialty character varying,
    request_date timestamp without time zone,
    description text,
    identification_number text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.requests;
       public      
   geid_admin    false    6            �            1259    1303368    requests_id_seq    SEQUENCE     x   CREATE SEQUENCE public.requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.requests_id_seq;
       public    
   geid_admin    false    239    6            �           0    0    requests_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.requests_id_seq OWNED BY public.requests.id;
            public    
   geid_admin    false    238            �            1259    1302952    roles    TABLE       CREATE TABLE public.roles (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.roles;
       public      
   geid_admin    false    6            �            1259    1302950    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public    
   geid_admin    false    6    199            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public    
   geid_admin    false    198            �            1259    1302934    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public      
   geid_admin    false    6            �            1259    1303166    services    TABLE     :  CREATE TABLE public.services (
    id bigint NOT NULL,
    uid character varying,
    division_id bigint,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.services;
       public      
   geid_admin    false    6            �            1259    1303164    services_id_seq    SEQUENCE     x   CREATE SEQUENCE public.services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.services_id_seq;
       public    
   geid_admin    false    223    6            �           0    0    services_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;
            public    
   geid_admin    false    222            �            1259    1303069    supports    TABLE     "  CREATE TABLE public.supports (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.supports;
       public      
   geid_admin    false    6            �            1259    1303067    supports_id_seq    SEQUENCE     x   CREATE SEQUENCE public.supports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.supports_id_seq;
       public    
   geid_admin    false    213    6            �           0    0    supports_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.supports_id_seq OWNED BY public.supports.id;
            public    
   geid_admin    false    212                       1259    1303589    taggings    TABLE       CREATE TABLE public.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_type character varying,
    taggable_id integer,
    tagger_type character varying,
    tagger_id integer,
    context character varying(128),
    created_at timestamp without time zone
);
    DROP TABLE public.taggings;
       public      
   geid_admin    false    6                       1259    1303587    taggings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.taggings_id_seq;
       public    
   geid_admin    false    6    259            �           0    0    taggings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;
            public    
   geid_admin    false    258                       1259    1303578    tags    TABLE     �   CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    taggings_count integer DEFAULT 0
);
    DROP TABLE public.tags;
       public      
   geid_admin    false    6                        1259    1303576    tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public    
   geid_admin    false    6    257            �           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
            public    
   geid_admin    false    256            �            1259    1303242    tasks    TABLE       CREATE TABLE public.tasks (
    id bigint NOT NULL,
    uid character varying,
    title character varying,
    description text,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.tasks;
       public      
   geid_admin    false    6            �            1259    1303240    tasks_id_seq    SEQUENCE     u   CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tasks_id_seq;
       public    
   geid_admin    false    6    231            �           0    0    tasks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;
            public    
   geid_admin    false    230            	           1259    1303649    tickets    TABLE     �  CREATE TABLE public.tickets (
    id bigint NOT NULL,
    uid character varying,
    title character varying,
    priority character varying,
    content text,
    due_date timestamp without time zone,
    start_date timestamp without time zone,
    completed_date timestamp without time zone,
    status character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.tickets;
       public      
   geid_admin    false    6                       1259    1303647    tickets_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public    
   geid_admin    false    6    265            �           0    0    tickets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;
            public    
   geid_admin    false    264            �            1259    1303014    users    TABLE     u  CREATE TABLE public.users (
    id bigint NOT NULL,
    uid character varying,
    login character varying,
    slug character varying,
    role_id bigint NOT NULL,
    created_by integer,
    status character varying,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public      
   geid_admin    false    6            �            1259    1303012    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public    
   geid_admin    false    207    6            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public    
   geid_admin    false    206                       2604    1303497    active_storage_attachments id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    248    249    249                       2604    1303485    active_storage_blobs id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    246    247    247            �           2604    1303262    arrival_mails id    DEFAULT     t   ALTER TABLE ONLY public.arrival_mails ALTER COLUMN id SET DEFAULT nextval('public.arrival_mails_id_seq'::regclass);
 ?   ALTER TABLE public.arrival_mails ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    233    232    233                       2604    1303629    ckeditor_assets id    DEFAULT     x   ALTER TABLE ONLY public.ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('public.ckeditor_assets_id_seq'::regclass);
 A   ALTER TABLE public.ckeditor_assets ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    261    260    261                       2604    1303550    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    252    253    253                       2604    1303641 
   configs id    DEFAULT     h   ALTER TABLE ONLY public.configs ALTER COLUMN id SET DEFAULT nextval('public.configs_id_seq'::regclass);
 9   ALTER TABLE public.configs ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    263    262    263            �           2604    1303187    correspondent_types id    DEFAULT     �   ALTER TABLE ONLY public.correspondent_types ALTER COLUMN id SET DEFAULT nextval('public.correspondent_types_id_seq'::regclass);
 E   ALTER TABLE public.correspondent_types ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    224    225    225            �           2604    1303204    correspondents id    DEFAULT     v   ALTER TABLE ONLY public.correspondents ALTER COLUMN id SET DEFAULT nextval('public.correspondents_id_seq'::regclass);
 @   ALTER TABLE public.correspondents ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    226    227    227            �           2604    1303309    departure_mails id    DEFAULT     x   ALTER TABLE ONLY public.departure_mails ALTER COLUMN id SET DEFAULT nextval('public.departure_mails_id_seq'::regclass);
 A   ALTER TABLE public.departure_mails ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    235    234    235            �           2604    1303129    directions id    DEFAULT     n   ALTER TABLE ONLY public.directions ALTER COLUMN id SET DEFAULT nextval('public.directions_id_seq'::regclass);
 <   ALTER TABLE public.directions ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    219    218    219            �           2604    1303146    divisions id    DEFAULT     l   ALTER TABLE ONLY public.divisions ALTER COLUMN id SET DEFAULT nextval('public.divisions_id_seq'::regclass);
 ;   ALTER TABLE public.divisions ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    221    220    221                       2604    1303515    documents id    DEFAULT     l   ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);
 ;   ALTER TABLE public.documents ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    250    251    251                       2604    1303681    drive_attachments id    DEFAULT     |   ALTER TABLE ONLY public.drive_attachments ALTER COLUMN id SET DEFAULT nextval('public.drive_attachments_id_seq'::regclass);
 C   ALTER TABLE public.drive_attachments ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    269    268    269                       2604    1303669    drive_blobs id    DEFAULT     p   ALTER TABLE ONLY public.drive_blobs ALTER COLUMN id SET DEFAULT nextval('public.drive_blobs_id_seq'::regclass);
 =   ALTER TABLE public.drive_blobs ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    266    267    267            �           2604    1302966    features id    DEFAULT     j   ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);
 :   ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    201    200    201            �           2604    1303227 
   folders id    DEFAULT     h   ALTER TABLE ONLY public.folders ALTER COLUMN id SET DEFAULT nextval('public.folders_id_seq'::regclass);
 9   ALTER TABLE public.folders ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    228    229    229                       2604    1303433    imputation_items id    DEFAULT     z   ALTER TABLE ONLY public.imputation_items ALTER COLUMN id SET DEFAULT nextval('public.imputation_items_id_seq'::regclass);
 B   ALTER TABLE public.imputation_items ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    243    242    243                       2604    1303396    imputations id    DEFAULT     p   ALTER TABLE ONLY public.imputations ALTER COLUMN id SET DEFAULT nextval('public.imputations_id_seq'::regclass);
 =   ALTER TABLE public.imputations ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    241    240    241            �           2604    1303055 
   natures id    DEFAULT     h   ALTER TABLE ONLY public.natures ALTER COLUMN id SET DEFAULT nextval('public.natures_id_seq'::regclass);
 9   ALTER TABLE public.natures ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    211    210    211                       2604    1303568    notifications id    DEFAULT     t   ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 ?   ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    254    255    255            �           2604    1303089    organization_types id    DEFAULT     ~   ALTER TABLE ONLY public.organization_types ALTER COLUMN id SET DEFAULT nextval('public.organization_types_id_seq'::regclass);
 D   ALTER TABLE public.organization_types ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    215    214    215            �           2604    1303106    organizations id    DEFAULT     t   ALTER TABLE ONLY public.organizations ALTER COLUMN id SET DEFAULT nextval('public.organizations_id_seq'::regclass);
 ?   ALTER TABLE public.organizations ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    216    217    217            �           2604    1303000    permission_items id    DEFAULT     z   ALTER TABLE ONLY public.permission_items ALTER COLUMN id SET DEFAULT nextval('public.permission_items_id_seq'::regclass);
 B   ALTER TABLE public.permission_items ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    204    205    205            �           2604    1302977    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    202    203    203                       2604    1303450    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    245    244    245            �           2604    1303038    registers id    DEFAULT     l   ALTER TABLE ONLY public.registers ALTER COLUMN id SET DEFAULT nextval('public.registers_id_seq'::regclass);
 ;   ALTER TABLE public.registers ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    208    209    209            �           2604    1303356    request_types id    DEFAULT     t   ALTER TABLE ONLY public.request_types ALTER COLUMN id SET DEFAULT nextval('public.request_types_id_seq'::regclass);
 ?   ALTER TABLE public.request_types ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    236    237    237                        2604    1303373    requests id    DEFAULT     j   ALTER TABLE ONLY public.requests ALTER COLUMN id SET DEFAULT nextval('public.requests_id_seq'::regclass);
 :   ALTER TABLE public.requests ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    239    238    239            �           2604    1302955    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    199    198    199            �           2604    1303169    services id    DEFAULT     j   ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);
 :   ALTER TABLE public.services ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    223    222    223            �           2604    1303072    supports id    DEFAULT     j   ALTER TABLE ONLY public.supports ALTER COLUMN id SET DEFAULT nextval('public.supports_id_seq'::regclass);
 :   ALTER TABLE public.supports ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    213    212    213                       2604    1303592    taggings id    DEFAULT     j   ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);
 :   ALTER TABLE public.taggings ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    258    259    259            	           2604    1303581    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    256    257    257            �           2604    1303245    tasks id    DEFAULT     d   ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);
 7   ALTER TABLE public.tasks ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    230    231    231                       2604    1303652 
   tickets id    DEFAULT     h   ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 9   ALTER TABLE public.tickets ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    264    265    265            �           2604    1303017    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public    
   geid_admin    false    206    207    207            �          0    1303494    active_storage_attachments 
   TABLE DATA               k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public    
   geid_admin    false    249   ��      �          0    1303482    active_storage_blobs 
   TABLE DATA               z   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
    public    
   geid_admin    false    247   ��      V          0    1302942    ar_internal_metadata 
   TABLE DATA               R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    197   ��      z          0    1303259    arrival_mails 
   TABLE DATA               [  COPY public.arrival_mails (id, uid, register_id, internal_reference, external_reference, departure_date, receipt_date, linked_to_mail, reference_linked_mail, to_answer, response_limit_time, response_date, support_id, nature_id, correspondent_id, object, description, reserved_suite, folder_id, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    233   ;�      �          0    1303626    ckeditor_assets 
   TABLE DATA               �   COPY public.ckeditor_assets (id, data_file_name, data_content_type, data_file_size, data_fingerprint, type, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    261   X�      �          0    1303547    comments 
   TABLE DATA               z   COPY public.comments (id, content, status, user_id, commentable_type, commentable_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    253   u�      �          0    1303638    configs 
   TABLE DATA               �   COPY public.configs (id, smtp_host, smtp_user_name, smtp_user_password, smtp_domain, smtp_address, smtp_port, smtp_authentification, smtp_enable_starttls_auto, smtp_ssl, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    263   ��      r          0    1303184    correspondent_types 
   TABLE DATA               r   COPY public.correspondent_types (id, uid, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    225   ��      t          0    1303201    correspondents 
   TABLE DATA                 COPY public.correspondents (id, uid, correspondent_type_id, organization_name, contact_first_name, contact_last_name, contact_civility, address, contact_phone, phone, city, country, zip_code, email, contact_email, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    227   <�      |          0    1303306    departure_mails 
   TABLE DATA               +  COPY public.departure_mails (id, uid, register_id, internal_reference, departure_date, linked_to_mail, reference_linked_mail, to_answer, response_limit_time, response_date, support_id, nature_id, correspondent_id, object, description, folder_id, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    235   ��      l          0    1303126 
   directions 
   TABLE DATA               d   COPY public.directions (id, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    219   ��      n          0    1303143 	   divisions 
   TABLE DATA               q   COPY public.divisions (id, direction_id, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    221   U�      �          0    1303512 	   documents 
   TABLE DATA               �   COPY public.documents (id, uid, slug, support_id, nature_id, folder_id, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    251   ��      �          0    1303678    drive_attachments 
   TABLE DATA               p   COPY public.drive_attachments (id, name, attachable_type, attachable_id, drive_blob_id, created_at) FROM stdin;
    public    
   geid_admin    false    269   ��      �          0    1303666    drive_blobs 
   TABLE DATA               q   COPY public.drive_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
    public    
   geid_admin    false    267   ��      Z          0    1302963    features 
   TABLE DATA               m   COPY public.features (id, uid, name, subject_class, description, status, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    201   �      v          0    1303224    folders 
   TABLE DATA               �   COPY public.folders (id, uid, name, path, description, status, parent_id, google_drive_parent_id, google_drive_file_id, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    229   ��      �          0    1303430    imputation_items 
   TABLE DATA               �   COPY public.imputation_items (id, uid, title, description, due_date, start_date, completed_date, status, priority, imputation_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    243   �      �          0    1303393    imputations 
   TABLE DATA               �   COPY public.imputations (id, uid, imputable_type, imputable_id, direction_id, division_id, service_id, recipient_id, viewed_at, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    241   ;�      d          0    1303052    natures 
   TABLE DATA               f   COPY public.natures (id, uid, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    211   X�      �          0    1303565    notifications 
   TABLE DATA               �   COPY public.notifications (id, nature, recipient_id, content, status, readed_at, notificable_type, notificable_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    255   ��      h          0    1303086    organization_types 
   TABLE DATA               q   COPY public.organization_types (id, uid, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    215   ��      j          0    1303103    organizations 
   TABLE DATA               �   COPY public.organizations (id, uid, name, organization_type_id, slogan, address, city, state, country, phone, fax, zip_code, web_site, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    217   ��      ^          0    1302997    permission_items 
   TABLE DATA               o   COPY public.permission_items (id, uid, permission_id, action_name, status, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    205   ��      \          0    1302974    permissions 
   TABLE DATA               c   COPY public.permissions (id, uid, feature_id, role_id, status, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    203   �      �          0    1303447    profiles 
   TABLE DATA               �   COPY public.profiles (id, uid, civility, first_name, last_name, "position", address, phone, description, status, service_id, direction_id, division_id, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    245   e�      b          0    1303035 	   registers 
   TABLE DATA               �   COPY public.registers (id, uid, register_type, name, start_date, end_date, reference, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    209   ��      ~          0    1303353    request_types 
   TABLE DATA               l   COPY public.request_types (id, uid, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    237   ��      �          0    1303370    requests 
   TABLE DATA               �   COPY public.requests (id, uid, request_type_id, first_name, last_name, gender, born_date, born_place, academic_year, grade, specialty, request_date, description, identification_number, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    239    �      X          0    1302952    roles 
   TABLE DATA               [   COPY public.roles (id, uid, name, description, status, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    199   =�      U          0    1302934    schema_migrations 
   TABLE DATA               4   COPY public.schema_migrations (version) FROM stdin;
    public    
   geid_admin    false    196   ��      p          0    1303166    services 
   TABLE DATA               t   COPY public.services (id, uid, division_id, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    223   �       f          0    1303069    supports 
   TABLE DATA               g   COPY public.supports (id, uid, name, description, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    213   0      �          0    1303589    taggings 
   TABLE DATA               w   COPY public.taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at) FROM stdin;
    public    
   geid_admin    false    259   �      �          0    1303578    tags 
   TABLE DATA               P   COPY public.tags (id, name, created_at, updated_at, taggings_count) FROM stdin;
    public    
   geid_admin    false    257   �      x          0    1303242    tasks 
   TABLE DATA               ]   COPY public.tasks (id, uid, title, description, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    231   �      �          0    1303649    tickets 
   TABLE DATA               �   COPY public.tickets (id, uid, title, priority, content, due_date, start_date, completed_date, status, user_id, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    265   �      `          0    1303014    users 
   TABLE DATA               �   COPY public.users (id, uid, login, slug, role_id, created_by, status, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
    public    
   geid_admin    false    207         �           0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);
            public    
   geid_admin    false    248            �           0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);
            public    
   geid_admin    false    246            �           0    0    arrival_mails_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.arrival_mails_id_seq', 1, false);
            public    
   geid_admin    false    232            �           0    0    ckeditor_assets_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ckeditor_assets_id_seq', 1, false);
            public    
   geid_admin    false    260            �           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
            public    
   geid_admin    false    252            �           0    0    configs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.configs_id_seq', 1, false);
            public    
   geid_admin    false    262            �           0    0    correspondent_types_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.correspondent_types_id_seq', 3, true);
            public    
   geid_admin    false    224            �           0    0    correspondents_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.correspondents_id_seq', 3, true);
            public    
   geid_admin    false    226            �           0    0    departure_mails_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.departure_mails_id_seq', 1, false);
            public    
   geid_admin    false    234            �           0    0    directions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.directions_id_seq', 3, true);
            public    
   geid_admin    false    218            �           0    0    divisions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.divisions_id_seq', 3, true);
            public    
   geid_admin    false    220            �           0    0    documents_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.documents_id_seq', 1, false);
            public    
   geid_admin    false    250            �           0    0    drive_attachments_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.drive_attachments_id_seq', 1, false);
            public    
   geid_admin    false    268            �           0    0    drive_blobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.drive_blobs_id_seq', 1, false);
            public    
   geid_admin    false    266            �           0    0    features_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.features_id_seq', 3, true);
            public    
   geid_admin    false    200            �           0    0    folders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.folders_id_seq', 2, true);
            public    
   geid_admin    false    228            �           0    0    imputation_items_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.imputation_items_id_seq', 1, false);
            public    
   geid_admin    false    242            �           0    0    imputations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.imputations_id_seq', 1, false);
            public    
   geid_admin    false    240            �           0    0    natures_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.natures_id_seq', 3, true);
            public    
   geid_admin    false    210            �           0    0    notifications_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);
            public    
   geid_admin    false    254            �           0    0    organization_types_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.organization_types_id_seq', 3, true);
            public    
   geid_admin    false    214            �           0    0    organizations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.organizations_id_seq', 1, false);
            public    
   geid_admin    false    216            �           0    0    permission_items_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.permission_items_id_seq', 9, true);
            public    
   geid_admin    false    204            �           0    0    permissions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.permissions_id_seq', 2, true);
            public    
   geid_admin    false    202            �           0    0    profiles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.profiles_id_seq', 2, true);
            public    
   geid_admin    false    244            �           0    0    registers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.registers_id_seq', 2, true);
            public    
   geid_admin    false    208            �           0    0    request_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.request_types_id_seq', 2, true);
            public    
   geid_admin    false    236            �           0    0    requests_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.requests_id_seq', 1, false);
            public    
   geid_admin    false    238            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 5, true);
            public    
   geid_admin    false    198            �           0    0    services_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.services_id_seq', 3, true);
            public    
   geid_admin    false    222            �           0    0    supports_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.supports_id_seq', 2, true);
            public    
   geid_admin    false    212            �           0    0    taggings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.taggings_id_seq', 1, false);
            public    
   geid_admin    false    258            �           0    0    tags_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tags_id_seq', 1, false);
            public    
   geid_admin    false    256            �           0    0    tasks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tasks_id_seq', 1, false);
            public    
   geid_admin    false    230            �           0    0    tickets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tickets_id_seq', 1, false);
            public    
   geid_admin    false    264            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
            public    
   geid_admin    false    206            z           2606    1303502 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public      
   geid_admin    false    249            w           2606    1303490 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public      
   geid_admin    false    247                       2606    1302949 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public      
   geid_admin    false    197            O           2606    1303267     arrival_mails arrival_mails_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.arrival_mails
    ADD CONSTRAINT arrival_mails_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.arrival_mails DROP CONSTRAINT arrival_mails_pkey;
       public      
   geid_admin    false    233            �           2606    1303634 $   ckeditor_assets ckeditor_assets_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ckeditor_assets DROP CONSTRAINT ckeditor_assets_pkey;
       public      
   geid_admin    false    261            �           2606    1303555    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public      
   geid_admin    false    253            �           2606    1303646    configs configs_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.configs
    ADD CONSTRAINT configs_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.configs DROP CONSTRAINT configs_pkey;
       public      
   geid_admin    false    263            A           2606    1303192 ,   correspondent_types correspondent_types_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.correspondent_types
    ADD CONSTRAINT correspondent_types_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.correspondent_types DROP CONSTRAINT correspondent_types_pkey;
       public      
   geid_admin    false    225            D           2606    1303209 "   correspondents correspondents_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.correspondents
    ADD CONSTRAINT correspondents_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.correspondents DROP CONSTRAINT correspondents_pkey;
       public      
   geid_admin    false    227            W           2606    1303314 $   departure_mails departure_mails_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.departure_mails
    ADD CONSTRAINT departure_mails_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.departure_mails DROP CONSTRAINT departure_mails_pkey;
       public      
   geid_admin    false    235            6           2606    1303134    directions directions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.directions
    ADD CONSTRAINT directions_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.directions DROP CONSTRAINT directions_pkey;
       public      
   geid_admin    false    219            9           2606    1303151    divisions divisions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.divisions DROP CONSTRAINT divisions_pkey;
       public      
   geid_admin    false    221            ~           2606    1303520    documents documents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public      
   geid_admin    false    251            �           2606    1303686 (   drive_attachments drive_attachments_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.drive_attachments
    ADD CONSTRAINT drive_attachments_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.drive_attachments DROP CONSTRAINT drive_attachments_pkey;
       public      
   geid_admin    false    269            �           2606    1303674    drive_blobs drive_blobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.drive_blobs
    ADD CONSTRAINT drive_blobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.drive_blobs DROP CONSTRAINT drive_blobs_pkey;
       public      
   geid_admin    false    267                       2606    1302971    features features_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
       public      
   geid_admin    false    201            H           2606    1303232    folders folders_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.folders
    ADD CONSTRAINT folders_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.folders DROP CONSTRAINT folders_pkey;
       public      
   geid_admin    false    229            n           2606    1303438 &   imputation_items imputation_items_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.imputation_items
    ADD CONSTRAINT imputation_items_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.imputation_items DROP CONSTRAINT imputation_items_pkey;
       public      
   geid_admin    false    243            f           2606    1303401    imputations imputations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.imputations
    ADD CONSTRAINT imputations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.imputations DROP CONSTRAINT imputations_pkey;
       public      
   geid_admin    false    241            *           2606    1303060    natures natures_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.natures
    ADD CONSTRAINT natures_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.natures DROP CONSTRAINT natures_pkey;
       public      
   geid_admin    false    211            �           2606    1303573     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public      
   geid_admin    false    255            0           2606    1303094 *   organization_types organization_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.organization_types
    ADD CONSTRAINT organization_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.organization_types DROP CONSTRAINT organization_types_pkey;
       public      
   geid_admin    false    215            4           2606    1303111     organizations organizations_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT organizations_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.organizations DROP CONSTRAINT organizations_pkey;
       public      
   geid_admin    false    217                       2606    1303005 &   permission_items permission_items_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.permission_items
    ADD CONSTRAINT permission_items_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.permission_items DROP CONSTRAINT permission_items_pkey;
       public      
   geid_admin    false    205                       2606    1302982    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public      
   geid_admin    false    203            u           2606    1303455    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public      
   geid_admin    false    245            '           2606    1303043    registers registers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.registers
    ADD CONSTRAINT registers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.registers DROP CONSTRAINT registers_pkey;
       public      
   geid_admin    false    209            `           2606    1303361     request_types request_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.request_types
    ADD CONSTRAINT request_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.request_types DROP CONSTRAINT request_types_pkey;
       public      
   geid_admin    false    237            d           2606    1303378    requests requests_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_pkey;
       public      
   geid_admin    false    239                       2606    1302960    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public      
   geid_admin    false    199                       2606    1302941 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public      
   geid_admin    false    196            ?           2606    1303174    services services_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
       public      
   geid_admin    false    223            -           2606    1303077    supports supports_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.supports
    ADD CONSTRAINT supports_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.supports DROP CONSTRAINT supports_pkey;
       public      
   geid_admin    false    213            �           2606    1303597    taggings taggings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.taggings DROP CONSTRAINT taggings_pkey;
       public      
   geid_admin    false    259            �           2606    1303586    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public      
   geid_admin    false    257            M           2606    1303250    tasks tasks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pkey;
       public      
   geid_admin    false    231            �           2606    1303657    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public      
   geid_admin    false    265            $           2606    1303024    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public      
   geid_admin    false    207            {           1259    1303508 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public      
   geid_admin    false    249            |           1259    1303509 +   index_active_storage_attachments_uniqueness    INDEX     �   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public      
   geid_admin    false    249    249    249    249            x           1259    1303491 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public      
   geid_admin    false    247            P           1259    1303301 '   index_arrival_mails_on_correspondent_id    INDEX     m   CREATE INDEX index_arrival_mails_on_correspondent_id ON public.arrival_mails USING btree (correspondent_id);
 ;   DROP INDEX public.index_arrival_mails_on_correspondent_id;
       public      
   geid_admin    false    233            Q           1259    1303302     index_arrival_mails_on_folder_id    INDEX     _   CREATE INDEX index_arrival_mails_on_folder_id ON public.arrival_mails USING btree (folder_id);
 4   DROP INDEX public.index_arrival_mails_on_folder_id;
       public      
   geid_admin    false    233            R           1259    1303300     index_arrival_mails_on_nature_id    INDEX     _   CREATE INDEX index_arrival_mails_on_nature_id ON public.arrival_mails USING btree (nature_id);
 4   DROP INDEX public.index_arrival_mails_on_nature_id;
       public      
   geid_admin    false    233            S           1259    1303298 "   index_arrival_mails_on_register_id    INDEX     c   CREATE INDEX index_arrival_mails_on_register_id ON public.arrival_mails USING btree (register_id);
 6   DROP INDEX public.index_arrival_mails_on_register_id;
       public      
   geid_admin    false    233            T           1259    1303299 !   index_arrival_mails_on_support_id    INDEX     a   CREATE INDEX index_arrival_mails_on_support_id ON public.arrival_mails USING btree (support_id);
 5   DROP INDEX public.index_arrival_mails_on_support_id;
       public      
   geid_admin    false    233            U           1259    1303303    index_arrival_mails_on_user_id    INDEX     [   CREATE INDEX index_arrival_mails_on_user_id ON public.arrival_mails USING btree (user_id);
 2   DROP INDEX public.index_arrival_mails_on_user_id;
       public      
   geid_admin    false    233            �           1259    1303635    index_ckeditor_assets_on_type    INDEX     Y   CREATE INDEX index_ckeditor_assets_on_type ON public.ckeditor_assets USING btree (type);
 1   DROP INDEX public.index_ckeditor_assets_on_type;
       public      
   geid_admin    false    261            �           1259    1303562 5   index_comments_on_commentable_type_and_commentable_id    INDEX     �   CREATE INDEX index_comments_on_commentable_type_and_commentable_id ON public.comments USING btree (commentable_type, commentable_id);
 I   DROP INDEX public.index_comments_on_commentable_type_and_commentable_id;
       public      
   geid_admin    false    253    253            �           1259    1303561    index_comments_on_user_id    INDEX     Q   CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);
 -   DROP INDEX public.index_comments_on_user_id;
       public      
   geid_admin    false    253            B           1259    1303198 $   index_correspondent_types_on_user_id    INDEX     g   CREATE INDEX index_correspondent_types_on_user_id ON public.correspondent_types USING btree (user_id);
 8   DROP INDEX public.index_correspondent_types_on_user_id;
       public      
   geid_admin    false    225            E           1259    1303220 -   index_correspondents_on_correspondent_type_id    INDEX     y   CREATE INDEX index_correspondents_on_correspondent_type_id ON public.correspondents USING btree (correspondent_type_id);
 A   DROP INDEX public.index_correspondents_on_correspondent_type_id;
       public      
   geid_admin    false    227            F           1259    1303221    index_correspondents_on_user_id    INDEX     ]   CREATE INDEX index_correspondents_on_user_id ON public.correspondents USING btree (user_id);
 3   DROP INDEX public.index_correspondents_on_user_id;
       public      
   geid_admin    false    227            X           1259    1303348 )   index_departure_mails_on_correspondent_id    INDEX     q   CREATE INDEX index_departure_mails_on_correspondent_id ON public.departure_mails USING btree (correspondent_id);
 =   DROP INDEX public.index_departure_mails_on_correspondent_id;
       public      
   geid_admin    false    235            Y           1259    1303349 "   index_departure_mails_on_folder_id    INDEX     c   CREATE INDEX index_departure_mails_on_folder_id ON public.departure_mails USING btree (folder_id);
 6   DROP INDEX public.index_departure_mails_on_folder_id;
       public      
   geid_admin    false    235            Z           1259    1303347 "   index_departure_mails_on_nature_id    INDEX     c   CREATE INDEX index_departure_mails_on_nature_id ON public.departure_mails USING btree (nature_id);
 6   DROP INDEX public.index_departure_mails_on_nature_id;
       public      
   geid_admin    false    235            [           1259    1303345 $   index_departure_mails_on_register_id    INDEX     g   CREATE INDEX index_departure_mails_on_register_id ON public.departure_mails USING btree (register_id);
 8   DROP INDEX public.index_departure_mails_on_register_id;
       public      
   geid_admin    false    235            \           1259    1303346 #   index_departure_mails_on_support_id    INDEX     e   CREATE INDEX index_departure_mails_on_support_id ON public.departure_mails USING btree (support_id);
 7   DROP INDEX public.index_departure_mails_on_support_id;
       public      
   geid_admin    false    235            ]           1259    1303350     index_departure_mails_on_user_id    INDEX     _   CREATE INDEX index_departure_mails_on_user_id ON public.departure_mails USING btree (user_id);
 4   DROP INDEX public.index_departure_mails_on_user_id;
       public      
   geid_admin    false    235            7           1259    1303140    index_directions_on_user_id    INDEX     U   CREATE INDEX index_directions_on_user_id ON public.directions USING btree (user_id);
 /   DROP INDEX public.index_directions_on_user_id;
       public      
   geid_admin    false    219            :           1259    1303162    index_divisions_on_direction_id    INDEX     ]   CREATE INDEX index_divisions_on_direction_id ON public.divisions USING btree (direction_id);
 3   DROP INDEX public.index_divisions_on_direction_id;
       public      
   geid_admin    false    221            ;           1259    1303163    index_divisions_on_user_id    INDEX     S   CREATE INDEX index_divisions_on_user_id ON public.divisions USING btree (user_id);
 .   DROP INDEX public.index_divisions_on_user_id;
       public      
   geid_admin    false    221                       1259    1303543    index_documents_on_folder_id    INDEX     W   CREATE INDEX index_documents_on_folder_id ON public.documents USING btree (folder_id);
 0   DROP INDEX public.index_documents_on_folder_id;
       public      
   geid_admin    false    251            �           1259    1303542    index_documents_on_nature_id    INDEX     W   CREATE INDEX index_documents_on_nature_id ON public.documents USING btree (nature_id);
 0   DROP INDEX public.index_documents_on_nature_id;
       public      
   geid_admin    false    251            �           1259    1303541    index_documents_on_support_id    INDEX     Y   CREATE INDEX index_documents_on_support_id ON public.documents USING btree (support_id);
 1   DROP INDEX public.index_documents_on_support_id;
       public      
   geid_admin    false    251            �           1259    1303544    index_documents_on_user_id    INDEX     S   CREATE INDEX index_documents_on_user_id ON public.documents USING btree (user_id);
 .   DROP INDEX public.index_documents_on_user_id;
       public      
   geid_admin    false    251            �           1259    1303692 <   index_drive_attachments_on_attachable_type_and_attachable_id    INDEX     �   CREATE INDEX index_drive_attachments_on_attachable_type_and_attachable_id ON public.drive_attachments USING btree (attachable_type, attachable_id);
 P   DROP INDEX public.index_drive_attachments_on_attachable_type_and_attachable_id;
       public      
   geid_admin    false    269    269            �           1259    1303693 (   index_drive_attachments_on_drive_blob_id    INDEX     o   CREATE INDEX index_drive_attachments_on_drive_blob_id ON public.drive_attachments USING btree (drive_blob_id);
 <   DROP INDEX public.index_drive_attachments_on_drive_blob_id;
       public      
   geid_admin    false    269            �           1259    1303675    index_drive_blobs_on_key    INDEX     V   CREATE UNIQUE INDEX index_drive_blobs_on_key ON public.drive_blobs USING btree (key);
 ,   DROP INDEX public.index_drive_blobs_on_key;
       public      
   geid_admin    false    267            I           1259    1303238    index_folders_on_parent_id    INDEX     S   CREATE INDEX index_folders_on_parent_id ON public.folders USING btree (parent_id);
 .   DROP INDEX public.index_folders_on_parent_id;
       public      
   geid_admin    false    229            J           1259    1303239    index_folders_on_user_id    INDEX     O   CREATE INDEX index_folders_on_user_id ON public.folders USING btree (user_id);
 ,   DROP INDEX public.index_folders_on_user_id;
       public      
   geid_admin    false    229            o           1259    1303444 '   index_imputation_items_on_imputation_id    INDEX     m   CREATE INDEX index_imputation_items_on_imputation_id ON public.imputation_items USING btree (imputation_id);
 ;   DROP INDEX public.index_imputation_items_on_imputation_id;
       public      
   geid_admin    false    243            g           1259    1303423 !   index_imputations_on_direction_id    INDEX     a   CREATE INDEX index_imputations_on_direction_id ON public.imputations USING btree (direction_id);
 5   DROP INDEX public.index_imputations_on_direction_id;
       public      
   geid_admin    false    241            h           1259    1303424     index_imputations_on_division_id    INDEX     _   CREATE INDEX index_imputations_on_division_id ON public.imputations USING btree (division_id);
 4   DROP INDEX public.index_imputations_on_division_id;
       public      
   geid_admin    false    241            i           1259    1303422 4   index_imputations_on_imputable_type_and_imputable_id    INDEX     �   CREATE INDEX index_imputations_on_imputable_type_and_imputable_id ON public.imputations USING btree (imputable_type, imputable_id);
 H   DROP INDEX public.index_imputations_on_imputable_type_and_imputable_id;
       public      
   geid_admin    false    241    241            j           1259    1303426 !   index_imputations_on_recipient_id    INDEX     a   CREATE INDEX index_imputations_on_recipient_id ON public.imputations USING btree (recipient_id);
 5   DROP INDEX public.index_imputations_on_recipient_id;
       public      
   geid_admin    false    241            k           1259    1303425    index_imputations_on_service_id    INDEX     ]   CREATE INDEX index_imputations_on_service_id ON public.imputations USING btree (service_id);
 3   DROP INDEX public.index_imputations_on_service_id;
       public      
   geid_admin    false    241            l           1259    1303427    index_imputations_on_user_id    INDEX     W   CREATE INDEX index_imputations_on_user_id ON public.imputations USING btree (user_id);
 0   DROP INDEX public.index_imputations_on_user_id;
       public      
   geid_admin    false    241            (           1259    1303066    index_natures_on_user_id    INDEX     O   CREATE INDEX index_natures_on_user_id ON public.natures USING btree (user_id);
 ,   DROP INDEX public.index_natures_on_user_id;
       public      
   geid_admin    false    211            �           1259    1303575 :   index_notifications_on_notificable_type_and_notificable_id    INDEX     �   CREATE INDEX index_notifications_on_notificable_type_and_notificable_id ON public.notifications USING btree (notificable_type, notificable_id);
 N   DROP INDEX public.index_notifications_on_notificable_type_and_notificable_id;
       public      
   geid_admin    false    255    255            �           1259    1303574 #   index_notifications_on_recipient_id    INDEX     e   CREATE INDEX index_notifications_on_recipient_id ON public.notifications USING btree (recipient_id);
 7   DROP INDEX public.index_notifications_on_recipient_id;
       public      
   geid_admin    false    255            .           1259    1303100 #   index_organization_types_on_user_id    INDEX     e   CREATE INDEX index_organization_types_on_user_id ON public.organization_types USING btree (user_id);
 7   DROP INDEX public.index_organization_types_on_user_id;
       public      
   geid_admin    false    215            1           1259    1303122 +   index_organizations_on_organization_type_id    INDEX     u   CREATE INDEX index_organizations_on_organization_type_id ON public.organizations USING btree (organization_type_id);
 ?   DROP INDEX public.index_organizations_on_organization_type_id;
       public      
   geid_admin    false    217            2           1259    1303123    index_organizations_on_user_id    INDEX     [   CREATE INDEX index_organizations_on_user_id ON public.organizations USING btree (user_id);
 2   DROP INDEX public.index_organizations_on_user_id;
       public      
   geid_admin    false    217                       1259    1303011 '   index_permission_items_on_permission_id    INDEX     m   CREATE INDEX index_permission_items_on_permission_id ON public.permission_items USING btree (permission_id);
 ;   DROP INDEX public.index_permission_items_on_permission_id;
       public      
   geid_admin    false    205                       1259    1302993    index_permissions_on_feature_id    INDEX     ]   CREATE INDEX index_permissions_on_feature_id ON public.permissions USING btree (feature_id);
 3   DROP INDEX public.index_permissions_on_feature_id;
       public      
   geid_admin    false    203                       1259    1302994    index_permissions_on_role_id    INDEX     W   CREATE INDEX index_permissions_on_role_id ON public.permissions USING btree (role_id);
 0   DROP INDEX public.index_permissions_on_role_id;
       public      
   geid_admin    false    203            p           1259    1303477    index_profiles_on_direction_id    INDEX     [   CREATE INDEX index_profiles_on_direction_id ON public.profiles USING btree (direction_id);
 2   DROP INDEX public.index_profiles_on_direction_id;
       public      
   geid_admin    false    245            q           1259    1303478    index_profiles_on_division_id    INDEX     Y   CREATE INDEX index_profiles_on_division_id ON public.profiles USING btree (division_id);
 1   DROP INDEX public.index_profiles_on_division_id;
       public      
   geid_admin    false    245            r           1259    1303476    index_profiles_on_service_id    INDEX     W   CREATE INDEX index_profiles_on_service_id ON public.profiles USING btree (service_id);
 0   DROP INDEX public.index_profiles_on_service_id;
       public      
   geid_admin    false    245            s           1259    1303479    index_profiles_on_user_id    INDEX     Q   CREATE INDEX index_profiles_on_user_id ON public.profiles USING btree (user_id);
 -   DROP INDEX public.index_profiles_on_user_id;
       public      
   geid_admin    false    245            %           1259    1303049    index_registers_on_user_id    INDEX     S   CREATE INDEX index_registers_on_user_id ON public.registers USING btree (user_id);
 .   DROP INDEX public.index_registers_on_user_id;
       public      
   geid_admin    false    209            ^           1259    1303367    index_request_types_on_user_id    INDEX     [   CREATE INDEX index_request_types_on_user_id ON public.request_types USING btree (user_id);
 2   DROP INDEX public.index_request_types_on_user_id;
       public      
   geid_admin    false    237            a           1259    1303389 !   index_requests_on_request_type_id    INDEX     a   CREATE INDEX index_requests_on_request_type_id ON public.requests USING btree (request_type_id);
 5   DROP INDEX public.index_requests_on_request_type_id;
       public      
   geid_admin    false    239            b           1259    1303390    index_requests_on_user_id    INDEX     Q   CREATE INDEX index_requests_on_user_id ON public.requests USING btree (user_id);
 -   DROP INDEX public.index_requests_on_user_id;
       public      
   geid_admin    false    239            <           1259    1303180    index_services_on_division_id    INDEX     Y   CREATE INDEX index_services_on_division_id ON public.services USING btree (division_id);
 1   DROP INDEX public.index_services_on_division_id;
       public      
   geid_admin    false    223            =           1259    1303181    index_services_on_user_id    INDEX     Q   CREATE INDEX index_services_on_user_id ON public.services USING btree (user_id);
 -   DROP INDEX public.index_services_on_user_id;
       public      
   geid_admin    false    223            +           1259    1303083    index_supports_on_user_id    INDEX     Q   CREATE INDEX index_supports_on_user_id ON public.supports USING btree (user_id);
 -   DROP INDEX public.index_supports_on_user_id;
       public      
   geid_admin    false    213            �           1259    1303621    index_taggings_on_context    INDEX     Q   CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);
 -   DROP INDEX public.index_taggings_on_context;
       public      
   geid_admin    false    259            �           1259    1303617    index_taggings_on_tag_id    INDEX     O   CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);
 ,   DROP INDEX public.index_taggings_on_tag_id;
       public      
   geid_admin    false    259            �           1259    1303618    index_taggings_on_taggable_id    INDEX     Y   CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);
 1   DROP INDEX public.index_taggings_on_taggable_id;
       public      
   geid_admin    false    259            �           1259    1303619    index_taggings_on_taggable_type    INDEX     ]   CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);
 3   DROP INDEX public.index_taggings_on_taggable_type;
       public      
   geid_admin    false    259            �           1259    1303620    index_taggings_on_tagger_id    INDEX     U   CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);
 /   DROP INDEX public.index_taggings_on_tagger_id;
       public      
   geid_admin    false    259            �           1259    1303622 +   index_taggings_on_tagger_id_and_tagger_type    INDEX     r   CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);
 ?   DROP INDEX public.index_taggings_on_tagger_id_and_tagger_type;
       public      
   geid_admin    false    259    259            �           1259    1303605    index_tags_on_name    INDEX     J   CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);
 &   DROP INDEX public.index_tags_on_name;
       public      
   geid_admin    false    257            K           1259    1303256    index_tasks_on_user_id    INDEX     K   CREATE INDEX index_tasks_on_user_id ON public.tasks USING btree (user_id);
 *   DROP INDEX public.index_tasks_on_user_id;
       public      
   geid_admin    false    231            �           1259    1303663    index_tickets_on_user_id    INDEX     O   CREATE INDEX index_tickets_on_user_id ON public.tickets USING btree (user_id);
 ,   DROP INDEX public.index_tickets_on_user_id;
       public      
   geid_admin    false    265                        1259    1303031    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public      
   geid_admin    false    207            !           1259    1303032 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public      
   geid_admin    false    207            "           1259    1303030    index_users_on_role_id    INDEX     K   CREATE INDEX index_users_on_role_id ON public.users USING btree (role_id);
 *   DROP INDEX public.index_users_on_role_id;
       public      
   geid_admin    false    207            �           1259    1303606    taggings_idx    INDEX     �   CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);
     DROP INDEX public.taggings_idx;
       public      
   geid_admin    false    259    259    259    259    259    259            �           1259    1303623    taggings_idy    INDEX     k   CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);
     DROP INDEX public.taggings_idy;
       public      
   geid_admin    false    259    259    259    259            �           1259    1303616    taggings_taggable_context_idx    INDEX     q   CREATE INDEX taggings_taggable_context_idx ON public.taggings USING btree (taggable_id, taggable_type, context);
 1   DROP INDEX public.taggings_taggable_context_idx;
       public      
   geid_admin    false    259    259    259            �           2606    1303193 '   correspondent_types fk_rails_02cc804943    FK CONSTRAINT     �   ALTER TABLE ONLY public.correspondent_types
    ADD CONSTRAINT fk_rails_02cc804943 FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.correspondent_types DROP CONSTRAINT fk_rails_02cc804943;
       public    
   geid_admin    false    207    3108    225            �           2606    1303556    comments fk_rails_03de2dc08c    FK CONSTRAINT     {   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_03de2dc08c;
       public    
   geid_admin    false    253    3108    207            �           2606    1303283 !   arrival_mails fk_rails_0e09c33d5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.arrival_mails
    ADD CONSTRAINT fk_rails_0e09c33d5b FOREIGN KEY (correspondent_id) REFERENCES public.correspondents(id);
 K   ALTER TABLE ONLY public.arrival_mails DROP CONSTRAINT fk_rails_0e09c33d5b;
       public    
   geid_admin    false    227    233    3140            �           2606    1303466    profiles fk_rails_0e3bf6df7c    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk_rails_0e3bf6df7c FOREIGN KEY (division_id) REFERENCES public.divisions(id);
 F   ALTER TABLE ONLY public.profiles DROP CONSTRAINT fk_rails_0e3bf6df7c;
       public    
   geid_admin    false    245    221    3129            �           2606    1303362 !   request_types fk_rails_0e68cdd81c    FK CONSTRAINT     �   ALTER TABLE ONLY public.request_types
    ADD CONSTRAINT fk_rails_0e68cdd81c FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.request_types DROP CONSTRAINT fk_rails_0e68cdd81c;
       public    
   geid_admin    false    207    237    3108            �           2606    1303152    divisions fk_rails_0efc6389d8    FK CONSTRAINT     �   ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT fk_rails_0efc6389d8 FOREIGN KEY (direction_id) REFERENCES public.directions(id);
 G   ALTER TABLE ONLY public.divisions DROP CONSTRAINT fk_rails_0efc6389d8;
       public    
   geid_admin    false    3126    221    219            �           2606    1303320 #   departure_mails fk_rails_12521e59b8    FK CONSTRAINT     �   ALTER TABLE ONLY public.departure_mails
    ADD CONSTRAINT fk_rails_12521e59b8 FOREIGN KEY (support_id) REFERENCES public.supports(id);
 M   ALTER TABLE ONLY public.departure_mails DROP CONSTRAINT fk_rails_12521e59b8;
       public    
   geid_admin    false    213    3117    235            �           2606    1303315 #   departure_mails fk_rails_171a30c4b3    FK CONSTRAINT     �   ALTER TABLE ONLY public.departure_mails
    ADD CONSTRAINT fk_rails_171a30c4b3 FOREIGN KEY (register_id) REFERENCES public.registers(id);
 M   ALTER TABLE ONLY public.departure_mails DROP CONSTRAINT fk_rails_171a30c4b3;
       public    
   geid_admin    false    3111    209    235            �           2606    1303273 !   arrival_mails fk_rails_192663ab17    FK CONSTRAINT     �   ALTER TABLE ONLY public.arrival_mails
    ADD CONSTRAINT fk_rails_192663ab17 FOREIGN KEY (support_id) REFERENCES public.supports(id);
 K   ALTER TABLE ONLY public.arrival_mails DROP CONSTRAINT fk_rails_192663ab17;
       public    
   geid_admin    false    3117    213    233            �           2606    1303461    profiles fk_rails_195671b96c    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk_rails_195671b96c FOREIGN KEY (direction_id) REFERENCES public.directions(id);
 F   ALTER TABLE ONLY public.profiles DROP CONSTRAINT fk_rails_195671b96c;
       public    
   geid_admin    false    245    219    3126            �           2606    1303335 #   departure_mails fk_rails_1bd5567bd8    FK CONSTRAINT     �   ALTER TABLE ONLY public.departure_mails
    ADD CONSTRAINT fk_rails_1bd5567bd8 FOREIGN KEY (folder_id) REFERENCES public.folders(id);
 M   ALTER TABLE ONLY public.departure_mails DROP CONSTRAINT fk_rails_1bd5567bd8;
       public    
   geid_admin    false    235    229    3144            �           2606    1303044    registers fk_rails_1d13c3f101    FK CONSTRAINT     |   ALTER TABLE ONLY public.registers
    ADD CONSTRAINT fk_rails_1d13c3f101 FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.registers DROP CONSTRAINT fk_rails_1d13c3f101;
       public    
   geid_admin    false    207    3108    209            �           2606    1302983    permissions fk_rails_2078943d09    FK CONSTRAINT     �   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT fk_rails_2078943d09 FOREIGN KEY (feature_id) REFERENCES public.features(id);
 I   ALTER TABLE ONLY public.permissions DROP CONSTRAINT fk_rails_2078943d09;
       public    
   geid_admin    false    3096    203    201            �           2606    1303439 $   imputation_items fk_rails_24af86c061    FK CONSTRAINT     �   ALTER TABLE ONLY public.imputation_items
    ADD CONSTRAINT fk_rails_24af86c061 FOREIGN KEY (imputation_id) REFERENCES public.imputations(id);
 N   ALTER TABLE ONLY public.imputation_items DROP CONSTRAINT fk_rails_24af86c061;
       public    
   geid_admin    false    241    3174    243            �           2606    1303278 !   arrival_mails fk_rails_2632c6b1ac    FK CONSTRAINT     �   ALTER TABLE ONLY public.arrival_mails
    ADD CONSTRAINT fk_rails_2632c6b1ac FOREIGN KEY (nature_id) REFERENCES public.natures(id);
 K   ALTER TABLE ONLY public.arrival_mails DROP CONSTRAINT fk_rails_2632c6b1ac;
       public    
   geid_admin    false    233    3114    211            �           2606    1303233    folders fk_rails_2a04d378cf    FK CONSTRAINT     z   ALTER TABLE ONLY public.folders
    ADD CONSTRAINT fk_rails_2a04d378cf FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.folders DROP CONSTRAINT fk_rails_2a04d378cf;
       public    
   geid_admin    false    229    207    3108            �           2606    1303536    documents fk_rails_2be0318c46    FK CONSTRAINT     |   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT fk_rails_2be0318c46 FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.documents DROP CONSTRAINT fk_rails_2be0318c46;
       public    
   geid_admin    false    207    3108    251            �           2606    1303325 #   departure_mails fk_rails_2f44e08ac0    FK CONSTRAINT     �   ALTER TABLE ONLY public.departure_mails
    ADD CONSTRAINT fk_rails_2f44e08ac0 FOREIGN KEY (nature_id) REFERENCES public.natures(id);
 M   ALTER TABLE ONLY public.departure_mails DROP CONSTRAINT fk_rails_2f44e08ac0;
       public    
   geid_admin    false    3114    211    235            �           2606    1303531    documents fk_rails_404da7ca3d    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT fk_rails_404da7ca3d FOREIGN KEY (folder_id) REFERENCES public.folders(id);
 G   ALTER TABLE ONLY public.documents DROP CONSTRAINT fk_rails_404da7ca3d;
       public    
   geid_admin    false    229    3144    251            �           2606    1303112 !   organizations fk_rails_47184d8b28    FK CONSTRAINT     �   ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT fk_rails_47184d8b28 FOREIGN KEY (organization_type_id) REFERENCES public.organization_types(id);
 K   ALTER TABLE ONLY public.organizations DROP CONSTRAINT fk_rails_47184d8b28;
       public    
   geid_admin    false    217    215    3120            �           2606    1303251    tasks fk_rails_4d2a9e4d7e    FK CONSTRAINT     x   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT fk_rails_4d2a9e4d7e FOREIGN KEY (user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.tasks DROP CONSTRAINT fk_rails_4d2a9e4d7e;
       public    
   geid_admin    false    231    207    3108            �           2606    1303175    services fk_rails_51a813203f    FK CONSTRAINT     {   ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_rails_51a813203f FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.services DROP CONSTRAINT fk_rails_51a813203f;
       public    
   geid_admin    false    207    223    3108            �           2606    1303658    tickets fk_rails_538a036fb9    FK CONSTRAINT     z   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_538a036fb9 FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_538a036fb9;
       public    
   geid_admin    false    265    207    3108            �           2606    1303379    requests fk_rails_59d5c2771d    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_59d5c2771d FOREIGN KEY (request_type_id) REFERENCES public.request_types(id);
 F   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_rails_59d5c2771d;
       public    
   geid_admin    false    239    237    3168            �           2606    1303025    users fk_rails_642f17018b    FK CONSTRAINT     x   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_642f17018b FOREIGN KEY (role_id) REFERENCES public.roles(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_642f17018b;
       public    
   geid_admin    false    3094    199    207            �           2606    1303293 !   arrival_mails fk_rails_67c6e7264e    FK CONSTRAINT     �   ALTER TABLE ONLY public.arrival_mails
    ADD CONSTRAINT fk_rails_67c6e7264e FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.arrival_mails DROP CONSTRAINT fk_rails_67c6e7264e;
       public    
   geid_admin    false    3108    207    233            �           2606    1303402    imputations fk_rails_67e6d387d0    FK CONSTRAINT     �   ALTER TABLE ONLY public.imputations
    ADD CONSTRAINT fk_rails_67e6d387d0 FOREIGN KEY (direction_id) REFERENCES public.directions(id);
 I   ALTER TABLE ONLY public.imputations DROP CONSTRAINT fk_rails_67e6d387d0;
       public    
   geid_admin    false    219    3126    241            �           2606    1303412    imputations fk_rails_6b89e17bfe    FK CONSTRAINT     �   ALTER TABLE ONLY public.imputations
    ADD CONSTRAINT fk_rails_6b89e17bfe FOREIGN KEY (service_id) REFERENCES public.services(id);
 I   ALTER TABLE ONLY public.imputations DROP CONSTRAINT fk_rails_6b89e17bfe;
       public    
   geid_admin    false    241    3135    223            �           2606    1303215 "   correspondents fk_rails_71cbe45b1f    FK CONSTRAINT     �   ALTER TABLE ONLY public.correspondents
    ADD CONSTRAINT fk_rails_71cbe45b1f FOREIGN KEY (user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.correspondents DROP CONSTRAINT fk_rails_71cbe45b1f;
       public    
   geid_admin    false    227    207    3108            �           2606    1303006 $   permission_items fk_rails_785a0b5a6e    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_items
    ADD CONSTRAINT fk_rails_785a0b5a6e FOREIGN KEY (permission_id) REFERENCES public.permissions(id);
 N   ALTER TABLE ONLY public.permission_items DROP CONSTRAINT fk_rails_785a0b5a6e;
       public    
   geid_admin    false    205    3100    203            �           2606    1303117 !   organizations fk_rails_7b93e0061c    FK CONSTRAINT     �   ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT fk_rails_7b93e0061c FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.organizations DROP CONSTRAINT fk_rails_7b93e0061c;
       public    
   geid_admin    false    3108    217    207            �           2606    1303407    imputations fk_rails_7f99658177    FK CONSTRAINT     �   ALTER TABLE ONLY public.imputations
    ADD CONSTRAINT fk_rails_7f99658177 FOREIGN KEY (division_id) REFERENCES public.divisions(id);
 I   ALTER TABLE ONLY public.imputations DROP CONSTRAINT fk_rails_7f99658177;
       public    
   geid_admin    false    221    241    3129            �           2606    1303061    natures fk_rails_82166555e3    FK CONSTRAINT     z   ALTER TABLE ONLY public.natures
    ADD CONSTRAINT fk_rails_82166555e3 FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.natures DROP CONSTRAINT fk_rails_82166555e3;
       public    
   geid_admin    false    207    3108    211            �           2606    1303135    directions fk_rails_8dc93b4034    FK CONSTRAINT     }   ALTER TABLE ONLY public.directions
    ADD CONSTRAINT fk_rails_8dc93b4034 FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.directions DROP CONSTRAINT fk_rails_8dc93b4034;
       public    
   geid_admin    false    3108    207    219            �           2606    1303384    requests fk_rails_8ead8b1e6b    FK CONSTRAINT     {   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_8ead8b1e6b FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_rails_8ead8b1e6b;
       public    
   geid_admin    false    239    207    3108            �           2606    1302988    permissions fk_rails_93c739e1a2    FK CONSTRAINT     ~   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT fk_rails_93c739e1a2 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 I   ALTER TABLE ONLY public.permissions DROP CONSTRAINT fk_rails_93c739e1a2;
       public    
   geid_admin    false    199    3094    203            �           2606    1303598    taggings fk_rails_9fcd2e236b    FK CONSTRAINT     y   ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES public.tags(id);
 F   ALTER TABLE ONLY public.taggings DROP CONSTRAINT fk_rails_9fcd2e236b;
       public    
   geid_admin    false    257    259    3213            �           2606    1303157    divisions fk_rails_a1d04a4c86    FK CONSTRAINT     |   ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT fk_rails_a1d04a4c86 FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.divisions DROP CONSTRAINT fk_rails_a1d04a4c86;
       public    
   geid_admin    false    207    221    3108            �           2606    1303417    imputations fk_rails_a286d3508d    FK CONSTRAINT     ~   ALTER TABLE ONLY public.imputations
    ADD CONSTRAINT fk_rails_a286d3508d FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.imputations DROP CONSTRAINT fk_rails_a286d3508d;
       public    
   geid_admin    false    207    241    3108            �           2606    1303521    documents fk_rails_a75de63eb9    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT fk_rails_a75de63eb9 FOREIGN KEY (support_id) REFERENCES public.supports(id);
 G   ALTER TABLE ONLY public.documents DROP CONSTRAINT fk_rails_a75de63eb9;
       public    
   geid_admin    false    213    251    3117            �           2606    1303687 %   drive_attachments fk_rails_a81a31a8d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.drive_attachments
    ADD CONSTRAINT fk_rails_a81a31a8d9 FOREIGN KEY (drive_blob_id) REFERENCES public.drive_blobs(id);
 O   ALTER TABLE ONLY public.drive_attachments DROP CONSTRAINT fk_rails_a81a31a8d9;
       public    
   geid_admin    false    267    3234    269            �           2606    1303095 &   organization_types fk_rails_afd1cef780    FK CONSTRAINT     �   ALTER TABLE ONLY public.organization_types
    ADD CONSTRAINT fk_rails_afd1cef780 FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.organization_types DROP CONSTRAINT fk_rails_afd1cef780;
       public    
   geid_admin    false    207    3108    215            �           2606    1303288 !   arrival_mails fk_rails_b1270b9b89    FK CONSTRAINT     �   ALTER TABLE ONLY public.arrival_mails
    ADD CONSTRAINT fk_rails_b1270b9b89 FOREIGN KEY (folder_id) REFERENCES public.folders(id);
 K   ALTER TABLE ONLY public.arrival_mails DROP CONSTRAINT fk_rails_b1270b9b89;
       public    
   geid_admin    false    233    3144    229            �           2606    1303078    supports fk_rails_b812ba1862    FK CONSTRAINT     {   ALTER TABLE ONLY public.supports
    ADD CONSTRAINT fk_rails_b812ba1862 FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.supports DROP CONSTRAINT fk_rails_b812ba1862;
       public    
   geid_admin    false    213    207    3108            �           2606    1303503 .   active_storage_attachments fk_rails_c3b3935057    FK CONSTRAINT     �   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public    
   geid_admin    false    3191    247    249            �           2606    1303268 !   arrival_mails fk_rails_c83b891b00    FK CONSTRAINT     �   ALTER TABLE ONLY public.arrival_mails
    ADD CONSTRAINT fk_rails_c83b891b00 FOREIGN KEY (register_id) REFERENCES public.registers(id);
 K   ALTER TABLE ONLY public.arrival_mails DROP CONSTRAINT fk_rails_c83b891b00;
       public    
   geid_admin    false    233    209    3111            �           2606    1303526    documents fk_rails_d2a258c142    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT fk_rails_d2a258c142 FOREIGN KEY (nature_id) REFERENCES public.natures(id);
 G   ALTER TABLE ONLY public.documents DROP CONSTRAINT fk_rails_d2a258c142;
       public    
   geid_admin    false    3114    251    211            �           2606    1303456    profiles fk_rails_dbdc57dfea    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk_rails_dbdc57dfea FOREIGN KEY (service_id) REFERENCES public.services(id);
 F   ALTER TABLE ONLY public.profiles DROP CONSTRAINT fk_rails_dbdc57dfea;
       public    
   geid_admin    false    223    3135    245            �           2606    1303330 #   departure_mails fk_rails_de3faecc1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.departure_mails
    ADD CONSTRAINT fk_rails_de3faecc1c FOREIGN KEY (correspondent_id) REFERENCES public.correspondents(id);
 M   ALTER TABLE ONLY public.departure_mails DROP CONSTRAINT fk_rails_de3faecc1c;
       public    
   geid_admin    false    235    227    3140            �           2606    1303340 #   departure_mails fk_rails_e3d1d70d31    FK CONSTRAINT     �   ALTER TABLE ONLY public.departure_mails
    ADD CONSTRAINT fk_rails_e3d1d70d31 FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.departure_mails DROP CONSTRAINT fk_rails_e3d1d70d31;
       public    
   geid_admin    false    3108    207    235            �           2606    1303471    profiles fk_rails_e424190865    FK CONSTRAINT     {   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk_rails_e424190865 FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.profiles DROP CONSTRAINT fk_rails_e424190865;
       public    
   geid_admin    false    207    245    3108            �           2606    1303210 "   correspondents fk_rails_f75fb4bc4f    FK CONSTRAINT     �   ALTER TABLE ONLY public.correspondents
    ADD CONSTRAINT fk_rails_f75fb4bc4f FOREIGN KEY (correspondent_type_id) REFERENCES public.correspondent_types(id);
 L   ALTER TABLE ONLY public.correspondents DROP CONSTRAINT fk_rails_f75fb4bc4f;
       public    
   geid_admin    false    227    3137    225            �      x������ � �      �      x������ � �      V   ?   x�K�+�,���M�+�LI-K��/ ���t,uL��ͬL���MM�-��Hq��qqq ��h      z      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      r   }   x�}�=
�0��Y:E/�[H�K�4�R�C)�M����o{��c`#21a���^?�}+l�BB�D�"<��ESX!����(n�^��ƹ�ly@�`�J�g�`}��=�W�}�͉�/1"�"� ��5|      t   �   x���9�@ k�� �����K%�A9P�d����i��f�#���`8���>0^�� $�Q�HO�۠��D��P@�iIB9|�\���>둧�J�Q�@U"L�ĶʭM���m����ؓ˞±G���K�      |      x������ � �      l   \   x�3�t�,JM.���S0��!CN##]K]S#C+C3+Sc=#333<R\FHf�7����Y`).c$���el`j`d�G�+F��� B�1      n   [   x�}�1
�0F�99E/В?��vv��@�/n]���������HE%K�R���{�bn��úRSM��`�����s�`�(��0%      �      x������ � �      �      x������ � �      �      x������ � �      Z   �   x���1�0@��>E/ r�8Ĭݫ.�X2�*RRw��X��A�ۓ��(杧H��Q�;o��{�`��cb��:��хQ}��B�A��SI��Q�|6�dB"S2��<�k/��u9{����S��?9=t      v   a   x���1@@E�S����1;�N�Jku�����{�+(�k\����X�<mt�OA**AR�X)zx���]|$V�FZ��Mh�Jɿ�	/�;�Q3�	��(      �      x������ � �      �      x������ � �      d   s   x���=
�@��z�^ a�w'��
� ����z~�\�+>x�a��E4�뭿��wBB�D~^8׹Fz�]P�L�k�R`k��kZ� ��=������?�b2���>#�K�2t      �      x������ � �      h   �   x�}̻�0���z
/����׏,@
D�!#��'d'�`1`K�T��b2��ILt�m/׬sե��~���i��Yc�`�`D[L���!�)Kp$�q>�{�C����E +L�Z��ֲ}���8oz��Q)�M;!      j      x������ � �      ^   Z   x�}̻�0 �ڞ�9��8C0A���a���t+h�H��0�؟}&�D��.MJ#ΤE�N�me������X�'�=#��� �      \   <   x�3�47620�0�4��4�?N##]K]S#C+cC+#=cs#s3<R\1z\\\ EV`      �   u   x�3�063452�015���t��/�tq�ur�q�!�X��*Z�Y��Y����2�4�05012�0�4[��X\���������.�[XX������ ��,�      b   �   x�3�4271�4471��t,*�,K�Q�M���t�
�tRpQw2�w�*p��� CN�����������������������).#N3C#SC#N�ԂĢ�ҢTt�]�BH��������W� �!7�      ~   �   x�}�;�0��>�;�D�ş855'H�`#VJ�Cq.�(h�4�h4zZ� 㭸�5��U:E�\92m���R�4�B�z��ڢ~~��B=j7Z���_$
l�E���ȅ�N���ռ/Kf*�`�sp��z)��g:�      �      x������ � �      X   �   x���I�0E��)�@+u����J�P����	�� y�����`fʖ4��~>�v�y���!���!��z��ʾq� u&�"��2�����c�z��
B� �ĉngޏ���4~��A�Kb9��mV	�W���J�S^֚���K�F8����,V�      U   �   x�U��!�;�D3����:�l����7�"�0���l�4W�r�R.F��r�2��7�4Ry�P�k�����Y��T��uj�é�:+�dWNaD�4`�R|�}8��}�M�v^�����ꜝ�����Z�k�_�st<�69-���c| k,      p   �   x�}̻�0���n
Ht�����	�$K�Ad�b#,`��~�cP%J!%%���X�i(�����cj(5d�cg��1xe������N�+缍�����J��B�h�lWN˴�ᖟ�|?u;� RYط����;      f   ^   x�}�1
�0E��^����ָ������� �P�����)!�����m���(A �x/�A'M��0J��]�]ঃ��Z϶]�C(?�K`�G�!b      �      x������ � �      �      x������ � �      x      x������ � �      �      x������ � �      `   �  x�}�K��@F�ů����zRT�FQ$���>��| "�����v&c�I�߹�9�r�BF0%D�R��B�a>& ݾ���I��ܥ�!Q�Y
Z�k!��3����d�sd��hl�B��(,5d5�pv���%\Vt��9�����a��/����i���i���`@�@�tPdYu_� |˞]�X�uf�~q�8���\�˾=m�;��7��Ȋ}�B��'�b�7�jL�9j@
:F���1��o��A��b�rZ�c��m��ݔ��d�O��M.��Cg�ڻ�M����U��N9�ZR(`AL)���N��Y� {�m�r��|�<a{b��6��[��9�;��������صI���l�
	�:i@
:ETC]�@����{˞e�z����uoӑ����%��e�~��y���e�`{t����`�}�&N�,���e���*������     