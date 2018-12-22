/*
 Navicat PostgreSQL Data Transfer

 Source Server         : local
 Source Server Type    : PostgreSQL
 Source Server Version : 100005
 Source Host           : localhost:5432
 Source Catalog        : jmicrocreditos
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100005
 File Encoding         : 65001

 Date: 22/12/2018 07:14:08
*/


-- ----------------------------
-- Sequence structure for bem_idbem_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bem_idbem_seq";
CREATE SEQUENCE "public"."bem_idbem_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cliente_idcliente_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cliente_idcliente_seq";
CREATE SEQUENCE "public"."cliente_idcliente_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for credito_idcredito_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."credito_idcredito_seq";
CREATE SEQUENCE "public"."credito_idcredito_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for distrito_ididstrito_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."distrito_ididstrito_seq";
CREATE SEQUENCE "public"."distrito_ididstrito_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estado_idestado_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estado_idestado_seq";
CREATE SEQUENCE "public"."estado_idestado_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estadocivil_idestadocivil_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estadocivil_idestadocivil_seq";
CREATE SEQUENCE "public"."estadocivil_idestadocivil_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for funcionario_idfuncionario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."funcionario_idfuncionario_seq";
CREATE SEQUENCE "public"."funcionario_idfuncionario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for grupo_alvo_idgrupo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."grupo_alvo_idgrupo_seq";
CREATE SEQUENCE "public"."grupo_alvo_idgrupo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for hibernate_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hibernate_sequence";
CREATE SEQUENCE "public"."hibernate_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for instituicao_idinstituicao_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."instituicao_idinstituicao_seq";
CREATE SEQUENCE "public"."instituicao_idinstituicao_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for juri_idjuri_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."juri_idjuri_seq";
CREATE SEQUENCE "public"."juri_idjuri_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for modo_pagamento_idmodo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."modo_pagamento_idmodo_seq";
CREATE SEQUENCE "public"."modo_pagamento_idmodo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for provincia_idprovincia_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."provincia_idprovincia_seq";
CREATE SEQUENCE "public"."provincia_idprovincia_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sexo_idSexo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sexo_idSexo_seq";
CREATE SEQUENCE "public"."sexo_idSexo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_credito_idcrecredito_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_credito_idcrecredito_seq";
CREATE SEQUENCE "public"."tipo_credito_idcrecredito_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_user_id_seq";
CREATE SEQUENCE "public"."user_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for bem
-- ----------------------------
DROP TABLE IF EXISTS "public"."bem";
CREATE TABLE "public"."bem" (
  "idbem" int4 NOT NULL DEFAULT nextval('bem_idbem_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bens_creditonegocio
-- ----------------------------
DROP TABLE IF EXISTS "public"."bens_creditonegocio";
CREATE TABLE "public"."bens_creditonegocio" (
  "idbem" int4 NOT NULL,
  "idcredito" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS "public"."cliente";
CREATE TABLE "public"."cliente" (
  "idcliente" int4 NOT NULL,
  "idestadocivil" int4 NOT NULL,
  "nr_bi" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "iddistrito" int4 NOT NULL,
  "linhaendereco1" varchar(255) COLLATE "pg_catalog"."default",
  "linhaendereco2" varchar(255) COLLATE "pg_catalog"."default",
  "contacto1" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "contacto2" varchar(255) COLLATE "pg_catalog"."default",
  "idsexo" int4
)
;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO "public"."cliente" VALUES (21, 2, 'nnnpoopgi', 2, NULL, NULL, 'nvbnhg', 'jgfhjfg', 1);

-- ----------------------------
-- Table structure for credito
-- ----------------------------
DROP TABLE IF EXISTS "public"."credito";
CREATE TABLE "public"."credito" (
  "idcredito" int4 NOT NULL DEFAULT nextval('credito_idcredito_seq'::regclass),
  "valor" float8 NOT NULL,
  "data_emprestimo" date NOT NULL,
  "data_pagamento" date NOT NULL,
  "nr_max_pag" int4 NOT NULL,
  "idcliente" int4 NOT NULL,
  "idtipocredito" int4,
  "idestado" int8
)
;

-- ----------------------------
-- Table structure for credito_juro
-- ----------------------------
DROP TABLE IF EXISTS "public"."credito_juro";
CREATE TABLE "public"."credito_juro" (
  "idjuro" int4 NOT NULL,
  "idcredito" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for creditonegocio
-- ----------------------------
DROP TABLE IF EXISTS "public"."creditonegocio";
CREATE TABLE "public"."creditonegocio" (
  "idcredito" int4 NOT NULL,
  "testemunha" int4
)
;

-- ----------------------------
-- Table structure for distrito
-- ----------------------------
DROP TABLE IF EXISTS "public"."distrito";
CREATE TABLE "public"."distrito" (
  "ididstrito" int4 NOT NULL DEFAULT nextval('distrito_ididstrito_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "idprovincia" int4 NOT NULL
)
;

-- ----------------------------
-- Records of distrito
-- ----------------------------
INSERT INTO "public"."distrito" VALUES (2, 'Pemba', 1);
INSERT INTO "public"."distrito" VALUES (4, 'Montepuez', 1);
INSERT INTO "public"."distrito" VALUES (5, 'Chiure', 1);

-- ----------------------------
-- Table structure for estado
-- ----------------------------
DROP TABLE IF EXISTS "public"."estado";
CREATE TABLE "public"."estado" (
  "idestado" int8 NOT NULL DEFAULT nextval('estado_idestado_seq'::regclass),
  "status" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estadocivil
-- ----------------------------
DROP TABLE IF EXISTS "public"."estadocivil";
CREATE TABLE "public"."estadocivil" (
  "idestadocivil" int4 NOT NULL DEFAULT nextval('estadocivil_idestadocivil_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of estadocivil
-- ----------------------------
INSERT INTO "public"."estadocivil" VALUES (2, 'Casado');
INSERT INTO "public"."estadocivil" VALUES (3, 'Solteiro');

-- ----------------------------
-- Table structure for funcionario
-- ----------------------------
DROP TABLE IF EXISTS "public"."funcionario";
CREATE TABLE "public"."funcionario" (
  "idfuncionario" int4 NOT NULL DEFAULT nextval('funcionario_idfuncionario_seq'::regclass),
  "idinstituicao" int4 NOT NULL,
  "funcao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for grupoalvo
-- ----------------------------
DROP TABLE IF EXISTS "public"."grupoalvo";
CREATE TABLE "public"."grupoalvo" (
  "idgrupo" int4 NOT NULL DEFAULT nextval('grupo_alvo_idgrupo_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "idtipo_credito" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for historicopagamento
-- ----------------------------
DROP TABLE IF EXISTS "public"."historicopagamento";
CREATE TABLE "public"."historicopagamento" (
  "idcredito" int4 NOT NULL,
  "idmodopagamento" int4 NOT NULL,
  "data" date NOT NULL,
  "valor" float8 NOT NULL,
  "ordem" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for instituicao
-- ----------------------------
DROP TABLE IF EXISTS "public"."instituicao";
CREATE TABLE "public"."instituicao" (
  "idinstituicao" int4 NOT NULL DEFAULT nextval('instituicao_idinstituicao_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "contacto_gestor" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "linhaendereco1" varchar(255) COLLATE "pg_catalog"."default",
  "linhaendereco2" varchar(255) COLLATE "pg_catalog"."default",
  "iddistrito" int4
)
;

-- ----------------------------
-- Table structure for juro
-- ----------------------------
DROP TABLE IF EXISTS "public"."juro";
CREATE TABLE "public"."juro" (
  "idjuro" int4 NOT NULL DEFAULT nextval('juri_idjuri_seq'::regclass),
  "percentagem" float8 NOT NULL,
  "estado" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Table structure for modopagamento
-- ----------------------------
DROP TABLE IF EXISTS "public"."modopagamento";
CREATE TABLE "public"."modopagamento" (
  "idmodo" int4 NOT NULL DEFAULT nextval('modo_pagamento_idmodo_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of modopagamento
-- ----------------------------
INSERT INTO "public"."modopagamento" VALUES (2, 'Prestação');
INSERT INTO "public"."modopagamento" VALUES (3, 'Full');

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS "public"."provincia";
CREATE TABLE "public"."provincia" (
  "idprovincia" int4 NOT NULL DEFAULT nextval('provincia_idprovincia_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO "public"."provincia" VALUES (1, 'Cabo Delgado');
INSERT INTO "public"."provincia" VALUES (2, 'Nampula');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "public"."role";
CREATE TABLE "public"."role" (
  "role_id" int4 NOT NULL,
  "role" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO "public"."role" VALUES (1, 'ADMIN');
INSERT INTO "public"."role" VALUES (2, 'CLIENT');

-- ----------------------------
-- Table structure for sexo
-- ----------------------------
DROP TABLE IF EXISTS "public"."sexo";
CREATE TABLE "public"."sexo" (
  "idsexo" int8 NOT NULL DEFAULT nextval('"sexo_idSexo_seq"'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sexo
-- ----------------------------
INSERT INTO "public"."sexo" VALUES (1, 'Masculino');
INSERT INTO "public"."sexo" VALUES (2, 'Femenino');

-- ----------------------------
-- Table structure for tipocredito
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipocredito";
CREATE TABLE "public"."tipocredito" (
  "idcrecredito" int4 NOT NULL DEFAULT nextval('tipo_credito_idcrecredito_seq'::regclass),
  "descricao" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of tipocredito
-- ----------------------------
INSERT INTO "public"."tipocredito" VALUES (2, 'Credito ao Consumo');
INSERT INTO "public"."tipocredito" VALUES (3, 'Credito para Negócio');
INSERT INTO "public"."tipocredito" VALUES (4, 'Credito pela Penhora');
INSERT INTO "public"."tipocredito" VALUES (5, 'Credito VIP');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
  "active" int4,
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "last_name" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "user_id" int8 NOT NULL DEFAULT nextval('user_user_id_seq'::regclass)
)
;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "public"."user" VALUES (1, 'admin@mail.com', 'admin', 'admin', '1234', 1);
INSERT INTO "public"."user" VALUES (1, 'admin@mail.com', 'Ali', 'Felermino', '1234', 21);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_role";
CREATE TABLE "public"."user_role" (
  "user_id" int4 NOT NULL,
  "role_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO "public"."user_role" VALUES (1, 1);
INSERT INTO "public"."user_role" VALUES (21, 2);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."bem_idbem_seq"
OWNED BY "public"."bem"."idbem";
SELECT setval('"public"."bem_idbem_seq"', 2, false);
ALTER SEQUENCE "public"."cliente_idcliente_seq"
OWNED BY "public"."cliente"."idcliente";
SELECT setval('"public"."cliente_idcliente_seq"', 3, false);
ALTER SEQUENCE "public"."credito_idcredito_seq"
OWNED BY "public"."credito"."idcredito";
SELECT setval('"public"."credito_idcredito_seq"', 3, false);
ALTER SEQUENCE "public"."distrito_ididstrito_seq"
OWNED BY "public"."distrito"."ididstrito";
SELECT setval('"public"."distrito_ididstrito_seq"', 6, true);
ALTER SEQUENCE "public"."estado_idestado_seq"
OWNED BY "public"."estado"."idestado";
SELECT setval('"public"."estado_idestado_seq"', 2, false);
ALTER SEQUENCE "public"."estadocivil_idestadocivil_seq"
OWNED BY "public"."estadocivil"."idestadocivil";
SELECT setval('"public"."estadocivil_idestadocivil_seq"', 4, true);
ALTER SEQUENCE "public"."funcionario_idfuncionario_seq"
OWNED BY "public"."funcionario"."idfuncionario";
SELECT setval('"public"."funcionario_idfuncionario_seq"', 3, false);
ALTER SEQUENCE "public"."grupo_alvo_idgrupo_seq"
OWNED BY "public"."grupoalvo"."idgrupo";
SELECT setval('"public"."grupo_alvo_idgrupo_seq"', 3, false);
SELECT setval('"public"."hibernate_sequence"', 22, true);
ALTER SEQUENCE "public"."instituicao_idinstituicao_seq"
OWNED BY "public"."instituicao"."idinstituicao";
SELECT setval('"public"."instituicao_idinstituicao_seq"', 3, false);
ALTER SEQUENCE "public"."juri_idjuri_seq"
OWNED BY "public"."juro"."idjuro";
SELECT setval('"public"."juri_idjuri_seq"', 3, false);
ALTER SEQUENCE "public"."modo_pagamento_idmodo_seq"
OWNED BY "public"."modopagamento"."idmodo";
SELECT setval('"public"."modo_pagamento_idmodo_seq"', 4, true);
ALTER SEQUENCE "public"."provincia_idprovincia_seq"
OWNED BY "public"."provincia"."idprovincia";
SELECT setval('"public"."provincia_idprovincia_seq"', 4, true);
ALTER SEQUENCE "public"."sexo_idSexo_seq"
OWNED BY "public"."sexo"."idsexo";
SELECT setval('"public"."sexo_idSexo_seq"', 3, true);
ALTER SEQUENCE "public"."tipo_credito_idcrecredito_seq"
OWNED BY "public"."tipocredito"."idcrecredito";
SELECT setval('"public"."tipo_credito_idcrecredito_seq"', 6, true);
ALTER SEQUENCE "public"."user_user_id_seq"
OWNED BY "public"."user"."user_id";
SELECT setval('"public"."user_user_id_seq"', 2, true);

-- ----------------------------
-- Primary Key structure for table bem
-- ----------------------------
ALTER TABLE "public"."bem" ADD CONSTRAINT "bem_pkey" PRIMARY KEY ("idbem");

-- ----------------------------
-- Primary Key structure for table bens_creditonegocio
-- ----------------------------
ALTER TABLE "public"."bens_creditonegocio" ADD CONSTRAINT "bens_creditonegocio_pkey" PRIMARY KEY ("idbem", "idcredito");

-- ----------------------------
-- Primary Key structure for table cliente
-- ----------------------------
ALTER TABLE "public"."cliente" ADD CONSTRAINT "cliente_pkey" PRIMARY KEY ("idcliente");

-- ----------------------------
-- Primary Key structure for table credito
-- ----------------------------
ALTER TABLE "public"."credito" ADD CONSTRAINT "credito_pkey" PRIMARY KEY ("idcredito");

-- ----------------------------
-- Primary Key structure for table credito_juro
-- ----------------------------
ALTER TABLE "public"."credito_juro" ADD CONSTRAINT "credito_juro_pkey" PRIMARY KEY ("idjuro", "idcredito");

-- ----------------------------
-- Primary Key structure for table creditonegocio
-- ----------------------------
ALTER TABLE "public"."creditonegocio" ADD CONSTRAINT "creditonegocio_pkey" PRIMARY KEY ("idcredito");

-- ----------------------------
-- Primary Key structure for table distrito
-- ----------------------------
ALTER TABLE "public"."distrito" ADD CONSTRAINT "distrito_pkey" PRIMARY KEY ("ididstrito");

-- ----------------------------
-- Primary Key structure for table estado
-- ----------------------------
ALTER TABLE "public"."estado" ADD CONSTRAINT "estado_pkey" PRIMARY KEY ("idestado");

-- ----------------------------
-- Primary Key structure for table estadocivil
-- ----------------------------
ALTER TABLE "public"."estadocivil" ADD CONSTRAINT "estadocivil_pkey" PRIMARY KEY ("idestadocivil");

-- ----------------------------
-- Primary Key structure for table funcionario
-- ----------------------------
ALTER TABLE "public"."funcionario" ADD CONSTRAINT "funcionario_pkey" PRIMARY KEY ("idfuncionario");

-- ----------------------------
-- Primary Key structure for table grupoalvo
-- ----------------------------
ALTER TABLE "public"."grupoalvo" ADD CONSTRAINT "grupo_alvo_pkey" PRIMARY KEY ("idgrupo");

-- ----------------------------
-- Primary Key structure for table historicopagamento
-- ----------------------------
ALTER TABLE "public"."historicopagamento" ADD CONSTRAINT "historico_pagamento_pkey" PRIMARY KEY ("idcredito", "idmodopagamento");

-- ----------------------------
-- Primary Key structure for table instituicao
-- ----------------------------
ALTER TABLE "public"."instituicao" ADD CONSTRAINT "instituicao_pkey" PRIMARY KEY ("idinstituicao");

-- ----------------------------
-- Primary Key structure for table juro
-- ----------------------------
ALTER TABLE "public"."juro" ADD CONSTRAINT "juri_pkey" PRIMARY KEY ("idjuro");

-- ----------------------------
-- Primary Key structure for table modopagamento
-- ----------------------------
ALTER TABLE "public"."modopagamento" ADD CONSTRAINT "modo_pagamento_pkey" PRIMARY KEY ("idmodo");

-- ----------------------------
-- Primary Key structure for table provincia
-- ----------------------------
ALTER TABLE "public"."provincia" ADD CONSTRAINT "provincia_pkey" PRIMARY KEY ("idprovincia");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "public"."role" ADD CONSTRAINT "role_pkey" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sexo
-- ----------------------------
ALTER TABLE "public"."sexo" ADD CONSTRAINT "sexo_pkey" PRIMARY KEY ("idsexo");

-- ----------------------------
-- Primary Key structure for table tipocredito
-- ----------------------------
ALTER TABLE "public"."tipocredito" ADD CONSTRAINT "tipo_credito_pkey" PRIMARY KEY ("idcrecredito");

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "public"."user" ADD CONSTRAINT "user_pkey" PRIMARY KEY ("user_id");

-- ----------------------------
-- Uniques structure for table user_role
-- ----------------------------
ALTER TABLE "public"."user_role" ADD CONSTRAINT "uk_it77eq964jhfqtu54081ebtio" UNIQUE ("role_id");

-- ----------------------------
-- Primary Key structure for table user_role
-- ----------------------------
ALTER TABLE "public"."user_role" ADD CONSTRAINT "user_role_pkey" PRIMARY KEY ("role_id", "user_id");

-- ----------------------------
-- Foreign Keys structure for table bens_creditonegocio
-- ----------------------------
ALTER TABLE "public"."bens_creditonegocio" ADD CONSTRAINT "bens_creditonegocio_idbem_fkey" FOREIGN KEY ("idbem") REFERENCES "public"."bem" ("idbem") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."bens_creditonegocio" ADD CONSTRAINT "bens_creditonegocio_idcredito_fkey" FOREIGN KEY ("idcredito") REFERENCES "public"."creditonegocio" ("idcredito") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cliente
-- ----------------------------
ALTER TABLE "public"."cliente" ADD CONSTRAINT "cliente_idcliente_fkey" FOREIGN KEY ("idcliente") REFERENCES "public"."user" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."cliente" ADD CONSTRAINT "cliente_iddistrito_fkey" FOREIGN KEY ("iddistrito") REFERENCES "public"."distrito" ("ididstrito") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cliente" ADD CONSTRAINT "cliente_idestadocivil_fkey" FOREIGN KEY ("idestadocivil") REFERENCES "public"."estadocivil" ("idestadocivil") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cliente" ADD CONSTRAINT "cliente_idsexo_fkey" FOREIGN KEY ("idsexo") REFERENCES "public"."sexo" ("idsexo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table credito
-- ----------------------------
ALTER TABLE "public"."credito" ADD CONSTRAINT "credito_idcliente_fkey" FOREIGN KEY ("idcliente") REFERENCES "public"."cliente" ("idcliente") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."credito" ADD CONSTRAINT "credito_idestado_fkey" FOREIGN KEY ("idestado") REFERENCES "public"."estado" ("idestado") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."credito" ADD CONSTRAINT "credito_idtipocredito_fkey" FOREIGN KEY ("idtipocredito") REFERENCES "public"."tipocredito" ("idcrecredito") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table credito_juro
-- ----------------------------
ALTER TABLE "public"."credito_juro" ADD CONSTRAINT "credito_juro_idcredito_fkey" FOREIGN KEY ("idcredito") REFERENCES "public"."credito" ("idcredito") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."credito_juro" ADD CONSTRAINT "credito_juro_idjuro_fkey" FOREIGN KEY ("idjuro") REFERENCES "public"."juro" ("idjuro") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table creditonegocio
-- ----------------------------
ALTER TABLE "public"."creditonegocio" ADD CONSTRAINT "creditonegocio_idcredito_fkey" FOREIGN KEY ("idcredito") REFERENCES "public"."credito" ("idcredito") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table distrito
-- ----------------------------
ALTER TABLE "public"."distrito" ADD CONSTRAINT "distrito_idprovincia_fkey" FOREIGN KEY ("idprovincia") REFERENCES "public"."provincia" ("idprovincia") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table funcionario
-- ----------------------------
ALTER TABLE "public"."funcionario" ADD CONSTRAINT "funcionario_idfuncionario_fkey" FOREIGN KEY ("idfuncionario") REFERENCES "public"."cliente" ("idcliente") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."funcionario" ADD CONSTRAINT "funcionario_idinstituicao_fkey" FOREIGN KEY ("idinstituicao") REFERENCES "public"."instituicao" ("idinstituicao") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table grupoalvo
-- ----------------------------
ALTER TABLE "public"."grupoalvo" ADD CONSTRAINT "grupo_alvo_idtipo_credito_fkey" FOREIGN KEY ("idtipo_credito") REFERENCES "public"."tipocredito" ("idcrecredito") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table historicopagamento
-- ----------------------------
ALTER TABLE "public"."historicopagamento" ADD CONSTRAINT "historico_pagamento_idcredito_fkey" FOREIGN KEY ("idcredito") REFERENCES "public"."credito" ("idcredito") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."historicopagamento" ADD CONSTRAINT "historico_pagamento_idmodopagamento_fkey" FOREIGN KEY ("idmodopagamento") REFERENCES "public"."modopagamento" ("idmodo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table instituicao
-- ----------------------------
ALTER TABLE "public"."instituicao" ADD CONSTRAINT "instituicao_iddistrito_fkey" FOREIGN KEY ("iddistrito") REFERENCES "public"."distrito" ("ididstrito") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_role
-- ----------------------------
ALTER TABLE "public"."user_role" ADD CONSTRAINT "fka68196081fvovjhkek5m97n3y" FOREIGN KEY ("role_id") REFERENCES "public"."role" ("role_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."user_role" ADD CONSTRAINT "user_role_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."user" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
