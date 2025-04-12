/*
 Navicat Premium Dump SQL

 Source Server         : 127.0.0.1
 Source Server Type    : PostgreSQL
 Source Server Version : 160002 (160002)
 Source Host           : 127.0.0.1:5432
 Source Catalog        : kcloud_platform
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160002 (160002)
 File Encoding         : 65001

 Date: 04/11/2024 09:46:24
*/


-- ----------------------------
-- Sequence structure for boot_sys_cluster_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_cluster_id_seq";
CREATE SEQUENCE "public"."boot_sys_cluster_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_cluster_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_cluster_id_seq1";
CREATE SEQUENCE "public"."boot_sys_cluster_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_dept_id_seq";
CREATE SEQUENCE "public"."boot_sys_dept_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_dept_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_dept_id_seq1";
CREATE SEQUENCE "public"."boot_sys_dept_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_dict_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_dict_id_seq";
CREATE SEQUENCE "public"."boot_sys_dict_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_dict_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_dict_id_seq1";
CREATE SEQUENCE "public"."boot_sys_dict_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_dict_item_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_dict_item_id_seq";
CREATE SEQUENCE "public"."boot_sys_dict_item_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_dict_item_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_dict_item_id_seq1";
CREATE SEQUENCE "public"."boot_sys_dict_item_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_i18n_message_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_i18n_message_id_seq";
CREATE SEQUENCE "public"."boot_sys_i18n_message_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_i18n_message_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_i18n_message_id_seq1";
CREATE SEQUENCE "public"."boot_sys_i18n_message_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_ip_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_ip_id_seq";
CREATE SEQUENCE "public"."boot_sys_ip_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_ip_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_ip_id_seq1";
CREATE SEQUENCE "public"."boot_sys_ip_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_menu_id_seq";
CREATE SEQUENCE "public"."boot_sys_menu_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_menu_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_menu_id_seq1";
CREATE SEQUENCE "public"."boot_sys_menu_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_message_detail_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_message_detail_id_seq";
CREATE SEQUENCE "public"."boot_sys_message_detail_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_message_detail_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_message_detail_id_seq1";
CREATE SEQUENCE "public"."boot_sys_message_detail_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_message_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_message_id_seq";
CREATE SEQUENCE "public"."boot_sys_message_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_message_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_message_id_seq1";
CREATE SEQUENCE "public"."boot_sys_message_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_oss_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_oss_id_seq";
CREATE SEQUENCE "public"."boot_sys_oss_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_oss_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_oss_id_seq1";
CREATE SEQUENCE "public"."boot_sys_oss_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_package_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_package_id_seq";
CREATE SEQUENCE "public"."boot_sys_package_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_package_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_package_id_seq1";
CREATE SEQUENCE "public"."boot_sys_package_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_role_id_seq";
CREATE SEQUENCE "public"."boot_sys_role_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_role_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_role_id_seq1";
CREATE SEQUENCE "public"."boot_sys_role_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_role_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_role_menu_id_seq";
CREATE SEQUENCE "public"."boot_sys_role_menu_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_role_menu_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_role_menu_id_seq1";
CREATE SEQUENCE "public"."boot_sys_role_menu_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_source_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_source_id_seq";
CREATE SEQUENCE "public"."boot_sys_source_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_source_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_source_id_seq1";
CREATE SEQUENCE "public"."boot_sys_source_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_tenant_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_tenant_id_seq";
CREATE SEQUENCE "public"."boot_sys_tenant_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_tenant_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_tenant_id_seq1";
CREATE SEQUENCE "public"."boot_sys_tenant_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_user_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_user_dept_id_seq";
CREATE SEQUENCE "public"."boot_sys_user_dept_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_user_dept_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_user_dept_id_seq1";
CREATE SEQUENCE "public"."boot_sys_user_dept_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_user_id_seq";
CREATE SEQUENCE "public"."boot_sys_user_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_user_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_user_id_seq1";
CREATE SEQUENCE "public"."boot_sys_user_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_user_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_user_role_id_seq";
CREATE SEQUENCE "public"."boot_sys_user_role_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for boot_sys_user_role_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."boot_sys_user_role_id_seq1";
CREATE SEQUENCE "public"."boot_sys_user_role_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for boot_sys_cluster
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_cluster";
CREATE TABLE "public"."boot_sys_cluster" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_cluster"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_cluster"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_cluster"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_cluster"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_cluster"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_cluster"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_cluster"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_cluster"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_cluster"."name" IS '集群名称';
COMMENT ON COLUMN "public"."boot_sys_cluster"."code" IS '集群编码';
COMMENT ON COLUMN "public"."boot_sys_cluster"."remark" IS '集群备注';
COMMENT ON TABLE "public"."boot_sys_cluster" IS '集群';

-- ----------------------------
-- Records of boot_sys_cluster
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_dept";
CREATE TABLE "public"."boot_sys_dept" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "pid" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "path" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT '0'::character varying,
  "sort" int4 NOT NULL DEFAULT 1
)
;
COMMENT ON COLUMN "public"."boot_sys_dept"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_dept"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_dept"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_dept"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_dept"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_dept"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_dept"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_dept"."pid" IS '部门父节点ID';
COMMENT ON COLUMN "public"."boot_sys_dept"."name" IS '部门名称';
COMMENT ON COLUMN "public"."boot_sys_dept"."path" IS '部门节点';
COMMENT ON COLUMN "public"."boot_sys_dept"."sort" IS '部门排序';
COMMENT ON TABLE "public"."boot_sys_dept" IS '部门';

-- ----------------------------
-- Records of boot_sys_dept
-- ----------------------------
INSERT INTO "public"."boot_sys_dept" VALUES (1535858679453085698, 1341620898007281665, 1341620898007281665, '2022-11-02 22:35:30', '2023-09-22 11:31:42', 0, 4, 0, 1535887940687765505, '广州分公司', '0,1535887940687765505,1535858679453085698', 666);
INSERT INTO "public"."boot_sys_dept" VALUES (1535881356595175426, 1341620898007281665, 1341620898007281665, '2022-11-02 22:35:30', '2023-09-22 11:31:42', 0, 18, 0, 1535887940687765505, '长沙分公司', '0,1535887940687765505,1535881356595175426', 111);
INSERT INTO "public"."boot_sys_dept" VALUES (1535887129341599746, 1341620898007281665, 1341620898007281665, '2022-11-02 22:35:30', '2023-09-22 11:31:42', 0, 8, 0, 1535887940687765505, '深圳分公司', '0,1535887940687765505,1535887129341599746', 888);
INSERT INTO "public"."boot_sys_dept" VALUES (1535887940687765505, 1341620898007281665, 1341620898007281665, '2022-11-16 12:12:55', '2023-09-22 11:31:42', 0, 38, 0, 0, '老寇云集团', '0,1535887940687765505', 1000);
INSERT INTO "public"."boot_sys_dept" VALUES (1584488175088373761, 1341620898007281665, 1341620898007281665, '2022-11-02 22:35:30', '2023-09-22 11:31:42', 0, 43, 0, 1535881356595175426, '研发部', '0,1535887940687765505,1535881356595175426,1584488175088373761', 20);
INSERT INTO "public"."boot_sys_dept" VALUES (1584488411756171265, 1341620898007281665, 1341620898007281665, '2022-11-02 22:35:30', '2023-09-22 11:31:42', 0, 9, 0, 1535881356595175426, '市场部', '0,1535887940687765505,1535881356595175426,1584488411756171265', 10);
INSERT INTO "public"."boot_sys_dept" VALUES (1584488411756171266, 1341620898007281665, 1341620898007281665, '2022-11-02 22:35:30', '2023-09-22 11:31:42', 0, 19, 0, 1584488175088373761, '开发组', '0,1535887940687765505,1535881356595175426,1584488175088373761,1584488411756171266', 15);
INSERT INTO "public"."boot_sys_dept" VALUES (1584488411756171268, 1341620898007281665, 1341620898007281665, '2023-02-10 22:01:36', '2023-09-22 11:31:42', 0, 9, 0, 1584488175088373761, '运维组', '0,1535887940687765505,1535881356595175426,1584488175088373761,1584488411756171268', 5);
INSERT INTO "public"."boot_sys_dept" VALUES (1584488411756171269, 1341620898007281665, 1341620898007281665, '2023-02-10 22:06:44', '2023-09-22 11:31:42', 0, 8, 0, 1584488175088373761, '测试组', '0,1535887940687765505,1535881356595175426,1584488175088373761,1584488411756171269', 10);

-- ----------------------------
-- Table structure for boot_sys_dict
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_dict";
CREATE TABLE "public"."boot_sys_dict" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "status" int2
)
;
COMMENT ON COLUMN "public"."boot_sys_dict"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_dict"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_dict"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_dict"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_dict"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_dict"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_dict"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_dict"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_dict"."name" IS '字典名称';
COMMENT ON COLUMN "public"."boot_sys_dict"."type" IS '字典类型';
COMMENT ON COLUMN "public"."boot_sys_dict"."remark" IS '字典备注';
COMMENT ON COLUMN "public"."boot_sys_dict"."status" IS '字典状态 0启用 1停用';
COMMENT ON TABLE "public"."boot_sys_dict" IS '字典';

-- ----------------------------
-- Records of boot_sys_dict
-- ----------------------------
INSERT INTO "public"."boot_sys_dict" VALUES (1, 1341620898007281665, 1341620898007281665, '2024-05-09 00:15:30', '2024-05-09 00:15:40', 0, 0, 0, 'dict-type.manage.name.menu.show-hide', 'sys_menu_show_hide', '菜单状态列表', 0);

-- ----------------------------
-- Table structure for boot_sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_dict_item";
CREATE TABLE "public"."boot_sys_dict_item" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL DEFAULT 1,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "status" int2,
  "type_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_dict_item"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."label" IS '字典标签';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."value" IS '字典值';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."sort" IS '字典排序';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."remark" IS '字典备注';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."status" IS '字典状态 0启用 1停用';
COMMENT ON COLUMN "public"."boot_sys_dict_item"."type_id" IS '类型ID';
COMMENT ON TABLE "public"."boot_sys_dict_item" IS '字典项';

-- ----------------------------
-- Records of boot_sys_dict_item
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_i18n_message
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_i18n_message";
CREATE TABLE "public"."boot_sys_i18n_message" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "zh_message" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "en_message" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."code" IS '编码';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."zh_message" IS '中文';
COMMENT ON COLUMN "public"."boot_sys_i18n_message"."en_message" IS '英文';
COMMENT ON TABLE "public"."boot_sys_i18n_message" IS '国际化消息';

-- ----------------------------
-- Records of boot_sys_i18n_message
-- ----------------------------
INSERT INTO "public"."boot_sys_i18n_message" VALUES (1, 1341620898007281665, 1341620898007281665, '2024-05-07 10:45:30', '2024-05-07 10:45:37', 0, 0, 0, 'sys.manage', '系统管理', 'System Management');
INSERT INTO "public"."boot_sys_i18n_message" VALUES (2, 1341620898007281665, 1341620898007281665, '2024-05-07 10:45:30', '2024-05-07 10:45:37', 0, 0, 0, 'menu.manage', '菜单管理', 'Menu Management');
INSERT INTO "public"."boot_sys_i18n_message" VALUES (3, 1341620898007281665, 1341620898007281665, '2024-05-07 10:45:30', '2024-05-07 10:45:37', 0, 0, 0, 'menu.manage.query', '查询', 'Query');
INSERT INTO "public"."boot_sys_i18n_message" VALUES (4, 1341620898007281665, 1341620898007281665, '2024-05-07 10:45:30', '2024-05-07 10:45:37', 0, 0, 0, 'dict.manage', '字典管理', 'Dictionary Management');

-- ----------------------------
-- Table structure for boot_sys_ip
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_ip";
CREATE TABLE "public"."boot_sys_ip" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "label" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_ip"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_ip"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_ip"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_ip"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_ip"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_ip"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_ip"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_ip"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_ip"."label" IS '标签';
COMMENT ON COLUMN "public"."boot_sys_ip"."value" IS '值';
COMMENT ON TABLE "public"."boot_sys_ip" IS 'IP';

-- ----------------------------
-- Records of boot_sys_ip
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_menu";
CREATE TABLE "public"."boot_sys_menu" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "pid" int8 NOT NULL,
  "permission" varchar(200) COLLATE "pg_catalog"."default",
  "type" int2 NOT NULL DEFAULT 0,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "path" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(50) COLLATE "pg_catalog"."default",
  "sort" int4 NOT NULL DEFAULT 1,
  "hidden" int2 NOT NULL DEFAULT 0,
  "status" int2 NOT NULL DEFAULT 0,
  "url" varchar(400) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."boot_sys_menu"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_menu"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_menu"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_menu"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_menu"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_menu"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_menu"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_menu"."pid" IS '菜单父节点ID';
COMMENT ON COLUMN "public"."boot_sys_menu"."permission" IS '菜单权限标识';
COMMENT ON COLUMN "public"."boot_sys_menu"."type" IS '菜单类型 0菜单 1按钮';
COMMENT ON COLUMN "public"."boot_sys_menu"."name" IS '菜单名称';
COMMENT ON COLUMN "public"."boot_sys_menu"."path" IS '菜单路径';
COMMENT ON COLUMN "public"."boot_sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."boot_sys_menu"."sort" IS '菜单排序';
COMMENT ON COLUMN "public"."boot_sys_menu"."status" IS '菜单状态 0启用 1停用';
COMMENT ON TABLE "public"."boot_sys_menu" IS '菜单';

-- ----------------------------
-- Records of boot_sys_menu
-- ----------------------------
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (1, 1, 1, '2024-06-04 17:20:42', '2024-06-04 17:20:46', 0, 0, 0, 0, NULL, 0, '系统管理', '/sys', 'SettingOutlined', 90000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (2, 1, 1, '2024-06-04 17:27:14', '2024-06-04 17:27:12', 0, 0, 0, 1, NULL, 0, '日志管理', '/sys/log', '', 1000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (3, 1, 1, '2024-09-15 12:56:07', '2024-09-15 12:56:10', 0, 0, 0, 2, NULL, 0, '登录日志', '/sys/log/login', '', 800, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (4, 1, 1, '2024-06-04 17:27:14', '2024-06-04 17:27:12', 0, 0, 0, 3, 'sys:login-log:page', 1, '分页查询登录日志', NULL, '', 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (5, 1, 1, '2024-06-04 17:27:14', '2024-06-04 17:27:12', 0, 0, 0, 3, 'sys:login-log:export', 1, '导出全部登录日志', NULL, '', 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (8, 1, 1, '2024-09-17 18:36:56', '2024-09-17 18:36:59', 0, 0, 0, 2, NULL, 0, '通知日志', '/sys/log/notice', '', 700, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (9, 1, 1, '2024-09-17 18:38:24', '2024-09-17 18:38:26', 0, 0, 0, 8, 'sys:notice-log:page', 1, '分页查询通知日志', NULL, '', 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (10, 1, 1, '2024-09-17 18:39:34', '2024-09-17 18:39:37', 0, 0, 0, 8, 'sys:notice-log:export', 1, '导出全部通知日志', NULL, '', 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (11, 1, 1, '2025-01-11 14:10:54', '2025-01-11 14:10:57', 0, 0, 0, 3, 'sys:login-log:detail', 1, '查看登录日志', '', '', 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (12, 1, 1, '2025-01-11 14:13:13', '2025-01-11 14:13:16', 0, 0, 0, 8, 'sys:notice-log:detail', 1, '查看通知日志', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (13, 1, 1, '2025-01-18 09:26:17', '2025-01-18 09:26:20', 0, 0, 0, 0, NULL, 0, '物联管理', '/iot', 'RobotOutlined', 80000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (14, 1, 1, '2025-01-18 09:28:42', '2025-01-18 09:28:44', 0, 0, 0, 13, NULL, 0, '设备管理', '/iot/device', NULL, 5000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (15, 1, 1, '2025-01-18 09:30:03', '2025-01-18 09:30:05', 0, 0, 0, 14, NULL, 0, '设备', '/iot/device/index', NULL, 100, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (16, 1, 1, '2025-01-18 09:37:53', '2025-01-18 09:37:55', 0, 0, 0, 14, NULL, 0, '物模型', '/iot/device/thingModel', NULL, 400, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (17, 1, 1, '2025-01-18 09:38:58', '2025-01-18 09:39:00', 0, 0, 0, 14, NULL, 0, '产品', '/iot/device/product', NULL, 200, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (18, 1, 1, '2025-01-18 09:39:31', '2025-01-18 09:39:34', 0, 0, 0, 14, NULL, 0, '产品类别', '/iot/device/productCategory', NULL, 300, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (19, 1, 1, '2025-01-21 05:15:10', '2025-01-21 05:15:13', 0, 0, 0, 13, NULL, 0, '协议管理', '/iot/protocol', NULL, 4000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (20, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 19, NULL, 0, '通讯协议', '/iot/protocol/communication', NULL, 100, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (21, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 19, NULL, 0, '传输协议', '/iot/protocol/transport', NULL, 200, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (22, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 1, NULL, 0, '权限管理', '/sys/permission', NULL, 5000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (23, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 22, NULL, 0, '菜单', '/sys/permission/menu', NULL, 900, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (24, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 22, NULL, 0, '部门', '/sys/permission/dept', NULL, 800, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (25, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 22, NULL, 0, '角色', '/sys/permission/role', NULL, 700, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (26, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 22, NULL, 0, '用户', '/sys/permission/user', NULL, 600, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (27, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 1, NULL, 0, '租户管理', '/sys/tenant', NULL, 4000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (28, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 27, NULL, 0, '数据源', '/sys/tenant/source', NULL, 400, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (29, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 27, NULL, 0, '套餐', '/sys/tenant/package', NULL, 300, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (30, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 27, NULL, 0, '租户', '/sys/tenant/index', NULL, 200, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (31, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 1, NULL, 0, '基础数据', '/sys/base', NULL, 2000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (32, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 31, NULL, 0, '数据字典', '/sys/base/dict', NULL, 900, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (33, 1, 1, '2024-09-15 12:56:07', '2024-09-15 12:56:10', 0, 0, 0, 2, NULL, 0, '操作日志', '/sys/log/operate', '', 900, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (34, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 31, NULL, 0, '国际化', '/sys/base/i18n', NULL, 800, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (35, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 31, NULL, 0, 'IP', '/sys/base/ip', NULL, 700, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (36, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 1, NULL, 0, '对象存储', '/sys/oss', NULL, 1000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (37, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 36, NULL, 0, '对象存储配置', '/sys/oss/config', NULL, 200, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (38, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 36, NULL, 0, '对象存储日志', '/sys/oss/log', NULL, 100, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (39, 1, 1, '2025-01-21 05:19:17', '2025-01-21 05:19:20', 0, 0, 0, 1, NULL, 0, '集群管理', '/sys/cluster', NULL, 3000, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (40, 1, 1, '2025-01-21 05:19:17', '2025-01-29 11:20:15.092772', 0, 0, 0, 23, 'sys:menu:list-tree', 1, '查询菜单树列表', '', NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (41, 1, 1, '2025-01-21 05:19:17', '2025-01-29 11:20:15.092772', 0, 0, 0, 23, 'sys:menu:remove', 1, '删除菜单', '', NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (42, 1, 1, '2025-01-21 05:19:17', '2025-01-29 14:32:03.026995', 0, 0, 0, 23, 'sys:menu:save', 1, '新增菜单', '', NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (43, 1, 1, '2025-01-31 13:08:53.459704', '2025-01-31 13:08:53.459779', 0, 0, 0, 23, 'sys:menu:detail', 1, '查看菜单', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (44, 1, 1, '2025-01-31 13:50:50.855744', '2025-01-31 13:50:50.856767', 0, 0, 0, 23, 'sys:menu:modify', 1, '修改菜单', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (45, 1, 1, '2025-02-01 09:57:06.903239', '2025-02-01 09:57:16.643637', 0, 1, 0, 24, 'sys:dept:list-tree', 1, '查询部门树列表', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (46, 1, 1, '2025-02-02 13:24:26.26515', '2025-02-02 13:24:26.26515', 0, 0, 0, 24, 'sys:dept:detail', 1, '查看部门', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (47, 1, 1, '2025-02-02 13:36:39.981857', '2025-02-02 13:36:39.981857', 0, 0, 0, 24, 'sys:dept:save', 1, '新增部门', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (48, 1, 1, '2025-02-02 13:37:18.191332', '2025-02-02 13:37:26.503011', 0, 1, 0, 24, 'sys:dept:modify', 1, '修改部门', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (49, 1, 1, '2025-02-02 13:37:56.611868', '2025-02-02 13:38:04.173925', 0, 1, 0, 24, 'sys:dept:remove', 1, '删除部门', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (50, 1, 1, '2025-02-03 10:18:36.114539', '2025-02-03 10:18:36.115538', 0, 0, 0, 25, 'sys:role:page', 1, '分页查询角色', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (51, 1, 1, '2025-02-03 10:19:23.231544', '2025-02-03 10:19:23.232089', 0, 0, 0, 25, 'sys:role:save', 1, '新增角色', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (52, 1, 1, '2025-02-03 10:20:30.753445', '2025-02-03 10:20:30.753445', 0, 0, 0, 25, 'sys:role:modify', 1, '修改角色', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (53, 1, 1, '2025-02-03 10:20:55.204108', '2025-02-03 10:20:55.204108', 0, 0, 0, 25, 'sys:role:remove', 1, '删除角色', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (54, 1, 1, '2025-02-03 10:21:33.499697', '2025-02-03 10:21:33.499697', 0, 0, 0, 25, 'sys:role:detail', 1, '查看角色', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (55, 1, 1, '2025-02-04 13:45:32.958243', '2025-02-04 13:45:32.959244', 0, 0, 0, 26, 'sys:user:page', 1, '分页查询用户', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (56, 1, 1, '2025-02-04 13:46:48.225873', '2025-02-04 13:46:48.226411', 0, 0, 0, 26, 'sys:user:save', 1, '新增用户', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (57, 1, 1, '2025-02-04 13:47:19.981199', '2025-02-04 13:47:19.981199', 0, 0, 0, 26, 'sys:user:modify', 1, '修改用户', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (58, 1, 1, '2025-02-04 13:47:47.639939', '2025-02-04 13:47:47.639939', 0, 0, 0, 26, 'sys:user:remove', 1, '删除用户', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (59, 1, 1, '2025-02-04 13:48:34.215596', '2025-02-04 13:48:34.215596', 0, 0, 0, 26, 'sys:user:detail', 1, '查看用户', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (60, 1, 1, '2025-03-02 17:52:49.303296', '2025-03-02 17:54:03.34208', 0, 2, 0, 33, 'sys:operate-log:page', 1, '分页查询操作日志', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (61, 1, 1, '2025-03-02 18:06:30.782409', '2025-03-02 18:07:31.180306', 0, 1, 0, 33, 'sys:operate-log:export', 1, '导出全部操作日志', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (62, 1, 1, '2025-03-02 18:09:02.472121', '2025-03-02 18:09:02.472121', 0, 0, 0, 33, 'sys:operate-log:detail', 1, '查看操作日志', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (63, 1, 1, '2025-03-15 12:15:37.277552', '2025-03-15 12:15:37.278549', 0, 0, 0, 37, 'sys:oss:upload', 1, '上传文件', NULL, NULL, 5, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (64, 1, 1, '2025-03-16 11:29:37.482459', '2025-03-16 11:29:37.482459', 0, 0, 0, 20, 'iot:communication-protocol:detail', 1, '查看通讯协议', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (65, 1, 1, '2025-03-16 11:29:16.557205', '2025-03-16 11:29:16.557272', 0, 0, 0, 20, 'iot:communication-protocol:remove', 1, '删除通讯协议', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (66, 1, 1, '2025-03-16 11:28:50.27337', '2025-03-16 11:28:50.27337', 0, 0, 0, 20, 'iot:communication-protocol:modify', 1, '修改通讯协议', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (67, 1, 1, '2025-03-16 11:28:30.822693', '2025-03-16 11:28:30.822693', 0, 0, 0, 20, 'iot:communication-protocol:save', 1, '新增通讯协议', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (68, 1, 1, '2025-03-16 11:27:37.626071', '2025-03-16 11:27:37.626071', 0, 0, 0, 20, 'iot:communication-protocol:page', 1, '分页查询通讯协议', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (69, 1, 1, '2025-03-16 11:26:56.775423', '2025-03-16 11:26:56.775423', 0, 0, 0, 21, 'iot:transport-protocol:detail', 1, '查看传输协议', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (70, 1, 1, '2025-03-16 11:26:35.151986', '2025-03-16 11:26:35.151986', 0, 0, 0, 21, 'iot:transport-protocol:remove', 1, '删除传输协议', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (71, 1, 1, '2025-03-16 11:25:49.171885', '2025-03-16 11:25:49.171885', 0, 0, 0, 21, 'iot:transport-protocol:modify', 1, '修改传输协议', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (72, 1, 1, '2025-03-16 11:25:28.95389', '2025-03-16 11:25:28.95389', 0, 0, 0, 21, 'iot:transport-protocol:save', 1, '新增传输协议', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (73, 1, 1, '2025-03-16 11:25:05.526693', '2025-03-16 11:25:05.526693', 0, 0, 0, 21, 'iot:transport-protocol:page', 1, '分页查询传输协议', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (74, 1, 1, '2025-03-16 11:24:21.93876', '2025-03-16 11:24:21.93876', 0, 0, 0, 15, 'iot:device:detail', 1, '查看设备', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (75, 1, 1, '2025-03-16 11:24:02.28912', '2025-03-16 11:24:02.28912', 0, 0, 0, 15, 'iot:device:remove', 1, '删除设备', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (76, 1, 1, '2025-03-16 11:23:41.504246', '2025-03-16 11:23:41.504246', 0, 0, 0, 15, 'iot:device:modify', 1, '修改设备', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (77, 1, 1, '2025-03-16 11:23:23.056863', '2025-03-16 11:23:23.056863', 0, 0, 0, 15, 'iot:device:save', 1, '新增设备', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (78, 1, 1, '2025-03-16 11:22:56.958172', '2025-03-16 11:22:56.958172', 0, 0, 0, 15, 'iot:device:page', 1, '分页查询设备', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (79, 1, 1, '2025-03-16 11:22:20.518897', '2025-03-16 11:22:20.518897', 0, 0, 0, 18, 'iot:product-category:detail', 1, '查看产品类别', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (80, 1, 1, '2025-03-16 11:22:00.290849', '2025-03-16 11:22:00.290849', 0, 0, 0, 18, 'iot:product-category:remove', 1, '删除产品类别', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (81, 1, 1, '2025-03-16 11:21:32.205209', '2025-03-16 11:21:32.205209', 0, 0, 0, 18, 'iot:product-category:modify', 1, '修改产品类别', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (82, 1, 1, '2025-03-16 11:21:04.431009', '2025-03-16 11:21:04.431009', 0, 0, 0, 18, 'iot:product-category:save', 1, '新增产品类别', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (83, 1, 1, '2025-03-16 11:20:40.603807', '2025-03-16 11:20:40.603807', 0, 0, 0, 18, 'iot:product-category:page', 1, '分页查询产品类别', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (84, 1, 1, '2025-03-16 11:19:25.506634', '2025-03-16 11:19:25.506634', 0, 0, 0, 17, 'iot:product:detail', 1, '查看产品', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (85, 1, 1, '2025-03-16 11:18:43.37544', '2025-03-16 11:18:43.37544', 0, 0, 0, 17, 'iot:product:remove', 1, '删除产品', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (86, 1, 1, '2025-03-16 11:17:16.858243', '2025-03-16 11:18:07.952616', 0, 1, 0, 17, 'iot:product:modify', 1, '修改产品', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (87, 1, 1, '2025-03-16 11:16:56.540728', '2025-03-16 11:18:02.393751', 0, 1, 0, 17, 'iot:product:save', 1, '新增产品', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (88, 1, 1, '2025-03-16 11:04:36.477875', '2025-03-16 11:04:36.477875', 0, 0, 0, 17, 'iot:product:page', 1, '分页查询产品', NULL, NULL, 50, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (89, 1, 1, '2025-03-16 11:02:48.298633', '2025-03-16 11:02:48.298633', 0, 0, 0, 16, 'iot:thing-model:detail', 1, '查看物模型', NULL, NULL, 10, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (90, 1, 1, '2025-03-16 11:02:24.689321', '2025-03-16 11:02:24.689321', 0, 0, 0, 16, 'iot:thing-model:remove', 1, '删除物模型', NULL, NULL, 20, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (91, 1, 1, '2025-03-16 11:01:52.176027', '2025-03-16 11:18:56.079399', 0, 2, 0, 16, 'iot:thing-model:modify', 1, '修改物模型', NULL, NULL, 30, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (92, 1, 1, '2025-03-16 11:01:31.000074', '2025-03-16 11:01:31.000074', 0, 0, 0, 16, 'iot:thing-model:save', 1, '新增物模型', NULL, NULL, 40, 0);
INSERT INTO "public"."boot_sys_menu" ("id", "creator", "editor", "create_time", "update_time", "del_flag", "version", "tenant_id", "pid", "permission", "type", "name", "path", "icon", "sort", "status") VALUES (93, 1, 1, '2025-03-16 11:00:58.755018', '2025-03-16 11:00:58.755018', 0, 0, 0, 16, 'iot:thing-model:page', 1, '分页查询物模型', NULL, NULL, 50, 0);
-- ----------------------------
-- Table structure for boot_sys_menu_package
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_menu_package";
CREATE TABLE "public"."boot_sys_menu_package" (
  "id" int8 NOT NULL,
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "package_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_menu_package"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."package_id" IS '套餐ID';
COMMENT ON COLUMN "public"."boot_sys_menu_package"."menu_id" IS '菜单ID';
COMMENT ON TABLE "public"."boot_sys_menu_package" IS '菜单套餐';

-- ----------------------------
-- Records of boot_sys_menu_package
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_message
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_message";
CREATE TABLE "public"."boot_sys_message" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "title" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "public"."boot_sys_message"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_message"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_message"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_message"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_message"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_message"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_message"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_message"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_message"."title" IS '消息标题';
COMMENT ON COLUMN "public"."boot_sys_message"."content" IS '消息内容';
COMMENT ON COLUMN "public"."boot_sys_message"."type" IS '消息类型 0通知 1提醒';
COMMENT ON TABLE "public"."boot_sys_message" IS '消息';

-- ----------------------------
-- Records of boot_sys_message
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_oss
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_oss";
CREATE TABLE "public"."boot_sys_oss" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "endpoint" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "region" varchar(10) COLLATE "pg_catalog"."default",
  "access_key" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "secret_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "bucket_name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "path_style_access_enabled" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "public"."boot_sys_oss"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_oss"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_oss"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_oss"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_oss"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_oss"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_oss"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_oss"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_oss"."name" IS 'OSS名称';
COMMENT ON COLUMN "public"."boot_sys_oss"."endpoint" IS 'OSS的终端地址';
COMMENT ON COLUMN "public"."boot_sys_oss"."region" IS 'OSS的区域';
COMMENT ON COLUMN "public"."boot_sys_oss"."access_key" IS 'OSS的访问密钥';
COMMENT ON COLUMN "public"."boot_sys_oss"."secret_key" IS 'OSS的用户密钥';
COMMENT ON COLUMN "public"."boot_sys_oss"."bucket_name" IS 'OSS的桶名';
COMMENT ON COLUMN "public"."boot_sys_oss"."path_style_access_enabled" IS '路径样式访问 1已开启 0未启用';
COMMENT ON TABLE "public"."boot_sys_oss" IS 'OSS';

-- ----------------------------
-- Records of boot_sys_oss
-- ----------------------------
INSERT INTO "public"."boot_sys_oss" VALUES (1, 1341620898007281665, 1341620898007281665, '2023-01-05 16:36:37', '2023-09-18 15:15:05', 0, 32, 0, 'Minio OSS', 'http://127.0.0.1:9000', 'Shenzhen', 'minioadmin', 'minioadmin', 'laokou-minio-bucket', 1);
INSERT INTO "public"."boot_sys_oss" VALUES (1537444981390794754, 1341620898007281665, 1707428076142559234, '2022-11-02 14:35:46', '2023-10-21 15:44:18', 0, 36, 0, 'Aliyun OSS', 'https://oss-cn-shenzhen.aliyuncs.com', NULL, 'LTAI5tNvAEkJJHb9Gu6uGRxf', 'zbRGqzdY1y1JFXkKzrYdIeqgC0qpcc', 'koushenhai', 0);

-- ----------------------------
-- Table structure for boot_sys_package
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_package";
CREATE TABLE "public"."boot_sys_package" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_package"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_package"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_package"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_package"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_package"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_package"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_package"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_package"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_package"."name" IS '套餐名称';
COMMENT ON TABLE "public"."boot_sys_package" IS '套餐';

-- ----------------------------
-- Records of boot_sys_package
-- ----------------------------
INSERT INTO "public"."boot_sys_package" VALUES (1, 1341620898007281665, 1341620898007281665, '2023-02-09 13:38:42', '2023-09-25 17:27:57', 0, 10, 0, '普通套餐');
INSERT INTO "public"."boot_sys_package" VALUES (2, 1341620898007281665, 1707428076142559234, '2023-02-09 16:44:04', '2023-10-27 22:07:09', 0, 18, 0, '豪华套餐');
INSERT INTO "public"."boot_sys_package" VALUES (3, 1341620898007281665, 1341620898007281665, '2023-02-09 17:09:08', '2023-09-17 16:03:47', 0, 15, 0, '免费套餐');

-- ----------------------------
-- Table structure for boot_sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_role";
CREATE TABLE "public"."boot_sys_role" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL DEFAULT 1,
  "data_scope" varchar(30) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'all'::character varying
)
;
COMMENT ON COLUMN "public"."boot_sys_role"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_role"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_role"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_role"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_role"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_role"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_role"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_role"."name" IS '角色名称';
COMMENT ON COLUMN "public"."boot_sys_role"."sort" IS '角色排序';
COMMENT ON COLUMN "public"."boot_sys_role"."data_scope" IS '数据范围 all全部 custom自定义 dept_self仅本部门 dept部门及以下 self仅本人';
COMMENT ON TABLE "public"."boot_sys_role" IS '角色';

-- ----------------------------
-- Records of boot_sys_role
-- ----------------------------
INSERT INTO "public"."boot_sys_role" VALUES (139167754288778856, 1341620898007281665, 1707428076142559234, '2021-11-27 17:11:15', '2023-12-17 17:42:29', 0, 97, 0, '游客', 10, 'all');
INSERT INTO "public"."boot_sys_role" VALUES (139167754288778857, 1341620898007281665, 1707428076142559234, '2021-11-27 17:11:19', '2023-12-17 17:40:13', 0, 250, 0, '管理员', 100, 'all');
INSERT INTO "public"."boot_sys_role" VALUES (1535949666183573505, 1341620898007281665, 1707428076142559234, '2022-06-12 19:38:32', '2023-12-17 17:41:35', 0, 42, 0, '测试', 50, 'all');

-- ----------------------------
-- Table structure for boot_sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_role_dept";
CREATE TABLE "public"."boot_sys_role_dept" (
  "id" int8 NOT NULL,
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_role_dept"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."boot_sys_role_dept"."dept_id" IS '部门ID';
COMMENT ON TABLE "public"."boot_sys_role_dept" IS '角色部门';

-- ----------------------------
-- Records of boot_sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_role_menu";
CREATE TABLE "public"."boot_sys_role_menu" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int4 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_role_menu"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."boot_sys_role_menu"."menu_id" IS '菜单ID';
COMMENT ON TABLE "public"."boot_sys_role_menu" IS '角色菜单';

-- ----------------------------
-- Records of boot_sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_source
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_source";
CREATE TABLE "public"."boot_sys_source" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "driver_class_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_source"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_source"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_source"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_source"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_source"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_source"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_source"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_source"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_source"."name" IS '数据源名称';
COMMENT ON COLUMN "public"."boot_sys_source"."driver_class_name" IS '数据源的驱动名称';
COMMENT ON COLUMN "public"."boot_sys_source"."url" IS '数据源的连接信息';
COMMENT ON COLUMN "public"."boot_sys_source"."username" IS '数据源的用户名';
COMMENT ON COLUMN "public"."boot_sys_source"."password" IS '数据源的密码';
COMMENT ON TABLE "public"."boot_sys_source" IS '数据源';

-- ----------------------------
-- Records of boot_sys_source
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_tenant";
CREATE TABLE "public"."boot_sys_tenant" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "source_id" int8 NOT NULL,
  "package_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_tenant"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_tenant"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_tenant"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_tenant"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_tenant"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_tenant"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_tenant"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_tenant"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_tenant"."name" IS '租户名称';
COMMENT ON COLUMN "public"."boot_sys_tenant"."code" IS '租户编码';
COMMENT ON COLUMN "public"."boot_sys_tenant"."source_id" IS '数据源ID';
COMMENT ON COLUMN "public"."boot_sys_tenant"."package_id" IS '套餐ID';
COMMENT ON TABLE "public"."boot_sys_tenant" IS '租户';

-- ----------------------------
-- Records of boot_sys_tenant
-- ----------------------------
INSERT INTO "public"."boot_sys_tenant" VALUES (1703312526740615171, 1341620898007281665, 1707428076142559234, '2023-09-17 15:42:27', '2023-12-17 18:37:13', 0, 1, 0, '阿里集团', 'tenant1', 1, 2);

-- ----------------------------
-- Table structure for boot_sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_user";
CREATE TABLE "public"."boot_sys_user" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamptz(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamptz(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "super_admin" int2 NOT NULL DEFAULT 0,
  "mail" varchar(200) COLLATE "pg_catalog"."default",
  "mobile" varchar(60) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL DEFAULT 0,
  "avatar" varchar(500) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'https://pic1.imgdb.cn/item/677a2d91d0e0a243d4ef1ee7.jpg'::character varying,
  "username_phrase" varchar(1600) COLLATE "pg_catalog"."default",
  "mail_phrase" varchar(1600) COLLATE "pg_catalog"."default",
  "mobile_phrase" varchar(150) COLLATE "pg_catalog"."default",
  "username" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_user"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_user"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_user"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_user"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_user"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_user"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_user"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_user"."password" IS '用户密码';
COMMENT ON COLUMN "public"."boot_sys_user"."super_admin" IS '超级管理员标识 0否 1是';
COMMENT ON COLUMN "public"."boot_sys_user"."mail" IS '用户邮箱';
COMMENT ON COLUMN "public"."boot_sys_user"."mobile" IS '用户手机号';
COMMENT ON COLUMN "public"."boot_sys_user"."status" IS '用户状态 0启用 1禁用';
COMMENT ON COLUMN "public"."boot_sys_user"."avatar" IS '用户头像';
COMMENT ON COLUMN "public"."boot_sys_user"."username_phrase" IS '用户名短语';
COMMENT ON COLUMN "public"."boot_sys_user"."mail_phrase" IS '用户邮箱短语';
COMMENT ON COLUMN "public"."boot_sys_user"."mobile_phrase" IS '用户手机号短语';
COMMENT ON COLUMN "public"."boot_sys_user"."username" IS '用户名';
COMMENT ON TABLE "public"."boot_sys_user" IS '用户';

-- ----------------------------
-- Records of boot_sys_user
-- ----------------------------
INSERT INTO "public"."boot_sys_user" VALUES (1, 1, 1, '2022-01-01 20:13:11+08', '2024-04-29 23:52:52+08', 0, 0, 0, '{bcrypt}$2a$10$bGXM7u58FPMDanMyqvZ7Reb9sqJiUTCdAcb1wN5IIkFa8nYOMOioK', 1, 'Ylh4QTF0YmdEWWJR2TEQZjlR4rzAz/73MsL8gxlNSv+/j3L7Sxne4hFAP+W9', 'Ylh4QTF0YmdEWWJR2j0YYjxS577BzIgIGdpZbU2I7EIUTVaxqvWu', 0, 'https://pic1.imgdb.cn/item/677a2d91d0e0a243d4ef1ee7.jpg', 'Ylh4QTF0YmdEWWJRimFMPAPt8S6U+J8eEhIZiErF69o=~Ylh4QTF0YmdEWWJRj2hIO/7mcHvbRltmR9cojv2C2jE=', 'Ylh4QTF0YmdEWWJR2TEQZt/I7tdiOALwVrZXFxK5boI=~Ylh4QTF0YmdEWWJR3zQSZDEzo/mQ2Kt2ooeStwwy1DM=~Ylh4QTF0YmdEWWJR2jYQYvkuHP0mNYNzkmUPAkpRnNs=~Ylh4QTF0YmdEWWJR2DQWY04zb3FkQTCmuPFi97WrI08=~Ylh4QTF0YmdEWWJR2jIXZToqPakPCzCwmjz4XLwksmM=~Ylh4QTF0YmdEWWJR3DMRYRY/bEOz79QYxdiB5xtGMoU=~Ylh4QTF0YmdEWWJR3TUVYYBJ7iU6aLpsTeXBwNhb1lk=~Ylh4QTF0YmdEWWJR2zEVFRAKn1yHzG9spDDE8afQ1Ls=~Ylh4QTF0YmdEWWJR3zFhJLv17Ndjz3ymZABhpoKJPCE=~Ylh4QTF0YmdEWWJR30VQJOy8KF8pYc2r4yJkfOWIWnw=~Ylh4QTF0YmdEWWJRq3RQe8Vs9XmHQG6AkHOCtSwt6cA=~Ylh4QTF0YmdEWWJRmnQPNipHlgS+8wcVPz+EC5gdeeM=~Ylh4QTF0YmdEWWJRmitCOoJ+zG0CpSympji+U7NWxUw=~Ylh4QTF0YmdEWWJRxWZOOE8J8sq9k7iJhdxbniMpw9I=', 'Ylh4QTF0YmdEWWJR2j0YOQJF4W0Ofxd/k/LFC4GzoQ==~Ylh4QTF0YmdEWWJR3DEVZk3r4C1hv2eOukkPSzTOffA=~Ylh4QTF0YmdEWWJR2TAWY8HwM9jwPxZFMFE0pFibp9k=', 'Ylh4QTF0YmdEWWJRimFMPGaJmldyuWIb9BNmUN1ULMI7');
INSERT INTO "public"."boot_sys_user" VALUES (5, 1, 1, '2022-06-16 00:48:28+08', '2024-04-29 23:52:52+08', 0, 1, 0, '{bcrypt}$2a$10$RX9zW6rUMbGjybnlW77FWezhgbH0ZsFinGtKaoOsbovkEgij7kzNC', 0, NULL, NULL, 0, 'https://img2.baidu.com/it/u=2432885784,4104422384&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400', 'Ylh4QTF0YmdEWWJRh2ROPuSvWyrTvf2MaPrw8GpjTBM=~Ylh4QTF0YmdEWWJRimpKYMTCzQiEJvp5Ar80c6jh1Wg=', NULL, NULL, 'Ylh4QTF0YmdEWWJRh2ROPj1LULONpfXTh6mWUOIX9SFO');
INSERT INTO "public"."boot_sys_user" VALUES (2, 1, 1, '2023-03-09 13:52:04+08', '2024-04-29 23:52:52+08', 0, 1, 0, '{bcrypt}$2a$10$J0DMR5098R33H6F.s5H/deeMLyo/j4yyzZgAn6gkyC0j537G7veKG', 0, NULL, NULL, 0, 'http://127.0.0.1:81/upload/node2/b4e5bb3944a046a6bb54f8bfd2c830c1.webp', 'Ylh4QTF0YmdEWWJRn2BSIeyAJZxxvGa9Rma06h4QOnQ=', NULL, NULL, 'Ylh4QTF0YmdEWWJRn2BSIeyAJZxxvGa9Rma06h4QOnQ=');
INSERT INTO "public"."boot_sys_user" VALUES (3, 1, 1, '2022-01-31 11:29:35+08', '2024-04-29 23:52:52+08', 0, 0, 0, '{bcrypt}$2a$10$ysAmruc249SiAUpIqQzrpeM8wcdpgIJ6nEdtsXQnDrBgvLZkt7tJ6', 0, NULL, NULL, 0, 'https://img2.baidu.com/it/u=2432885784,4104422384&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400', 'Ylh4QTF0YmdEWWJRgGpUJiNPIjdI2XP1ZWEFUmonJDs=~Ylh4QTF0YmdEWWJRhHBSPSMrKeV2KZK27WU4BJGux6Q=~Ylh4QTF0YmdEWWJRnnZJYJsjtsAm+CPpK1W9SDWk46s=', NULL, NULL, 'Ylh4QTF0YmdEWWJRgGpUJmBT8fGpMah42bhHMZ9Aapk+jQ==');
INSERT INTO "public"."boot_sys_user" VALUES (4, 1, 1, '2022-06-16 00:33:39+08', '2024-04-29 23:52:52+08', 0, 0, 0, '{bcrypt}$2a$10$Wac.3sTE4A4pi/Zy6B/HWOstwLFjOH9g8Qrf4gHiBLa/avKAVcwpG', 0, NULL, NULL, 0, 'https://img2.baidu.com/it/u=2432885784,4104422384&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400', 'Ylh4QTF0YmdEWWJRnHBMPWPaKJGlV652rAqtN8Q9MYg=~Ylh4QTF0YmdEWWJRnmhJYJS/YXrtS/sF9dNgHyAmxEI=', NULL, NULL, 'Ylh4QTF0YmdEWWJRnHBMPT3MJcA20x+AfW1mDSW5q1zV');

-- ----------------------------
-- Table structure for boot_sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_user_dept";
CREATE TABLE "public"."boot_sys_user_dept" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamptz(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamptz(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "user_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_user_dept"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."boot_sys_user_dept"."dept_id" IS '部门ID';
COMMENT ON TABLE "public"."boot_sys_user_dept" IS '用户部门';

-- ----------------------------
-- Records of boot_sys_user_dept
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_user_message
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_user_message";
CREATE TABLE "public"."boot_sys_user_message" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "user_id" int8 NOT NULL,
  "message_id" int8 NOT NULL,
  "read_flag" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "public"."boot_sys_user_message"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_user_message"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_user_message"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_user_message"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_user_message"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_user_message"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_user_message"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_user_message"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_user_message"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."boot_sys_user_message"."message_id" IS '消息ID';
COMMENT ON COLUMN "public"."boot_sys_user_message"."read_flag" IS '消息已读标识 0未读 1已读';
COMMENT ON TABLE "public"."boot_sys_user_message" IS '用户消息';

-- ----------------------------
-- Records of boot_sys_user_message
-- ----------------------------

-- ----------------------------
-- Table structure for boot_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."boot_sys_user_role";
CREATE TABLE "public"."boot_sys_user_role" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "creator" int8 NOT NULL DEFAULT 0,
  "editor" int8 NOT NULL DEFAULT 0,
  "create_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "update_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "del_flag" int2 NOT NULL DEFAULT 0,
  "version" int4 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."boot_sys_user_role"."id" IS 'ID';
COMMENT ON COLUMN "public"."boot_sys_user_role"."creator" IS '创建人';
COMMENT ON COLUMN "public"."boot_sys_user_role"."editor" IS '编辑人';
COMMENT ON COLUMN "public"."boot_sys_user_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."boot_sys_user_role"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."boot_sys_user_role"."del_flag" IS '删除标识 0未删除 1已删除';
COMMENT ON COLUMN "public"."boot_sys_user_role"."version" IS '版本号';
COMMENT ON COLUMN "public"."boot_sys_user_role"."tenant_id" IS '租户ID';
COMMENT ON COLUMN "public"."boot_sys_user_role"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."boot_sys_user_role"."role_id" IS '角色ID';
COMMENT ON TABLE "public"."boot_sys_user_role" IS '用户角色';

-- ----------------------------
-- Records of boot_sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for oauth2_authorization_consent
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth2_authorization_consent";
CREATE TABLE "public"."oauth2_authorization_consent" (
  "registered_client_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "principal_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "authorities" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of oauth2_authorization_consent
-- ----------------------------

-- ----------------------------
-- Table structure for oauth2_registered_client
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth2_registered_client";
CREATE TABLE "public"."oauth2_registered_client" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "client_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "client_id_issued_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "client_secret" varchar(200) COLLATE "pg_catalog"."default",
  "client_secret_expires_at" timestamp(6),
  "client_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "client_authentication_methods" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "authorization_grant_types" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "redirect_uris" varchar(1000) COLLATE "pg_catalog"."default",
  "post_logout_redirect_uris" varchar(1000) COLLATE "pg_catalog"."default",
  "scopes" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "client_settings" varchar(2000) COLLATE "pg_catalog"."default" NOT NULL,
  "token_settings" varchar(2000) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_cluster_id_seq"
OWNED BY "public"."boot_sys_cluster"."id";
SELECT setval('"public"."boot_sys_cluster_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_cluster_id_seq1"
OWNED BY "public"."boot_sys_cluster"."id";
SELECT setval('"public"."boot_sys_cluster_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_dept_id_seq"
OWNED BY "public"."boot_sys_dept"."id";
SELECT setval('"public"."boot_sys_dept_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_dept_id_seq1"
OWNED BY "public"."boot_sys_dept"."id";
SELECT setval('"public"."boot_sys_dept_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_dict_id_seq"
OWNED BY "public"."boot_sys_dict"."id";
SELECT setval('"public"."boot_sys_dict_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_dict_id_seq1"
OWNED BY "public"."boot_sys_dict"."id";
SELECT setval('"public"."boot_sys_dict_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_dict_item_id_seq"
OWNED BY "public"."boot_sys_dict_item"."id";
SELECT setval('"public"."boot_sys_dict_item_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_dict_item_id_seq1"
OWNED BY "public"."boot_sys_dict_item"."id";
SELECT setval('"public"."boot_sys_dict_item_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_i18n_message_id_seq"
OWNED BY "public"."boot_sys_i18n_message"."id";
SELECT setval('"public"."boot_sys_i18n_message_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_i18n_message_id_seq1"
OWNED BY "public"."boot_sys_i18n_message"."id";
SELECT setval('"public"."boot_sys_i18n_message_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_ip_id_seq"
OWNED BY "public"."boot_sys_ip"."id";
SELECT setval('"public"."boot_sys_ip_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_ip_id_seq1"
OWNED BY "public"."boot_sys_ip"."id";
SELECT setval('"public"."boot_sys_ip_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_menu_id_seq"
OWNED BY "public"."boot_sys_menu"."id";
SELECT setval('"public"."boot_sys_menu_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_menu_id_seq1"
OWNED BY "public"."boot_sys_menu"."id";
SELECT setval('"public"."boot_sys_menu_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_message_detail_id_seq"
OWNED BY "public"."boot_sys_user_message"."id";
SELECT setval('"public"."boot_sys_message_detail_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_message_detail_id_seq1"
OWNED BY "public"."boot_sys_user_message"."id";
SELECT setval('"public"."boot_sys_message_detail_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_message_id_seq"
OWNED BY "public"."boot_sys_message"."id";
SELECT setval('"public"."boot_sys_message_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_message_id_seq1"
OWNED BY "public"."boot_sys_message"."id";
SELECT setval('"public"."boot_sys_message_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_oss_id_seq"
OWNED BY "public"."boot_sys_oss"."id";
SELECT setval('"public"."boot_sys_oss_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_oss_id_seq1"
OWNED BY "public"."boot_sys_oss"."id";
SELECT setval('"public"."boot_sys_oss_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_package_id_seq"
OWNED BY "public"."boot_sys_package"."id";
SELECT setval('"public"."boot_sys_package_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_package_id_seq1"
OWNED BY "public"."boot_sys_package"."id";
SELECT setval('"public"."boot_sys_package_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_role_id_seq"
OWNED BY "public"."boot_sys_role"."id";
SELECT setval('"public"."boot_sys_role_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_role_id_seq1"
OWNED BY "public"."boot_sys_role"."id";
SELECT setval('"public"."boot_sys_role_id_seq1"', 1, false);



-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_source_id_seq"
OWNED BY "public"."boot_sys_source"."id";
SELECT setval('"public"."boot_sys_source_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_source_id_seq1"
OWNED BY "public"."boot_sys_source"."id";
SELECT setval('"public"."boot_sys_source_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_tenant_id_seq"
OWNED BY "public"."boot_sys_tenant"."id";
SELECT setval('"public"."boot_sys_tenant_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_tenant_id_seq1"
OWNED BY "public"."boot_sys_tenant"."id";
SELECT setval('"public"."boot_sys_tenant_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_user_dept_id_seq"
OWNED BY "public"."boot_sys_user_dept"."id";
SELECT setval('"public"."boot_sys_user_dept_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_user_dept_id_seq1"
OWNED BY "public"."boot_sys_user_dept"."id";
SELECT setval('"public"."boot_sys_user_dept_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_user_id_seq"
OWNED BY "public"."boot_sys_user"."id";
SELECT setval('"public"."boot_sys_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_user_id_seq1"
OWNED BY "public"."boot_sys_user"."id";
SELECT setval('"public"."boot_sys_user_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_user_role_id_seq"
OWNED BY "public"."boot_sys_user_role"."id";
SELECT setval('"public"."boot_sys_user_role_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."boot_sys_user_role_id_seq1"
OWNED BY "public"."boot_sys_user_role"."id";
SELECT setval('"public"."boot_sys_user_role_id_seq1"', 1, false);

-- ----------------------------
-- Auto increment value for boot_sys_cluster
-- ----------------------------
SELECT setval('"public"."boot_sys_cluster_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_cluster
-- ----------------------------
ALTER TABLE "public"."boot_sys_cluster" ADD CONSTRAINT "boot_sys_cluster_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_dept
-- ----------------------------
SELECT setval('"public"."boot_sys_dept_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_dept
-- ----------------------------
ALTER TABLE "public"."boot_sys_dept" ADD CONSTRAINT "boot_sys_dept_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_dict
-- ----------------------------
SELECT setval('"public"."boot_sys_dict_id_seq1"', 1, false);

-- ----------------------------
-- Indexes structure for table boot_sys_dict
-- ----------------------------
CREATE UNIQUE INDEX "boot_sys_dict_type_tenantId_idx" ON "public"."boot_sys_dict" USING btree (
  "type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."boot_sys_dict_type_tenantId_idx" IS '类型_租户ID_唯一索引';

-- ----------------------------
-- Primary Key structure for table boot_sys_dict
-- ----------------------------
ALTER TABLE "public"."boot_sys_dict" ADD CONSTRAINT "boot_sys_dict_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_dict_item
-- ----------------------------
SELECT setval('"public"."boot_sys_dict_item_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_dict_item
-- ----------------------------
ALTER TABLE "public"."boot_sys_dict_item" ADD CONSTRAINT "boot_sys_dict_item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_i18n_message
-- ----------------------------
SELECT setval('"public"."boot_sys_i18n_message_id_seq1"', 1, false);

-- ----------------------------
-- Indexes structure for table boot_sys_i18n_message
-- ----------------------------
CREATE INDEX "boot_sys_i18n_message_code_tenantId_idx" ON "public"."boot_sys_i18n_message" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."boot_sys_i18n_message_code_tenantId_idx" IS '编码_租户ID_唯一索引';

-- ----------------------------
-- Primary Key structure for table boot_sys_i18n_message
-- ----------------------------
ALTER TABLE "public"."boot_sys_i18n_message" ADD CONSTRAINT "boot_sys_i18n_message_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_ip
-- ----------------------------
SELECT setval('"public"."boot_sys_ip_id_seq1"', 1, false);

-- ----------------------------
-- Indexes structure for table boot_sys_ip
-- ----------------------------
CREATE INDEX "boot_sys_ip_label_idx" ON "public"."boot_sys_ip" USING btree (
  "label" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table boot_sys_ip
-- ----------------------------
ALTER TABLE "public"."boot_sys_ip" ADD CONSTRAINT "boot_sys_ip_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_menu
-- ----------------------------
SELECT setval('"public"."boot_sys_menu_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_menu
-- ----------------------------
ALTER TABLE "public"."boot_sys_menu" ADD CONSTRAINT "boot_sys_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table boot_sys_menu_package
-- ----------------------------
ALTER TABLE "public"."boot_sys_menu_package" ADD CONSTRAINT "boot_sys_package_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_message
-- ----------------------------
SELECT setval('"public"."boot_sys_message_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_message
-- ----------------------------
ALTER TABLE "public"."boot_sys_message" ADD CONSTRAINT "boot_sys_message_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_oss
-- ----------------------------
SELECT setval('"public"."boot_sys_oss_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_oss
-- ----------------------------
ALTER TABLE "public"."boot_sys_oss" ADD CONSTRAINT "boot_sys_oss_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_package
-- ----------------------------
SELECT setval('"public"."boot_sys_package_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_package
-- ----------------------------
ALTER TABLE "public"."boot_sys_package" ADD CONSTRAINT "boot_sys_package_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_role
-- ----------------------------
SELECT setval('"public"."boot_sys_role_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_role
-- ----------------------------
ALTER TABLE "public"."boot_sys_role" ADD CONSTRAINT "boot_sys_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table boot_sys_role_dept
-- ----------------------------
CREATE INDEX "boot_sys_role_dept_roleId_deptId_idx" ON "public"."boot_sys_role_dept" USING btree (
	"role_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
	"dept_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table boot_sys_role_dept
-- ----------------------------
ALTER TABLE "public"."boot_sys_role_dept" ADD CONSTRAINT "boot_sys_role_dept_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table boot_sys_role_menu
-- ----------------------------
CREATE UNIQUE INDEX "boot_sys_role_menu_roleId_menuId_idx" ON "public"."boot_sys_role_menu" USING btree (
																										"menu_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
																										"role_id" "pg_catalog"."int8_ops" ASC NULLS LAST
	);

-- ----------------------------
-- Primary Key structure for table boot_sys_role_menu
-- ----------------------------
ALTER TABLE "public"."boot_sys_role_menu" ADD CONSTRAINT "boot_sys_role_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_source
-- ----------------------------
SELECT setval('"public"."boot_sys_source_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_source
-- ----------------------------
ALTER TABLE "public"."boot_sys_source" ADD CONSTRAINT "boot_sys_source_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_tenant
-- ----------------------------
SELECT setval('"public"."boot_sys_tenant_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_tenant
-- ----------------------------
ALTER TABLE "public"."boot_sys_tenant" ADD CONSTRAINT "boot_sys_tenant_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_user
-- ----------------------------
SELECT setval('"public"."boot_sys_user_id_seq1"', 1, false);

-- ----------------------------
-- Indexes structure for table boot_sys_user
-- ----------------------------
CREATE UNIQUE INDEX "boot_sys_user_mail_tenantId_idx" ON "public"."boot_sys_user" USING btree (
  "mail" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."boot_sys_user_mail_tenantId_idx" IS '邮箱_租户ID_唯一索引';
CREATE UNIQUE INDEX "boot_sys_user_mobile_tenantId_idx" ON "public"."boot_sys_user" USING btree (
  "mobile" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."boot_sys_user_mobile_tenantId_idx" IS '手机号_租户ID_唯一索引';
CREATE UNIQUE INDEX "boot_sys_user_username_tenantId_idx" ON "public"."boot_sys_user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."boot_sys_user_username_tenantId_idx" IS '用户名_租户ID_唯一索引';

-- ----------------------------
-- Primary Key structure for table boot_sys_user
-- ----------------------------
ALTER TABLE "public"."boot_sys_user" ADD CONSTRAINT "boot_sys_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_user_dept
-- ----------------------------
SELECT setval('"public"."boot_sys_user_dept_id_seq1"', 1, false);

-- ----------------------------
-- Primary Key structure for table boot_sys_user_dept
-- ----------------------------
ALTER TABLE "public"."boot_sys_user_dept" ADD CONSTRAINT "boot_sys_user_dept_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_user_message
-- ----------------------------
SELECT setval('"public"."boot_sys_message_detail_id_seq1"', 1, false);

-- ----------------------------
-- Indexes structure for table boot_sys_user_message
-- ----------------------------
CREATE INDEX "boot_sys_user_message_readFlag_userId_idx" ON "public"."boot_sys_user_message" USING btree (
  "read_flag" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table boot_sys_user_message
-- ----------------------------
ALTER TABLE "public"."boot_sys_user_message" ADD CONSTRAINT "boot_sys_message_detail_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for boot_sys_user_role
-- ----------------------------
SELECT setval('"public"."boot_sys_user_role_id_seq1"', 1, false);

-- ----------------------------
-- Indexes structure for table boot_sys_user_role
-- ----------------------------
CREATE INDEX "boot_sys_user_role_userId_roleId_idx" ON "public"."boot_sys_user_role" USING btree (
	"user_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
	"role_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table boot_sys_user_role
-- ----------------------------
ALTER TABLE "public"."boot_sys_user_role" ADD CONSTRAINT "boot_sys_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table oauth2_authorization_consent
-- ----------------------------
ALTER TABLE "public"."oauth2_authorization_consent" ADD CONSTRAINT "oauth2_authorization_consent_pkey" PRIMARY KEY ("registered_client_id", "principal_name");

-- ----------------------------
-- Primary Key structure for table oauth2_registered_client
-- ----------------------------
ALTER TABLE "public"."oauth2_registered_client" ADD CONSTRAINT "oauth2_registered_client_pkey" PRIMARY KEY ("id");
