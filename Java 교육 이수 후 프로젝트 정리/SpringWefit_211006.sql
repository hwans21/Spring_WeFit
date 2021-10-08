--------------------------------------------------------
--  ������ ������ - ������-10��-06-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence COURSEBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."COURSEBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 219 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COURSEREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."COURSEREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 208 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DIETBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."DIETBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 289 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DIETREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."DIETREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 137 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FREEBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."FREEBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 440 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FREEREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."FREEREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 171 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MARKETBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."MARKETBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 84 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MARKETREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."MARKETREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 61 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 515 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICEBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."NOTICEBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 249 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICEREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."NOTICEREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 138 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PLACEBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."PLACEBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 113 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PLACEREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."PLACEREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 111 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QUESBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."QUESBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QUESREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."QUESREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TESTBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."TESTBOARD_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TESTREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRINGWEFIT"."TESTREPLY_SEQ"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table COURSEBOARD
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."COURSEBOARD" 
   (	"CBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0), 
	"CBTITLE" VARCHAR2(200 BYTE), 
	"CBCONTENT" VARCHAR2(2000 BYTE), 
	"CBYOUCODE" VARCHAR2(50 BYTE), 
	"CBCATEGORY" VARCHAR2(20 BYTE), 
	"CBLOOKCOUNT" NUMBER(20,0) DEFAULT 0, 
	"CBREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COURSELIKELY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."COURSELIKELY" 
   (	"CBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COURSEREPLY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."COURSEREPLY" 
   (	"CRNUM" NUMBER(10,0), 
	"CBNUM" NUMBER(10,0), 
	"CRCONTENT" VARCHAR2(200 BYTE), 
	"MEMBERNUM" NUMBER(20,0), 
	"CRREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COURSEREPORT
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."COURSEREPORT" 
   (	"CBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0), 
	"CBREPORTCHK1" VARCHAR2(10 BYTE) DEFAULT (null), 
	"CBREPORTCHK2" VARCHAR2(10 BYTE) DEFAULT (null), 
	"CBREPORTCHK3" VARCHAR2(10 BYTE) DEFAULT (null), 
	"CBREPORTCHK4" VARCHAR2(10 BYTE) DEFAULT (null), 
	"CBREPORTCHK5" VARCHAR2(10 BYTE) DEFAULT (null), 
	"CBREPORTINPUT" VARCHAR2(500 BYTE) DEFAULT (null), 
	"CBREPORTREGDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DIETBOARD
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."DIETBOARD" 
   (	"DBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0), 
	"DBTITLE" VARCHAR2(200 BYTE), 
	"DBCONTENT" VARCHAR2(2000 BYTE), 
	"DBIMAGE1" VARCHAR2(50 BYTE), 
	"DBIMAGE2" VARCHAR2(50 BYTE), 
	"DBIMAGE3" VARCHAR2(50 BYTE), 
	"DBIMAGE4" VARCHAR2(50 BYTE), 
	"DBIMAGE5" VARCHAR2(50 BYTE), 
	"DBREALIMAGE1" VARCHAR2(50 BYTE), 
	"DBREALIMAGE2" VARCHAR2(50 BYTE), 
	"DBREALIMAGE3" VARCHAR2(50 BYTE), 
	"DBREALIMAGE4" VARCHAR2(50 BYTE), 
	"DBREALIMAGE5" VARCHAR2(50 BYTE), 
	"DBLOOKCOUNT" NUMBER(20,0) DEFAULT 0, 
	"DBIMAGECOUNT" NUMBER(2,0) DEFAULT 0, 
	"DBREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DIETLIKELY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."DIETLIKELY" 
   (	"DBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DIETREPLY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."DIETREPLY" 
   (	"DRNUM" NUMBER(10,0), 
	"DBNUM" NUMBER(10,0), 
	"DRCONTENT" VARCHAR2(200 BYTE), 
	"MEMBERNUM" NUMBER(20,0), 
	"DRREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DIETREPORT
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."DIETREPORT" 
   (	"DBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREEBOARD
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."FREEBOARD" 
   (	"FBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0), 
	"FBTITLE" VARCHAR2(200 BYTE), 
	"FBCONTENT" VARCHAR2(2000 BYTE), 
	"FBIMAGE1" VARCHAR2(50 BYTE), 
	"FBIMAGE2" VARCHAR2(50 BYTE), 
	"FBIMAGE3" VARCHAR2(50 BYTE), 
	"FBIMAGE4" VARCHAR2(50 BYTE), 
	"FBIMAGE5" VARCHAR2(50 BYTE), 
	"FBREALIMAGE1" VARCHAR2(50 BYTE), 
	"FBREALIMAGE2" VARCHAR2(50 BYTE), 
	"FBREALIMAGE3" VARCHAR2(50 BYTE), 
	"FBREALIMAGE4" VARCHAR2(50 BYTE), 
	"FBREALIMAGE5" VARCHAR2(50 BYTE), 
	"FBLOOKCOUNT" NUMBER(20,0) DEFAULT 0, 
	"FBIMAGECOUNT" NUMBER(2,0) DEFAULT 0, 
	"FBREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREELIKELY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."FREELIKELY" 
   (	"FBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREEREPLY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."FREEREPLY" 
   (	"FRNUM" NUMBER(10,0), 
	"FBNUM" NUMBER(10,0), 
	"FRCONTENT" VARCHAR2(200 BYTE), 
	"MEMBERNUM" NUMBER(20,0), 
	"FRREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREEREPORT
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."FREEREPORT" 
   (	"FBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MARKETBOARD
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."MARKETBOARD" 
   (	"MBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0), 
	"MBTYPE" VARCHAR2(6 BYTE), 
	"MBTITLE" VARCHAR2(200 BYTE), 
	"MBPRICE" NUMBER(10,0), 
	"MBCONTENT" VARCHAR2(2000 BYTE), 
	"MBIMAGE1" VARCHAR2(50 BYTE), 
	"MBIMAGE2" VARCHAR2(50 BYTE), 
	"MBIMAGE3" VARCHAR2(50 BYTE), 
	"MBIMAGE4" VARCHAR2(50 BYTE), 
	"MBIMAGE5" VARCHAR2(50 BYTE), 
	"MBIMAGE6" VARCHAR2(50 BYTE), 
	"MBIMAGE7" VARCHAR2(50 BYTE), 
	"MBIMAGE8" VARCHAR2(50 BYTE), 
	"MBIMAGE9" VARCHAR2(50 BYTE), 
	"MBIMAGE10" VARCHAR2(50 BYTE), 
	"MBREALIMAGE1" VARCHAR2(50 BYTE), 
	"MBREALIMAGE2" VARCHAR2(50 BYTE), 
	"MBREALIMAGE3" VARCHAR2(50 BYTE), 
	"MBREALIMAGE4" VARCHAR2(50 BYTE), 
	"MBREALIMAGE5" VARCHAR2(50 BYTE), 
	"MBREALIMAGE6" VARCHAR2(50 BYTE), 
	"MBREALIMAGE7" VARCHAR2(50 BYTE), 
	"MBREALIMAGE8" VARCHAR2(50 BYTE), 
	"MBREALIMAGE9" VARCHAR2(50 BYTE), 
	"MBREALIMAGE10" VARCHAR2(50 BYTE), 
	"MBADDRBASIC" VARCHAR2(300 BYTE), 
	"MBLATITUDE" NUMBER(9,6), 
	"MBLONGITUDE" NUMBER(9,6), 
	"MBLOOKCOUNT" NUMBER(20,0) DEFAULT 0, 
	"MBIMAGECOUNT" NUMBER(2,0) DEFAULT (null), 
	"MBREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MARKETLIKELY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."MARKETLIKELY" 
   (	"MBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MARKETREPLY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."MARKETREPLY" 
   (	"MRNUM" NUMBER(10,0), 
	"MBNUM" NUMBER(10,0), 
	"MRCONTENT" VARCHAR2(200 BYTE), 
	"MEMBERNUM" NUMBER(20,0), 
	"STARSCORE" NUMBER(2,1), 
	"MRREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MARKETREPORT
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."MARKETREPORT" 
   (	"MBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."MEMBER" 
   (	"MEMBERNUM" NUMBER(20,0), 
	"MEMBEREMAIL" VARCHAR2(30 BYTE), 
	"MEMBERNICK" VARCHAR2(30 BYTE), 
	"MEMBERPASSWD" VARCHAR2(100 BYTE), 
	"MEMBERPHONE" VARCHAR2(30 BYTE), 
	"MEMBERREGISTDATE" DATE DEFAULT sysdate, 
	"MEMBERCONNDATE" DATE DEFAULT sysdate, 
	"MEMBERHUMANYN" VARCHAR2(10 BYTE), 
	"MEMBERLATITUDE" NUMBER(9,6), 
	"MEMBERLONGITUDE" NUMBER(9,6), 
	"MEMBEREMAILYN" VARCHAR2(10 BYTE), 
	"MEMBERCODE" VARCHAR2(20 BYTE), 
	"MEMBERMANAGERYN" VARCHAR2(10 BYTE) DEFAULT 'NO', 
	"MEMBERDELDATE" DATE, 
	"SESSIONID" VARCHAR2(80 BYTE) DEFAULT 'none', 
	"AUTOLOGINLIMIT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICEBOARD
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."NOTICEBOARD" 
   (	"NBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0), 
	"NBTITLE" VARCHAR2(200 BYTE), 
	"NBCONTENT" VARCHAR2(2000 BYTE), 
	"NBIMAGE1" VARCHAR2(50 BYTE), 
	"NBREALIMAGE1" VARCHAR2(50 BYTE), 
	"NBLOOKCOUNT" NUMBER(20,0) DEFAULT 0, 
	"NBIMAGECOUNT" NUMBER(2,0) DEFAULT (null), 
	"NBREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICELIKELY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."NOTICELIKELY" 
   (	"NBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICEREPLY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."NOTICEREPLY" 
   (	"NRNUM" NUMBER(10,0), 
	"NBNUM" NUMBER(10,0), 
	"NRCONTENT" VARCHAR2(200 BYTE), 
	"MEMBERNUM" NUMBER(20,0), 
	"NRREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICEREPORT
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."NOTICEREPORT" 
   (	"NBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PLACEBOARD
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."PLACEBOARD" 
   (	"PBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0), 
	"PBTITLE" VARCHAR2(200 BYTE), 
	"PBCONTENT" VARCHAR2(2000 BYTE), 
	"PBIMAGE1" VARCHAR2(50 BYTE), 
	"PBIMAGE2" VARCHAR2(50 BYTE), 
	"PBIMAGE3" VARCHAR2(50 BYTE), 
	"PBIMAGE4" VARCHAR2(50 BYTE), 
	"PBIMAGE5" VARCHAR2(50 BYTE), 
	"PBREALIMAGE1" VARCHAR2(50 BYTE), 
	"PBREALIMAGE2" VARCHAR2(50 BYTE), 
	"PBREALIMAGE3" VARCHAR2(50 BYTE), 
	"PBREALIMAGE4" VARCHAR2(50 BYTE), 
	"PBREALIMAGE5" VARCHAR2(50 BYTE), 
	"PBCATEGORY" VARCHAR2(20 BYTE), 
	"PBADDRBASIC" VARCHAR2(300 BYTE), 
	"PBLATITUDE" NUMBER(9,6), 
	"PBLONGITUDE" NUMBER(9,6), 
	"PBLOOKCOUNT" NUMBER(20,0) DEFAULT 0, 
	"PBIMAGECOUNT" NUMBER(2,0) DEFAULT 0, 
	"PBREGDATE" DATE DEFAULT SYSDATE, 
	"PBADDRDETAIL" VARCHAR2(300 BYTE) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PLACELIKELY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."PLACELIKELY" 
   (	"PBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PLACEREPLY
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."PLACEREPLY" 
   (	"PRNUM" NUMBER(10,0), 
	"PBNUM" NUMBER(10,0), 
	"PRCONTENT" VARCHAR2(200 BYTE), 
	"MEMBERNUM" NUMBER(20,0), 
	"STARSCORE" NUMBER(2,1), 
	"PRREGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PLACEREPORT
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."PLACEREPORT" 
   (	"PBNUM" NUMBER(10,0), 
	"MEMBERNUM" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPACTIALTEST
--------------------------------------------------------

  CREATE TABLE "SPRINGWEFIT"."SPACTIALTEST" 
   (	"X" NUMBER(9,6), 
	"Y" NUMBER(9,6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SPRINGWEFIT.COURSEBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (175,407,'���� ȣ��� (����, ������ ����ȣ�� Freestyle Stroke Breathing)','ȣ���� ��� ����� ���� �߿��� �κ��̰�,
�� �������� ��ȭ�Ϸ���
�ùٸ� ȣ����� ���� �־�� �մϴ�.

Ư�� ȣ���� �������� �������� �ø��⿡�� ����.

�ѹ� ���� �����غ��ô�.','7MP5OR5g1Qk','����',6,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (174,407,'���� ���ʺ� Ż��, 6�� ���� ����!!','ȣ���, ������, �߱�� ���� �⺻ ������ ���Ե� ���� ���� ���� �����Դϴ�.
������ �����е�! ��� ���� ���� �����غ�����~!!

������ �ǽ� �е� ���ƿ�,
��︲TV �Բ� ���ֽǺе��� ���� ��Ź�帳�ϴ�.

�׻� ���� �������� ������ ��︲TV�� �ǰڽ��ϴ�. �����մϴ�.','bPWqO20Xzco','����',6,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (176,407,'#1. ������ ���� - �ڼ��� ���̴�. Ŭ���� ����, Ÿ��, ���� �����ϰ� �����. Let''s learn Clear Swing with understanding.','�ȳ��ϼ��� ������TV ����ũ�� ��ġ ���ֿ���ġ�Դϴ�.
�̹��ð� ù ���� �������� �λ�帳�ϴ�. 
Ŭ����,���,���Ž��� ������ ������� ��Ʈ��ũ ���� �����Դϴ�.
�������� ���ôٰ� ���Ž��̳� Ŭ���� �� �޺� ��Ȳ���� �Ǽ��� ������ �е��� �и� �⺻���� �ڼ��� �ҿ����� �����̱� ������ ���� �Ǽ��� �Ѵٰ� �����մϴ�. �� ������ ���� ���� 10�и� �����ؼ� ������ �Ѵٸ� ū ������ �ɰ��Դϴ�.

Hi guys! This is the first lecture video of this time.
It is the overhead stroke lecture which is the swing of clear, drop, smashing.
When you play Badminton, If you are mistaken in bad situation such as smashing or clearing, I think you make many mistakes because the basic posture is incomplete. If you watch this video and practice for 10 minutes every day, it will be a big help.','RtZZp7q1IUg','������',6,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (177,407,'#2. [ENG] ���Ž̽���! 4�оȿ� ���������� - Let''s learn smash step in four minutes.','��ΰ� ���ϴ� ���� ���Ž�! 
���� ���Ž��� �������� ���ǿ��� ���ɴϴ�. 
�������� ������ ���ؼ� 4�и� �����غ����� ^^

�������� ��ﶧ �⺻�Ⱑ ���� �߿��մϴ�. �⺻�Ⱑ ���� ���¿��� �������� ������ ���� ���߿� �Ƿ������ ���� �Ӵ��� �ѹ� ���� ������ �ٽ� ��ġ�� ���� ������ �̴ϴ�.
���� �ޱ� ���� ���� �ѹ��� Ȯ���Ͻð� ���������ø� �ξ� ū ���� �� ���Դϴ� ^^','YH2_oq4HQ0w','������',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (178,407,'#3. ������ ���� ���� - ���� ���Ž��� ������ ���ǿ��� ���� ���۵ȴ�. ���� ���� ������ ���� ����!','�ȳ��ϼ���.
�̹� �ð����� ������ ���� ���� ������ �غ��غý��ϴ�.
������ ��� ���� �� �Ӹ� �ڷ� ���ư��� ���� ���� ��ó�� �ʴ� ��찡 ���� �����Ŷ�� �����˴ϴ�. 
������ �Ϻ��ϰ� �������� ���� ���¿��� �������� �ϸ� ���� ���Ž��� �����ϱ� ���� �Ӹ� �ƴ϶�, �߸��ϸ� �λ����� �̾��� �� �ֱ� ������ �� ������ ��Ȯ�ϰ� ���� �� �����ϰ� �������� ġ�ž� �մϴ�. �̹� ���Ǹ� ���ؼ� ���Ž����� ����Ǵ� ������ ������ �ѹ� ��������� �ϰڽ��ϴ�.','nyukLGa9iBQ','������',3,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (179,407,'#4. ������ ���� - ��Ʈ���� ���� �ٴ� ���� ����� 2ź!!!','���� �е��� ������Ͻô� ������ ���� ������ �غ��غý��ϴ�.
�̹� ������ ���� ���� �̾ ���� ������ �غ��߽��ϴ�.
���� �ʰ�����, ���̸��� �����ϼż� ������ �̵��Ͻø� ���ڽ��ϴ�.

ó������ ����ϰ� �������Ǽ��� ������ ������ ��� �Ͻôٺ��� �и� �ͼ������ô°��� ������ �� �����ǰſ��� ^^
������ �ְ��Դϴ� ^^','Gz6me_Hq3Ys','������',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (180,407,'������ ������� ���� �е鿡�� �����ϴ� ȥ�� �����ϴ� ���!!','[�����ÿ�ǰ | ��Ƽ�� ����ϴ� ���� ] 
���ϸ��Ϣ� http://racketmarket.co.kr/

[�����ü����� �ϻ��� �ñ��ϴٸ�?] 
��Ƽ �ν�Ÿ ��https://www.instagram.com/yhtv0/

[�������縻 | ��Ƽ�� ������ �縻] 
COMPORT�� https://comport.kr/

[�����ü���(��Ʈ)�ȳ�]  
��http://map.squash.pe.kr/','3TMQglOabwk','������',7,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (181,407,'������ �׸����','�ùٸ� �׸����� ������ ����帳�ϴ�.','_3C0Xn6dz5I','������',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (182,407,'[�״Ͻ� ���ڵ�] �ѽ��� ���ڵ� ���ʺ��� 1��','���ڵ� ���ʺ��� �ٽ� �����ϴ� ���ڵ� �����Դϴ�!','GyISMO3Hs_Q','��Ÿ',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (183,407,'[�״Ͻ� ���ڵ�] �ѽ��� ���ʺ��� 2�� ����,����,�޼� �����!','����,����,�޼� �� ���� ����� ����Դϴ�!','ovV6fTOGjyM','��Ÿ',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (187,407,'������Ʈ ���ߴ� �� ���� ����',null,'Y4JPIrZyq1g','������Ʈ',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (185,407,'������ ó�� ���� ������ �̰ͺ��� �ؾ��Ѵ�? �������� ������ ���� �� ������� ������Ʈ ep.2','�ȳ��ϼ���. ������ �̾߱⸦ �����ִ� ''�������ڷ�'',  ��ƮƮ�� ���� ������ �Դϴ�. 

������ ó�� ���ø�, �ٷ� ������Ʈ Ÿ����? ������ �̲����� �����忡 �߽� ��⵵ ��ư�,  �� �ֱ⵵ ���� ���� ��������� �ſ���!

������ ������ �����ڸ��� �̰� ������ �����ϼ���!
�߷� �ȴ� �� ó�� �����Ͻð�, ����� �ɾ�ð� �� ������ �ݿ� �׾Ƹ�!
�̰͵� �� ������ �ƴٰ� �����Ͻø� ���� ���� �ͺ��� ũ�� ������� �׷�������!

�׷��� �����忡�� ������Ʈ Ÿ�� �� ����� �ʾƿ�! 

���� ���� �극��ũ ��� ���� �Ѿ����� �� �˷��帱�״�, ���������� ���� �������!!','NZchsYe8_oo','������Ʈ',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (186,407,'�Ѿ����� �����ַ��� ���������? �������� ���ߴ� ���, ������Ʈ �극��ũ �ϴ� ��, ��ƮƮ�� ������ �˶��� ��������� ������Ʈ ep.3','����� ������Ʈ ���� ����° �ð��Դϴ�!

���������� �� �� �˾Ҵٸ�, ���� �����ٵ� �˾ƾ߰���?
���ߴ� ������� ���������� �ֽ��ϴٸ�, �ϴ� �ʺ��� �е��� ���Ŵ� �����ϰ� �ܰ躰�� �극��ũ�� ������ô�!

ù��°��, �޹��� 90���� ���� ���߱�!
�ι�°��, �������� ���� ���߱�! (���� ���߱�� �̸��� ������?)
����°��, ���ְ� �����̵� �ε�... �̰� ���� �ð��� �������^^

�׸��� �Ѿ������� �� �Ѿ����� �� ��Ĩ�ϴ�!
������Ʈ�� �ڷ� �Ѿ��� ��쿡 �Ӹ��� �㸮, ������ �� �λ��� �� ��찡 ������ ������ �Ѿ����ž� �ؿ�! 

������ �Ѿ����� ��� ����, �Ͼ���� ȥ�� �Ͼ�ô�! ','4GqJrdyUKMs','������Ʈ',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (188,407,'���ڵ� ž���� ���������� �״Ͻ�','��ȣ�� �ƴϿ���.. �Ф�','Ao7bNB4E3GQ','��Ÿ',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (189,407,'�ʶ��׽� ���η��� �ް� ������? ���� �������� �ڱ��� ���� �� �־�� (Whole body workout)','�ȳ��ϼ��� :) 
2�ָ��� �λ�����! TMI�ε�..�̻��غ�� ���� �ٺ����ϱ� ���󿡼��� �׷� ����� ���°� �����󱸿� �Ф� �׷��� �ᱹ �����ֿ� ���� ������ ������ �ȵ�� �����ϱ� �̻糡���� ����� ����! �ؼ� �̷��� ���ָ���.. ���ο� �������� �λ����� ���� 

���� ��� �ʱ��ڿ� ���� �ʶ��׽� ��ƾ�̱���! ��! �ʹ� �����!!�ϴ� �������ٴ� 
�����ϰ� ��� ������ ���鼭 ���� �۱ۼ۱� ������..��� ������ ���� ��~~���� ������ ��ǰſ��� ^-^ ! ��հ� �� ������ּ��� ����
�׸��� ���� ���� ���ϰ� ������ �Ļ� �� ì�ܵ�ø鼭 �׻� �ǰ�ì�⼼�� :)!!!

(�� �ν�Ÿ�׷��� ���������??)
https://www.instagram.com/bbang_neu/

[���ۼ���]
1. �� & ��� ��Ʈ��Ī
2. ��ü��Ʈ��Ī
3. ������ Ʈ����Ʈ
4. �þ�
5. �̱۷��� ��Ʈ��ġ
6. ������ �þ�
7. �þ� & Ʈ����Ʈ
8. �� �ͽ��ټ�
9. W ����
10. �� & ����� ��Ʈ��Ī
11. ��Ʈ �÷�ũ
12. Ǯ �÷�ũ
13. �Ѹ� ����ũ �� ��
14. Ƽ��','sb51gF18cYo','�ʶ��׽�',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (190,407,'�ʶ��׽� �Թ��ڸ� ���� �ʱ� ����? ���� �ڼ��� ����� �Բ��ؿ������, �ھ� ��ȭ ��ƾ','�ȳ��ϼ���!
������ �ʱ��ںе��� ���� ���� ���� �ʶ��׽� ��ƾ�� �غ��غþ�� :)
�ʶ��׽��� ������ �־ �� �� ���� �غ�������̴� �е鵵 ������,
�ڼ��� ����� �Բ� ���� �ϳ��ϳ� �����ϰ� ��ϰ� �����̴� �е鵵 �Բ� ���ֽø� ���� �� ���ƿ�~! 
���� ���� ��-���� ��� ��������� �̷��� �������� �귯���� �ʶ��׽��� �� 2-3ȸ ������ �ʰ� ���ְ� �־��! 
ȣ��� �Բ� ���� �ϳ��� ��Ʈ�� �ϴٺ��� �� �� ���� ���������� ���� ����� �����̶����~?���� 
���� �е��� �� �Բ� ���������� ���ھ�� ??
��Ͻø鼭 �ñ��Ͻ� �κ��� �������� ��۷� ���� �����ֽñ���
���� �������� �ٶ��� ��ħ�������� �Ҿ���µ� ū �ϱ����� ���� �����ϼ���??','gcpiKiweo2I','�ʶ��׽�',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (191,407,'�ʶ��׽� ���η��� �ް� ������? �⺻����� źź��!! (Whole body Workout)','�ȳ��ϼ��� ^-^
������ �ʱ��ںе��� ���� ���ſ�� �غ��߾��! 
���� �ʹݺο� �����帮���� ��ô����� ���ַ� ����� �ǵ���~! 
������ �������� ũ�� �ʱ� ������ �ʺ��ںе鵵 �δ���� ������ �� �ִ� ���۵��̿���! 
��¼�� �ʹ� ���� �ڱؾȿ��µ�! ��� �����Ͻ� ���� �ִµ���! 
�� ���ȣ��� �Բ� ���ּž� �ؿ�! �׷��� �� ȿ���� Ŀ���� �ڱص� ��� ������ �� �����ſ��� :) 
���۵��� ������� �������Ͻ� ���� ����ó�� 10�ʰ��ƴ�
������ 50�ʿ��� 1�е��� ��Ƽ�� �������ε� �غ��� �����̿���! 
������ �ϼż� ���� ���߿� ���ۺ� 1�� ç������ ���� �غ��� ^-^ ?

(�� �ν�Ÿ�׷��� ���������??)
https://www.instagram.com/bbang_neu/

[���ۼ���]
1. ���ȣ���
2. ���̵� ��Ʈ��Ī
3. �� ��Ʈ��Ī
4. ��, ��� ��Ʈ��Ī
5. Ǫ����
6. ���嵶
7. �þ�
8. �긴��
9. ����
10. �� ���� ������
11. ���̵� �÷�ũ
12. ���� ����Ʈ
13. ���۸�','3zRMZ4Uijlo','�ʶ��׽�',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (192,407,'���ݱ��� �̷� �������� ������! �׸���� �� [ ������ ���� 1ȭ ]','�ȳ��ϼ��� ! ���� ���ǥ�Դϴ� !
����ġ�� �Բ�
�������� A���� Z���� !
�Բ� ���������!','-2tkidRS2eU','������',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (193,407,'���Ž� ������ �����Ʒ� ! [ ������ ���� 2ȭ ]','�ȳ��ϼ��� ! ���� ���ǥ�Դϴ� !
����ġ�� �Բ�
�������� A���� Z���� !
�Բ� ���������!','CGLiPLvPupU','������',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (194,407,'�������� �⺻, �ùٸ� ��޸��� �ϴ� ���','#�������Թ� #��޸� #���','J0fmUEw_o2M','������',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (195,407,'�������� ���� �� ����� �ؼ��� �ȵǴ� 6���� | ����','#�������Թ� #������ #����','VD3KfOsYM88','������',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (196,407,'������ ���ʰ��� 01 - ���ĵ� Standing - ��â�� ���� MTB ��������� ���� ��������������ȸ','��������������ȸ���� ������ �ʺ��е��� ���� ������ �����߽��ϴ�. mtb���� ��â��� �Բ� ��̰� ��������� ����� �����ϼ���. 1�� ������ ����-���ĵ� �Դϴ�.','nc0VbTxP-gU','������',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (197,407,'�޸��� �������¹� 1�� - 100M ���� ��ŸƮ �ڼ�����, �Ϲ��� ����������� (ü���Խ�&����ü��)','#�޸��� ���ϴ¹�? �޸����ڼ�? 

��������Ȱü�� #���� 100m, 200m 1�� ��� 
#���� �� �˷��ִ� �޸��� ���� 1����.','xStzJPrbWt0','�޸���',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (198,407,'�޸��� �������¹� 2�� - 100M ���� �������� ���� �� �޸��� �ڼ� ���� (ü���Խ� & ������ü��)','#�޸��� ���ϴ¹�? �޸����ڼ�? 
��������Ȱü�� #���� 100m, 200m 1�� ��� 
#���� �� �˷��ִ� �޸��� ���� 2����.','wlWiHdrpHJM','�޸���',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (199,407,'�޸����� �� ���� ����? �̵�ǲ�� �̵�ǲ ����! �ùٸ� �̵�ǲ ���� ���� + ���� ��� (���ʵ� ��û)','1:1 �¶��� ��� ����: mrphysio7@gmail.com','hGZbetOam4Q','�޸���',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (200,407,'�ʺ� ���ʵ��� ���� �⺻ ���� �ڼ��� �˷��帳�ϴ�.','�̹� ������ ���� �ʺ� ���ʺе��� ������ �ִ� �� ���� �ڼ��� ���ؼ�
�˷��帮�� �� ���� �е��� ����Ʈ����ũ �ֹ����� �޸��� ������ ���ؼ� 
���� �帮�ڽ��ϴ�.

00:00 INTRO
00:12 ���ױ⺻�ڼ�
00:55 ��Ʈ��Ī
01:47 �����ڼ�����
04:10 ����Ʈ����ũ�� ���� �̾߱�
05:59 �ʺ����ʿ��� �̵�ǲ�� ��õ ���ϴ� ����','nnmiUT8CXjQ','�޸���',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (201,407,'�ǰ��� ����� �ϴ� ���� ���� �ִ�?! �ʼ� ��û! [���� Ŭ��]','�츮����� ������ Ư���� ���� ���� ������ ���ε��� ���� ��ȣ�ϴ� ��� ����̶�� �մϴ�. ���λӸ� �ƴ϶� ����鵵 ������ ������ ��ȹ�� ����� ���� �ų���� ���� �����ϴ� ��쵵 �����ϴ�. �̹� ���Ǹ� ���� ��꿡 ���� �ùٸ��� �˰� �ִ��� �ٽ� ������ ����, ����� ���� �ǰ��� ��Ű�� ���� ��� � ���� �˾ƺ��ϴ�. ����� ���� �ǰ� ��Ű�⸦ ��õ�� ���ñ� �ٶ��ϴ�.','JGlZdp06p0c','���',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (202,407,'��ſ� ������ ���� �� �˾ƾ� �� ����� 1��! �賶 �� �Ŵ¹�','�� ì��� �뵵�θ� �˾Ҵ� �賶, �˰��� ���� ������ ���� �� �߿��� ��� �� �ϳ�?! 
�賶�� �� �ŵ� ������ ����� �� �� �ִ�!','C3kuhiB6xQM','���',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (203,407,'��ſ� ������ ���� �� �˾ƾ� �� ����� 2��! �ùٸ� ��ƽ ����','���� ������� �߸��� ��ƽ �������� �ո�� ������ ������ ���� �Ǵµ�...
�� �̻� ���ǰ���θ� ������� ������~! ����ε� ��ƽ ������ �˷��帳�ϴ�','KDpf49eLufk','���',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (204,407,'?���Ϻ��? ������ �����ھ�/�ӱ�����ȭ 15�� ��ƾ, �㸮���� NO!!!',null,'CNg_J7M_v74','ȨƮ��Ʈ',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (205,407,'[��ռ��� ȨƮ] �ھ� ��ȭ, ���� ���(�ڻ��̵� �÷�ũ ���� �ٿ�)','�ｺŸ�׷��ӡ������ٵ𡯱������� ���� ����

�������� �̾��ϳ� �� ���� â���ϸ���.�� ������ Ʈ���̳ʴ� ���� �������� �Ľ��� ������ ���� �ڱع޾� ���ٿ� ���� �θ��� Ű������, ������ 

��� �� �̻��� ����ǰ ���ٳ࡯�� �ƴ�. 
��� ��Ȱ ������ �ž� �Ѵٰ� ���־� ���ϴ� �׳��� ���� ���.

���̵� �÷�ũ ���� �ٿ�
1 ������ ���� �ٴڿ� ������ ��� �Ȳ�ġ�� ���� ��ü�� �����.
2 �Ʒ� �������� ���ο� ���� �ָ� �����̿� ����� �缱���� �������� �� ������ �����̸� ��� �ø���. 
�¿� 8ȸ�� 3��Ʈ �ݺ�.


�ڼ��� ���뢺 #��ռ��� 4��ȣ(P184~188)

��ȹ ������ ���� 
���� ������
���&����ũ�� ������(���̸���) 
�ǻ����� ����','2m8uhJxIix8','ȨƮ��Ʈ',5,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (206,407,'�ʺ����ʰ� �� �ָ� ��ġ���ʰ� �޸��� ���. (����. ����� ����)','����ϸ� ��ġ�� �ʰ� ���� �� �ָ� �޸��Ⱑ �����ұ��? 
5km���� Ǯ�ڽ� ��������� ������ ��ΰ� �� �� �ֽ��ϴ�. 

���� ������ ������ ��̴ٸ� ������ ���ƿ�. �˸��������� ��Ź�帳�ϴ�. ','-8BBrxjlXtg','�޸���',19,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (207,407,'�޸��⿡ ���� ���ؿ� ����?! ����� ��� ����� �޸��� (KBS_2018.05.23)','���κ����� ���_��(RUN) �ٽ� �޸���

�޸���� �ٷ°� �������� Ű���ְ�, ������ ��� ���� ưư�ϰ� �� �ִ� ��̴�. �ֱٿ��� �޸��Ⱑ ��ȭ ���濡�� ȿ������ ��̶�� ��ǵ��� �������� �ִ�. ��ҿ� �ð��� ������ ���� �ʾ� ������ ������ �� �ְ�, �츮 ������ ���� �޸���! ������, ����� �غ� ���� �ʰ� �޸��� �׸�ŭ �λ��� ���赵 ũ��. ���κ����� ��п����� �޸��Ⱑ �츮 ���� � ������ �ִ��� ��ü������ ���캸�� �����ϰ� �ǰ��ϰ� �޸��� ���� ����� �˾ƺ���.','665r9k2E0_o','�޸���',4,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (208,407,'(��������X, ����O) ���ٿ�� ����Ҹ� �ѹ���??�����ϴ� ���ٿ?',null,'kETh8T3it4k','ȨƮ��Ʈ',7,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (209,407,'(No ����Ʈ, No ����, No �ݺ�) 30�� ����Ҽ� �ٷ� ���� � - ����� ���̾�Ʈ �!','�ȳ��ϼ���^_^ 
������ ���� HIIT���α׷� �غ��߾��! 
�������� ���� �԰� ������ �Ҿ �� ������ �����Ͻ���! ���� (���� �׷���ϴ�) 
������ �� Ƣ! �Ʒ��� ����! ����� ���뽺~�ФФ���
���� �Բ� ���� ����� ���� ����Ŭ�� ���ƿ� �� �ִ� �õ��� �ɾ�ڱ���!!!  ! 
�׷� ���� ��� ������ �� ������ּ��� 
ȱ���Դϴ�!! 
���� ���� ���󿡼� ã�ƺɰԿ� ??','NWVueUdekqo','ȨƮ��Ʈ',14,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (211,407,'[ ���������� ] ��� ���� ������ �̵��� �ϳ��� �����ּ���! �� �ָ� �ȹٷ� ���̾�� ����̹� �� ��������','�ȳ��ϼ��� 
�������� ����ä���� �����������Դϴ�.
�Ƹ��߾� ���ۺе鲲�� ������ �ϸ鼭 �ñ��ߴ� �κ��� ���� �� �������ϰ� �����
������ �ص帮�� ������,
��Ż�� �������� �ڽ� �޴�����Ʈ �پ��ϰ� ������ �Ǵ� ����� �����ص帮�� �ֽ��ϴ� 
�ʹ� ����� ���������� �����е��� �������� ������ �Ǵ� �������� 
���� �ݿ��� 7:30 �� ã�ƺ˵��� �ϰڽ��ϴ�!
�׻� �ǰ� �� ì��ð� ���� �Ƿ¿� ���� ����� �� �����ñ� �ٶ�ڽ��ϴ� ~','jNRWCAoWLAc','����',10,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (212,407,'�齺�� ȸ������ ������! ����̹��� ���̾�! �� ��������','�ȳ��ϼ��� 
�������� ����ä���� �����������Դϴ�.
�Ƹ��߾� ���ۺе鲲�� ������ �ϸ鼭 �ñ��ߴ� �κ��� ���� �� �������ϰ� �����
������ �ص帮�� ������,
��Ż�� �������� �ڽ� �޴�����Ʈ �پ��ϰ� ������ �Ǵ� ����� �����ص帮�� �ֽ��ϴ� 
�ʹ� ����� ���������� �����е��� �������� ������ �Ǵ� �������� 
���� �ݿ��� 7:30 �� ã�ƺ˵��� �ϰڽ��ϴ�!
�׻� �ǰ� �� ì��ð� ���� �Ƿ¿� ���� ����� �� �����ñ� �ٶ�ڽ��ϴ� ~!','5QSwyvD45rY','����',15,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (213,407,'SUB) �̰͸� �׾�� �ϼ���. �ְ��� �����Դϴ�. ��ٱ� Golflesson �㼮����',null,'4c1L1FHWb9k','����',32,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (214,407,'7�� 6�� 5�� ���̾� ��Ÿ� ���̰� ������ �е� ������� #���̾�',null,'7Ugt1NgZDsQ','����',119,to_date('21/10/02','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.COURSELIKELY
SET DEFINE OFF;
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (153,422);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (151,387);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (112,2);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (124,365);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (131,2);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (108,2);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (95,2);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (151,365);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (153,436);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,411);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (164,411);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (163,411);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,452);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (164,452);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,487);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (164,487);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,507);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (164,507);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (164,448);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,438);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,448);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (164,431);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,431);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (163,431);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (165,509);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (163,509);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (164,509);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (174,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (168,410);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (178,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (180,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (183,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (187,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (192,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (211,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (199,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (193,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (206,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (214,459);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (214,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (213,407);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (205,411);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (209,459);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (211,492);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (213,492);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (209,492);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (174,492);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (212,435);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (209,435);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (213,435);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (175,492);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (214,385);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (216,410);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (214,406);
Insert into SPRINGWEFIT.COURSELIKELY (CBNUM,MEMBERNUM) values (217,410);
REM INSERTING into SPRINGWEFIT.COURSEREPLY
SET DEFINE OFF;
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (142,108,'^^',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (112,131,'3^-^',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (110,131,'1',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (111,131,'2',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (113,131,'4 ',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (129,122,'0',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (130,122,'1',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (131,122,'2',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (132,122,'3',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (133,122,'4',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (134,122,'5',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (135,122,'6',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (136,122,'7',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (137,122,'8',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (138,122,'8',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (139,122,'666',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (140,122,'6666',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (141,122,'55555',2,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (5,151,'qwe',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (23,151,'qwe',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (24,151,'q',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (25,151,'w',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (30,151,'e',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (33,151,'qwer',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (34,151,'sdflkj',365,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (35,151,'�ȳ��ϼ���',365,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (36,151,'������',365,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (143,151,'�Ƹ��',398,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (144,151,'�ȳ����ڳ���',398,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (145,127,'�ȳ��ϼ���.',406,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (146,153,'������ ���ǰ� �ƴϳ׿�. �׷��� �Ű��߾��',509,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (147,153,'�߿˾߿�',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (148,153,'�׷��� ��մ� ���ǳ׿�.',436,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (152,164,'��� �̱� �̸��ڸ� ����̿�, ���� �����ϴ� ���ϴ�.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (150,154,'�������� �ȳ��ͼ� �Ű��߾',422,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (151,165,'���� �ܿ��� �ϴÿ��� ���� �ָ� �� �ֽ��ϴ�.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (153,163,'�ܵ� �׷��� ��� �̱� �̷� Ǯ�� ���ϴ�.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (154,162,'�� �����ӿ� �ƽ����� ���̵��� �ҷ� �ֵ���, ���� �Ƹ��ٿ� �ſܴ�.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (155,165,'�ÿ� �ڶ�ó�� ������ ���̵��� �ߴ� ������� ���, ���� �̸��� ���ϴ�.',452,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (156,164,'�����ý� ��, ����̿�, ����Դϴ�.',452,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (157,165,'���� ��� �߾�� ���� ���� �̸���, ���ϴ�.',487,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (158,164,'���� ����, �����ӿ� �ϳ� �� ���� ������� ���� ����Դϴ�.',487,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (159,165,'���� �ϳ� ��Ӵ�, �ֽ��ϴ�. ���� �ÿ� ������, ���� �ֽ��ϴ�.',507,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (160,164,'�ֵ���, �� ������ �̸��ڸ� ���ϴ�.',507,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (161,165,'������ ���ǳ׿�. ^^ �ߺ��ҽ��ϴ�.',438,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (162,164,'��� �ϳ��� �ܵ� ���� �̷� �ҷ� ����Դϴ�.',438,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (163,165,'���� ���� �������� �̤�',448,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (164,164,'��� ���� �ͳ׿�~',448,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (165,165,'���� ���� �ް� �;��.',431,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (166,165,'�̷� �� �����԰� �̷� ���� ������ ���� Ǯ�� ��ʴϴ�.',509,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (167,165,'^^',509,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (202,217,'qregsfzdxnv b',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (169,168,'������',385,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (182,214,'�� ������ �ʵ� ����������',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (172,170,'������',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (173,170,'������',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (174,170,'321',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (175,170,'??',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (176,170,'asd',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (177,172,'11',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (178,43,'zzz',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (179,171,'90;;;',410,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (180,168,'�ӤӤ�',410,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (200,218,'����',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (183,214,'��ũ���� ġ�� ������ �����׿�..',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (185,209,'�̰� �ص� �������� ���������?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (201,217,'efdsgdbnv b',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (203,216,'�����׽�Ʈ',385,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (204,213,'������������',514,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (189,174,'���� ���� ������ ��������',492,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (205,214,'2',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (206,214,'3',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (207,213,'dd',385,to_date('21/10/06','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.COURSEREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (132,2,'N','Y','Y','N','N','^^',to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (125,2,'N','N','N','N','N',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (124,2,'N','N','N','N','Y',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (43,2,'N','N','N','N','N',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (111,2,'N','N','Y','N','N',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (101,2,'N','N','N','Y','N',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (12,2,'N','N','N','Y','N',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (108,2,'N','N','N','N','Y',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (131,2,'Y','N','N','N','N',null,to_date('21/09/25','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (95,2,'N','N','N','N','Y','�׳� �����ȵ���',to_date('21/09/27','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (151,385,'N','Y','Y','N','N','sdlfkjsdf',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (151,365,'N','N','N','Y','N','qwe',to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (153,385,'N','N','N','N','Y',null,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (153,509,'N','N','N','N','N','� ���ǰ� �ƴϳ׿�.',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (153,422,'N','N','N','N','N','�׳� �����ȵ���',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (154,422,'N','N','N','N','N','�������� �ȳ���',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (172,406,'Y','N','N','N','N',null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (168,410,'N','N','N','Y','N',null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (168,509,'N','N','N','N','Y',null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (175,385,'N','Y','N','N','N','��',to_date('21/10/02','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.DIETBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (42,1,'�ټ��� �� �����մϴ�.����.��¥����','�ټ�° ��',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/16','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (43,2,'�ټ��� �� �����մϴ�.����.��¥����','�ټ�° ��',null,null,null,null,null,null,null,null,null,null,5,0,to_date('21/09/16','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (283,435,'�ؽ�Ʈ�� �Է½� �� �̷��� ����?','qrfgm��� ������ ���嵿 �ΰ� ���� ��ü�� ȭõ�����ڻ���� �������� �� ���� ���� 
��� �踸��(57)���� �ڿ��� �� Ư���˻��� ��ô ��������� 100�� ���� �ǳ� ������ ��
������. ������ �� ���� �Ϻΰ� �� �� Ư�� � ���� �κ� �ڱ����� ������ ���ɼ��� ��
�ٰ� ���� ���ó ������ �ַ��ϰ� �ִ�.

3�� �����迡 ������ �达�� �����ر��� ȭõ�������� ���뿩�� ������� ���� 473
�� �� �� 100�� ���� ���嵿 �о�����ü ��ǥ �̸�(50)������ �����ߴ�. �� ���� ȭõ
������ ������ �þҴ� ���嵿 ���� 5�� ����� �о� ���� ������ �������� ������ �˷�
����. �̾��� �� �� Ư���� ��ô ������ ������ �˷�����. �̾��� 2018������ �ڽ��� 
����� A���� ��ǥ�̻�ε� �����ߴµ�, �� �� Ư���� 2014�� 1������ 2������ A���� 
����̻�� �� 1������ �����ߴ�. �̾��� �� �� Ư���� ���� ���� �ٰŷ� �达�� �̾���
�� �ǳ� 100�� �� �� �Ϻΰ� ���������� �� �� Ư�˿��� ���޵� ���� �ƴϳĴ� ��Ȥ�� ��
�� �ִ�.

�� �� Ư���� 2015�� ȭõ���� ���� ���ĺ��� �� ��ȣ��� ���ϸ� �� 2�� ���� ����
�� �޴ٰ� 2016�� �� ������� ���� Ư������ �Ӹ�Ǹ鼭 ������ �׸��״�. ���� ���� 
ȭõ���� �������� ���Ⱓ �ٹ��ϴ� �ֱ� �����ߴµ� ���� 6�� ȭõ������ ������ ����
Ʈ�� �ü��� ���� ���ݿ� �о���� ����� �˷����鼭 Ư�� ��Ȥ�� ����ƴ�.

�达 �� ��ȣ���� ���达�� ����� ������ �̾��� ��û���� 100�� ���� ������ ���� ����
��, �� �� Ư�˰��� �����ϴ١��� ������. �� �� Ư�˿��� �ǳʰ� ���� ������, �о�����
�� �ϴ� �̾��� ����ڱ����� ��\',null,null,null,null,null,null,null,null,null,null,52,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (285,514,'test','test','site03.jpg','site04.jpg','site05.jpg',null,null,'a03b0da5.jpg','b7d9dd72.jpg','b0e79c1a.jpg',null,null,25,3,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (11,386,'�����׽�Ʈ','�����׽�Ʈ','0.jpg',null,null,null,null,'4d4ceba3.jpg',null,null,null,null,13,1,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (12,385,'sdf','sdf',null,null,null,null,null,null,null,null,null,null,9,0,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (249,385,'asd','asd','ȭ�� ĸó 2021-09-06 231735.png',null,null,null,null,'9e5b6b80.png',null,null,null,null,5,1,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (250,392,'��������','��������','1280px-01-L_May_25_2009_1625Z.jpg','''1928_Indochine.jpg',null,null,null,'ee2598af.jpg','add10878.jpg',null,null,null,17,2,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (256,385,'asd','asd
asd',null,null,null,null,null,null,null,null,null,null,13,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (255,385,'������','������',null,null,null,null,null,null,null,null,null,null,10,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (258,385,'asd','ddd','������ ���� ������ġ.jpg',null,null,null,null,'a58a4e2f.jpg',null,null,null,null,9,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (264,392,'���߿� ������ ũ��','���߿� ������ ũ��','2.jpg',null,null,null,null,'6fdf3cd1.jpg',null,null,null,null,1,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (265,392,'¥�忣 ���߰��� �ѷ�����','¥�忣 ���߰��� �ѷ�����','3.jpg',null,null,null,null,'49108ed4.jpg',null,null,null,null,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (266,392,'�Ұ�⿡ �� �񺭸԰�ʹ�','�Ұ�⿡ �� �񺭸԰�ʹ�','4.jpg',null,null,null,null,'1eab7443.jpg',null,null,null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (267,392,'�����̿� ���ְ� �� ��︮�°� ���� �����˾Ҿ�?','�����̿� ���ְ� �� ��︮������','5.jpg',null,null,null,null,'19f230c4.jpg',null,null,null,null,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (268,511,'�Թڸ����� �����ī �Ծ�� ���� �����ī �Թٱ�?','�Թڸ����� �����ī �Ծ��','6.jpg',null,null,null,null,'54bebf17.jpg',null,null,null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (269,511,'���� ���ƴ�','���� ���ƴ�','7.jpg',null,null,null,null,'6a3ee439.jpg',null,null,null,null,9,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (270,511,'���ڳ�̾߳��� �������νð� �ʹ� �����','���ڳ�̾߳��� �������νð� �ʹ� �����','9.jpg',null,null,null,null,'01649ca3.jpg',null,null,null,null,10,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (271,511,'�������� �쵿 !','�������� �쵿 !','10.jpg',null,null,null,null,'8d3b4fd3.jpg',null,null,null,null,19,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (272,512,'�����ΰ���;','�����νĴ翡����','spain1.jpg','spain2.jpg',null,null,null,'254efad4.jpg','f2d8513e.jpg',null,null,null,6,2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (273,423,'������ ���� �Դϴ�','���� �ݸ� �Ծ����','����.jpg',null,null,null,null,'879d38fc.jpg',null,null,null,null,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (274,393,'�Ծ ������ ���� ����','�谡���Ŀ�','��1.jpg',null,null,null,null,'081e87e3.jpg',null,null,null,null,13,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (275,393,'�������� �̷��� �԰� �����������','�ٵ� ���� �����Ұ� ��������̤̤�����������������������������','��1.jpg',null,null,null,null,'d55df78d.jpg',null,null,null,null,18,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (276,393,'���⸦ ������ ���� ���','�߱��ϰ� �������� �濡 ������ ��Խ��� 
��ʰ� ���ϴ� �͵� ȭ���µ�
����� �̷��� �԰� ��ĳ����','��3.jpg',null,null,null,null,'2a1aad80.jpg',null,null,null,null,39,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (277,438,'���� ���� ���� �߰����� �ȸԳ׿�','������ ���̾�Ʈ ����ĥ��','��2.jpg',null,null,null,null,'3fde23e5.jpg',null,null,null,null,59,1,to_date('21/10/02','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.DIETLIKELY
SET DEFINE OFF;
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (277,406);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (276,406);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (273,435);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (11,365);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (254,391);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (274,435);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (277,435);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (274,492);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (275,492);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (284,410);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (285,385);
Insert into SPRINGWEFIT.DIETLIKELY (DBNUM,MEMBERNUM) values (287,392);
REM INSERTING into SPRINGWEFIT.DIETREPLY
SET DEFINE OFF;
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (124,283,'��������Ǥä�������ȣ',435,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (120,277,'�׽�Ʈ2',406,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (122,282,'<script>alert(''test'');</script>',385,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (1,158,'123333',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (53,252,'asd',385,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (57,257,'^^^^;;;',410,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (55,255,'zzz',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (56,257,'dkdkkd',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (74,263,'���ֵ� ��̳���?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (75,263,'ȭ�������ΰ���?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (65,262,'^^',407,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (67,262,'�����',509,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (72,262,'�߿˾߿�',411,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (68,262,'�������',509,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (73,263,'���� �����ΰ���?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (76,263,'���� ȭ���̿���?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (77,263,'���� ������ ���ڈ�!',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (78,264,'���� ����ε� ���߿� ��������׿�',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (79,264,'�±�',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (80,264,'����',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (81,267,'�� ��������� ����?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (82,267,'��Ƣ�� ���� �ƴմϱ� �ʹ��ϳ�',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (83,266,'��� ���� �Ծ���?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (84,266,'����� �߰� �س���?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (85,265,'����� �÷�����',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (86,271,'���ְڴ�',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (87,271,'�������� �쵿�Ծ����',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (88,271,'�ƴ� �Ľ�Ÿ �ظԾ����',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (89,270,'���ڳ�̾߳��� ���̺� �԰�ʹ�',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (90,269,'���� ����ī�� ����ʹ�',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (91,269,'�԰��°� �ʹ� ����',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (92,270,'������ ���񵿿� ��� ������ �ι�������',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (93,273,'�����带 �ΰ���̳׿� ',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (94,273,'��� ȸ��Ĵ��ΰ���',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (95,273,'���ִ� ȸ�� ����ȸ��',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (96,272,'���� �����ΰ���? �ٰ�Ʈ�� �ϸ��ΰ���',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (97,270,'�ٿ�Ʈ �Ͻô°� �³��� ����',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (98,271,'�����쵿�ΰ���? ',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (99,276,'�� ���⸦ ��̴ٴ� �������������� �ѿ��ܿ�',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (100,276,'�ƺ�ī�� ���ְھ��',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (101,275,'������ �Ϳ쳻..',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (102,275,'���� �԰� ����糪��',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (103,274,'�Ĵ� ���� �� ���׿�',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (104,274,'���� �̷��� ����������',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (105,277,'���㰡 ���� ����� �Ȱ��� �ƴ���...',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (106,276,'����~~ ������ ��',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (107,275,'�Ұ������� ���� �󸶳� ������ �ƽô�����?',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (108,275,'�׸� ���Ʈ ��ñ�..',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (130,287,'fdfsd',392,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (110,277,'�ٵ� ��� �����̾��? �� �Ǿ�� �� �������䤻��',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (111,276,'�̰� �ʹ� �߳�. �߱ٱ��� �ߴµ� ������ ��Ϥ̤�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (112,276,'������ ����',459,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (113,275,'�ٵ� �̷��� ������ �� �Ⱥ����ٵ����� ź��ȭ�� ��Ƽ�׿�',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (114,274,'������',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (115,271,'�԰�;�� �̤�',492,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (126,284,'��������������',435,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (129,285,'sdfsfd',514,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (131,287,'������',392,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (132,275,'����',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (133,285,'������',514,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (135,287,'3',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (136,283,'dd',385,to_date('21/10/06','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.DIETREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.DIETREPORT (DBNUM,MEMBERNUM) values (287,392);
Insert into SPRINGWEFIT.DIETREPORT (DBNUM,MEMBERNUM) values (11,365);
Insert into SPRINGWEFIT.DIETREPORT (DBNUM,MEMBERNUM) values (254,391);
REM INSERTING into SPRINGWEFIT.FREEBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (47,364,'�׽�Ʈ �����Դϴ�.1','�׽�Ʈ �����Դϴ�.1',null,null,null,null,null,null,null,null,null,null,5,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (48,364,'�׽�Ʈ �����Դϴ�.2','�׽�Ʈ �����Դϴ�.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (49,364,'�׽�Ʈ �����Դϴ�.3','�׽�Ʈ �����Դϴ�.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (50,364,'�׽�Ʈ �����Դϴ�.4','�׽�Ʈ �����Դϴ�.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (51,364,'�׽�Ʈ �����Դϴ�.5','�׽�Ʈ �����Դϴ�.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (52,364,'�׽�Ʈ �����Դϴ�.6','�׽�Ʈ �����Դϴ�.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (53,364,'�׽�Ʈ �����Դϴ�.7','�׽�Ʈ �����Դϴ�.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (54,364,'�׽�Ʈ �����Դϴ�.8','�׽�Ʈ �����Դϴ�.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (55,364,'�׽�Ʈ �����Դϴ�.9','�׽�Ʈ �����Դϴ�.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (56,364,'�׽�Ʈ �����Դϴ�.10','�׽�Ʈ �����Դϴ�.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (57,364,'�׽�Ʈ �����Դϴ�.11','�׽�Ʈ �����Դϴ�.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (58,364,'�׽�Ʈ �����Դϴ�.12','�׽�Ʈ �����Դϴ�.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (59,364,'�׽�Ʈ �����Դϴ�.13','�׽�Ʈ �����Դϴ�.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (60,364,'�׽�Ʈ �����Դϴ�.14','�׽�Ʈ �����Դϴ�.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (61,364,'�׽�Ʈ �����Դϴ�.15','�׽�Ʈ �����Դϴ�.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (62,364,'�׽�Ʈ �����Դϴ�.16','�׽�Ʈ �����Դϴ�.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (63,364,'�׽�Ʈ �����Դϴ�.17','�׽�Ʈ �����Դϴ�.17',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (64,364,'�׽�Ʈ �����Դϴ�.18','�׽�Ʈ �����Դϴ�.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (65,364,'�׽�Ʈ �����Դϴ�.19','�׽�Ʈ �����Դϴ�.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (66,364,'�׽�Ʈ �����Դϴ�.20','�׽�Ʈ �����Դϴ�.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (67,364,'�׽�Ʈ �����Դϴ�.21','�׽�Ʈ �����Դϴ�.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (68,364,'�׽�Ʈ �����Դϴ�.22','�׽�Ʈ �����Դϴ�.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (69,364,'�׽�Ʈ �����Դϴ�.23','�׽�Ʈ �����Դϴ�.23',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (70,364,'�׽�Ʈ �����Դϴ�.24','�׽�Ʈ �����Դϴ�.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (71,364,'�׽�Ʈ �����Դϴ�.25','�׽�Ʈ �����Դϴ�.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (72,364,'�׽�Ʈ �����Դϴ�.26','�׽�Ʈ �����Դϴ�.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (73,364,'�׽�Ʈ �����Դϴ�.27','�׽�Ʈ �����Դϴ�.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (74,364,'�׽�Ʈ �����Դϴ�.28','�׽�Ʈ �����Դϴ�.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (75,364,'�׽�Ʈ �����Դϴ�.29','�׽�Ʈ �����Դϴ�.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (76,364,'�׽�Ʈ �����Դϴ�.30','�׽�Ʈ �����Դϴ�.30',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (77,364,'�׽�Ʈ �����Դϴ�.31','�׽�Ʈ �����Դϴ�.31',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (78,364,'�׽�Ʈ �����Դϴ�.32','�׽�Ʈ �����Դϴ�.32',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (79,364,'�׽�Ʈ �����Դϴ�.33','�׽�Ʈ �����Դϴ�.33',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (80,364,'�׽�Ʈ �����Դϴ�.34','�׽�Ʈ �����Դϴ�.34',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (81,364,'�׽�Ʈ �����Դϴ�.35','�׽�Ʈ �����Դϴ�.35',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (82,364,'�׽�Ʈ �����Դϴ�.36','�׽�Ʈ �����Դϴ�.36',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (83,364,'�׽�Ʈ �����Դϴ�.37','�׽�Ʈ �����Դϴ�.37',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (84,364,'�׽�Ʈ �����Դϴ�.38','�׽�Ʈ �����Դϴ�.38',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (85,364,'�׽�Ʈ �����Դϴ�.39','�׽�Ʈ �����Դϴ�.39',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (86,364,'�׽�Ʈ �����Դϴ�.40','�׽�Ʈ �����Դϴ�.40',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (87,364,'�׽�Ʈ �����Դϴ�.41','�׽�Ʈ �����Դϴ�.41',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (88,364,'�׽�Ʈ �����Դϴ�.42','�׽�Ʈ �����Դϴ�.42',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (89,364,'�׽�Ʈ �����Դϴ�.43','�׽�Ʈ �����Դϴ�.43',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (90,364,'�׽�Ʈ �����Դϴ�.44','�׽�Ʈ �����Դϴ�.44',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (91,364,'�׽�Ʈ �����Դϴ�.45','�׽�Ʈ �����Դϴ�.45',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (92,364,'�׽�Ʈ �����Դϴ�.46','�׽�Ʈ �����Դϴ�.46',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (93,364,'�׽�Ʈ �����Դϴ�.47','�׽�Ʈ �����Դϴ�.47',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (94,364,'�׽�Ʈ �����Դϴ�.48','�׽�Ʈ �����Դϴ�.48',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (95,364,'�׽�Ʈ �����Դϴ�.49','�׽�Ʈ �����Դϴ�.49',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (96,364,'�׽�Ʈ �����Դϴ�.50','�׽�Ʈ �����Դϴ�.50',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (97,364,'�׽�Ʈ �����Դϴ�.51','�׽�Ʈ �����Դϴ�.51',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (98,364,'�׽�Ʈ �����Դϴ�.52','�׽�Ʈ �����Դϴ�.52',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (99,364,'�׽�Ʈ �����Դϴ�.53','�׽�Ʈ �����Դϴ�.53',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (100,364,'�׽�Ʈ �����Դϴ�.54','�׽�Ʈ �����Դϴ�.54',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (101,364,'�׽�Ʈ �����Դϴ�.55','�׽�Ʈ �����Դϴ�.55',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (102,364,'�׽�Ʈ �����Դϴ�.56','�׽�Ʈ �����Դϴ�.56',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (103,364,'�׽�Ʈ �����Դϴ�.57','�׽�Ʈ �����Դϴ�.57',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (104,364,'�׽�Ʈ �����Դϴ�.58','�׽�Ʈ �����Դϴ�.58',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (105,364,'�׽�Ʈ �����Դϴ�.59','�׽�Ʈ �����Դϴ�.59',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (106,364,'�׽�Ʈ �����Դϴ�.60','�׽�Ʈ �����Դϴ�.60',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (107,364,'�׽�Ʈ �����Դϴ�.61','�׽�Ʈ �����Դϴ�.61',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (108,364,'�׽�Ʈ �����Դϴ�.62','�׽�Ʈ �����Դϴ�.62',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (109,364,'�׽�Ʈ �����Դϴ�.63','�׽�Ʈ �����Դϴ�.63',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (110,364,'�׽�Ʈ �����Դϴ�.64','�׽�Ʈ �����Դϴ�.64',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (111,364,'�׽�Ʈ �����Դϴ�.65','�׽�Ʈ �����Դϴ�.65',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (112,364,'�׽�Ʈ �����Դϴ�.66','�׽�Ʈ �����Դϴ�.66',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (113,364,'�׽�Ʈ �����Դϴ�.67','�׽�Ʈ �����Դϴ�.67',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (114,364,'�׽�Ʈ �����Դϴ�.68','�׽�Ʈ �����Դϴ�.68',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (115,364,'�׽�Ʈ �����Դϴ�.69','�׽�Ʈ �����Դϴ�.69',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (116,364,'�׽�Ʈ �����Դϴ�.70','�׽�Ʈ �����Դϴ�.70',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (117,364,'�׽�Ʈ �����Դϴ�.71','�׽�Ʈ �����Դϴ�.71',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (118,364,'�׽�Ʈ �����Դϴ�.72','�׽�Ʈ �����Դϴ�.72',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (119,364,'�׽�Ʈ �����Դϴ�.73','�׽�Ʈ �����Դϴ�.73',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (120,364,'�׽�Ʈ �����Դϴ�.74','�׽�Ʈ �����Դϴ�.74',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (121,364,'�׽�Ʈ �����Դϴ�.75','�׽�Ʈ �����Դϴ�.75',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (122,364,'�׽�Ʈ �����Դϴ�.76','�׽�Ʈ �����Դϴ�.76',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (123,364,'�׽�Ʈ �����Դϴ�.77','�׽�Ʈ �����Դϴ�.77',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (124,364,'�׽�Ʈ �����Դϴ�.78','�׽�Ʈ �����Դϴ�.78',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (125,364,'�׽�Ʈ �����Դϴ�.79','�׽�Ʈ �����Դϴ�.79',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (126,364,'�׽�Ʈ �����Դϴ�.80','�׽�Ʈ �����Դϴ�.80',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (127,364,'�׽�Ʈ �����Դϴ�.81','�׽�Ʈ �����Դϴ�.81',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (128,364,'�׽�Ʈ �����Դϴ�.82','�׽�Ʈ �����Դϴ�.82',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (129,364,'�׽�Ʈ �����Դϴ�.83','�׽�Ʈ �����Դϴ�.83',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (130,364,'�׽�Ʈ �����Դϴ�.84','�׽�Ʈ �����Դϴ�.84',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (131,364,'�׽�Ʈ �����Դϴ�.85','�׽�Ʈ �����Դϴ�.85',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (132,364,'�׽�Ʈ �����Դϴ�.86','�׽�Ʈ �����Դϴ�.86',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (133,364,'�׽�Ʈ �����Դϴ�.87','�׽�Ʈ �����Դϴ�.87',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (134,364,'�׽�Ʈ �����Դϴ�.88','�׽�Ʈ �����Դϴ�.88',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (135,364,'�׽�Ʈ �����Դϴ�.89','�׽�Ʈ �����Դϴ�.89',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (136,364,'�׽�Ʈ �����Դϴ�.90','�׽�Ʈ �����Դϴ�.90',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (137,364,'�׽�Ʈ �����Դϴ�.91','�׽�Ʈ �����Դϴ�.91',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (138,364,'�׽�Ʈ �����Դϴ�.92','�׽�Ʈ �����Դϴ�.92',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (139,364,'�׽�Ʈ �����Դϴ�.93','�׽�Ʈ �����Դϴ�.93',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (140,364,'�׽�Ʈ �����Դϴ�.94','�׽�Ʈ �����Դϴ�.94',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (141,364,'�׽�Ʈ �����Դϴ�.95','�׽�Ʈ �����Դϴ�.95',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (142,364,'�׽�Ʈ �����Դϴ�.96','�׽�Ʈ �����Դϴ�.96',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (143,364,'�׽�Ʈ �����Դϴ�.97','�׽�Ʈ �����Դϴ�.97',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (144,364,'�׽�Ʈ �����Դϴ�.98','�׽�Ʈ �����Դϴ�.98',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (145,364,'�׽�Ʈ �����Դϴ�.99','�׽�Ʈ �����Դϴ�.99',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (146,364,'�׽�Ʈ �����Դϴ�.100','�׽�Ʈ �����Դϴ�.100',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (147,364,'�׽�Ʈ �����Դϴ�.101','�׽�Ʈ �����Դϴ�.101',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (148,364,'�׽�Ʈ �����Դϴ�.102','�׽�Ʈ �����Դϴ�.102',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (149,364,'�׽�Ʈ �����Դϴ�.103','�׽�Ʈ �����Դϴ�.103',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (150,364,'�׽�Ʈ �����Դϴ�.104','�׽�Ʈ �����Դϴ�.104',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (151,364,'�׽�Ʈ �����Դϴ�.105','�׽�Ʈ �����Դϴ�.105',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (152,364,'�׽�Ʈ �����Դϴ�.106','�׽�Ʈ �����Դϴ�.106',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (153,364,'�׽�Ʈ �����Դϴ�.107','�׽�Ʈ �����Դϴ�.107',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (154,364,'�׽�Ʈ �����Դϴ�.108','�׽�Ʈ �����Դϴ�.108',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (155,364,'�׽�Ʈ �����Դϴ�.109','�׽�Ʈ �����Դϴ�.109',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (156,364,'�׽�Ʈ �����Դϴ�.110','�׽�Ʈ �����Դϴ�.110',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (157,364,'�׽�Ʈ �����Դϴ�.111','�׽�Ʈ �����Դϴ�.111',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (158,364,'�׽�Ʈ �����Դϴ�.112','�׽�Ʈ �����Դϴ�.112',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (159,364,'�׽�Ʈ �����Դϴ�.113','�׽�Ʈ �����Դϴ�.113',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (160,364,'�׽�Ʈ �����Դϴ�.114','�׽�Ʈ �����Դϴ�.114',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (161,364,'�׽�Ʈ �����Դϴ�.115','�׽�Ʈ �����Դϴ�.115',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (162,364,'�׽�Ʈ �����Դϴ�.116','�׽�Ʈ �����Դϴ�.116',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (163,364,'�׽�Ʈ �����Դϴ�.117','�׽�Ʈ �����Դϴ�.117',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (164,364,'�׽�Ʈ �����Դϴ�.118','�׽�Ʈ �����Դϴ�.118',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (165,364,'�׽�Ʈ �����Դϴ�.119','�׽�Ʈ �����Դϴ�.119',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (166,364,'�׽�Ʈ �����Դϴ�.120','�׽�Ʈ �����Դϴ�.120',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (167,364,'�׽�Ʈ �����Դϴ�.121','�׽�Ʈ �����Դϴ�.121',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (168,364,'�׽�Ʈ �����Դϴ�.122','�׽�Ʈ �����Դϴ�.122',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (169,364,'�׽�Ʈ �����Դϴ�.123','�׽�Ʈ �����Դϴ�.123',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (170,364,'�׽�Ʈ �����Դϴ�.124','�׽�Ʈ �����Դϴ�.124',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (171,364,'�׽�Ʈ �����Դϴ�.125','�׽�Ʈ �����Դϴ�.125',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (172,364,'�׽�Ʈ �����Դϴ�.126','�׽�Ʈ �����Դϴ�.126',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (173,364,'�׽�Ʈ �����Դϴ�.127','�׽�Ʈ �����Դϴ�.127',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (174,364,'�׽�Ʈ �����Դϴ�.128','�׽�Ʈ �����Դϴ�.128',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (175,364,'�׽�Ʈ �����Դϴ�.129','�׽�Ʈ �����Դϴ�.129',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (176,364,'�׽�Ʈ �����Դϴ�.130','�׽�Ʈ �����Դϴ�.130',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (177,364,'�׽�Ʈ �����Դϴ�.131','�׽�Ʈ �����Դϴ�.131',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (178,364,'�׽�Ʈ �����Դϴ�.132','�׽�Ʈ �����Դϴ�.132',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (179,364,'�׽�Ʈ �����Դϴ�.133','�׽�Ʈ �����Դϴ�.133',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (180,364,'�׽�Ʈ �����Դϴ�.134','�׽�Ʈ �����Դϴ�.134',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (181,364,'�׽�Ʈ �����Դϴ�.135','�׽�Ʈ �����Դϴ�.135',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (182,364,'�׽�Ʈ �����Դϴ�.136','�׽�Ʈ �����Դϴ�.136',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (183,364,'�׽�Ʈ �����Դϴ�.137','�׽�Ʈ �����Դϴ�.137',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (184,364,'�׽�Ʈ �����Դϴ�.138','�׽�Ʈ �����Դϴ�.138',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (185,364,'�׽�Ʈ �����Դϴ�.139','�׽�Ʈ �����Դϴ�.139',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (186,364,'�׽�Ʈ �����Դϴ�.140','�׽�Ʈ �����Դϴ�.140',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (187,364,'�׽�Ʈ �����Դϴ�.141','�׽�Ʈ �����Դϴ�.141',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (188,364,'�׽�Ʈ �����Դϴ�.142','�׽�Ʈ �����Դϴ�.142',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (189,364,'�׽�Ʈ �����Դϴ�.143','�׽�Ʈ �����Դϴ�.143',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (190,364,'�׽�Ʈ �����Դϴ�.144','�׽�Ʈ �����Դϴ�.144',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (191,364,'�׽�Ʈ �����Դϴ�.145','�׽�Ʈ �����Դϴ�.145',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (192,364,'�׽�Ʈ �����Դϴ�.146','�׽�Ʈ �����Դϴ�.146',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (193,364,'�׽�Ʈ �����Դϴ�.147','�׽�Ʈ �����Դϴ�.147',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (194,364,'�׽�Ʈ �����Դϴ�.148','�׽�Ʈ �����Դϴ�.148',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (195,364,'�׽�Ʈ �����Դϴ�.149','�׽�Ʈ �����Դϴ�.149',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (196,364,'�׽�Ʈ �����Դϴ�.150','�׽�Ʈ �����Դϴ�.150',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (197,364,'�׽�Ʈ �����Դϴ�.151','�׽�Ʈ �����Դϴ�.151',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (198,364,'�׽�Ʈ �����Դϴ�.152','�׽�Ʈ �����Դϴ�.152',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (199,364,'�׽�Ʈ �����Դϴ�.153','�׽�Ʈ �����Դϴ�.153',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (200,364,'�׽�Ʈ �����Դϴ�.154','�׽�Ʈ �����Դϴ�.154',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (201,364,'�׽�Ʈ �����Դϴ�.155','�׽�Ʈ �����Դϴ�.155',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (202,364,'�׽�Ʈ �����Դϴ�.156','�׽�Ʈ �����Դϴ�.156',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (203,364,'�׽�Ʈ �����Դϴ�.157','�׽�Ʈ �����Դϴ�.157',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (204,364,'�׽�Ʈ �����Դϴ�.158','�׽�Ʈ �����Դϴ�.158',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (205,364,'�׽�Ʈ �����Դϴ�.159','�׽�Ʈ �����Դϴ�.159',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (206,364,'�׽�Ʈ �����Դϴ�.160','�׽�Ʈ �����Դϴ�.160',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (207,364,'�׽�Ʈ �����Դϴ�.161','�׽�Ʈ �����Դϴ�.161',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (208,364,'�׽�Ʈ �����Դϴ�.162','�׽�Ʈ �����Դϴ�.162',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (209,364,'�׽�Ʈ �����Դϴ�.163','�׽�Ʈ �����Դϴ�.163',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (210,364,'�׽�Ʈ �����Դϴ�.164','�׽�Ʈ �����Դϴ�.164',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (211,364,'�׽�Ʈ �����Դϴ�.165','�׽�Ʈ �����Դϴ�.165',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (212,364,'�׽�Ʈ �����Դϴ�.166','�׽�Ʈ �����Դϴ�.166',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (213,364,'�׽�Ʈ �����Դϴ�.167','�׽�Ʈ �����Դϴ�.167',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (214,364,'�׽�Ʈ �����Դϴ�.168','�׽�Ʈ �����Դϴ�.168',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (215,364,'�׽�Ʈ �����Դϴ�.169','�׽�Ʈ �����Դϴ�.169',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (216,364,'�׽�Ʈ �����Դϴ�.170','�׽�Ʈ �����Դϴ�.170',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (217,364,'�׽�Ʈ �����Դϴ�.171','�׽�Ʈ �����Դϴ�.171',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (218,364,'�׽�Ʈ �����Դϴ�.172','�׽�Ʈ �����Դϴ�.172',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (219,364,'�׽�Ʈ �����Դϴ�.173','�׽�Ʈ �����Դϴ�.173',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (220,364,'�׽�Ʈ �����Դϴ�.174','�׽�Ʈ �����Դϴ�.174',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (221,364,'�׽�Ʈ �����Դϴ�.175','�׽�Ʈ �����Դϴ�.175',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (222,364,'�׽�Ʈ �����Դϴ�.176','�׽�Ʈ �����Դϴ�.176',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (223,364,'�׽�Ʈ �����Դϴ�.177','�׽�Ʈ �����Դϴ�.177',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (224,364,'�׽�Ʈ �����Դϴ�.178','�׽�Ʈ �����Դϴ�.178',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (225,364,'�׽�Ʈ �����Դϴ�.179','�׽�Ʈ �����Դϴ�.179',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (226,364,'�׽�Ʈ �����Դϴ�.180','�׽�Ʈ �����Դϴ�.180',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (227,364,'�׽�Ʈ �����Դϴ�.181','�׽�Ʈ �����Դϴ�.181',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (228,364,'�׽�Ʈ �����Դϴ�.182','�׽�Ʈ �����Դϴ�.182',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (229,364,'�׽�Ʈ �����Դϴ�.183','�׽�Ʈ �����Դϴ�.183',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (230,364,'�׽�Ʈ �����Դϴ�.184','�׽�Ʈ �����Դϴ�.184',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (231,364,'�׽�Ʈ �����Դϴ�.185','�׽�Ʈ �����Դϴ�.185',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (232,364,'�׽�Ʈ �����Դϴ�.186','�׽�Ʈ �����Դϴ�.186',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (233,364,'�׽�Ʈ �����Դϴ�.187','�׽�Ʈ �����Դϴ�.187',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (234,364,'�׽�Ʈ �����Դϴ�.188','�׽�Ʈ �����Դϴ�.188',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (235,364,'�׽�Ʈ �����Դϴ�.189','�׽�Ʈ �����Դϴ�.189',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (236,364,'�׽�Ʈ �����Դϴ�.190','�׽�Ʈ �����Դϴ�.190',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (237,364,'�׽�Ʈ �����Դϴ�.191','�׽�Ʈ �����Դϴ�.191',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (238,364,'�׽�Ʈ �����Դϴ�.192','�׽�Ʈ �����Դϴ�.192',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (239,364,'�׽�Ʈ �����Դϴ�.193','�׽�Ʈ �����Դϴ�.193',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (240,364,'�׽�Ʈ �����Դϴ�.194','�׽�Ʈ �����Դϴ�.194',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (241,364,'�׽�Ʈ �����Դϴ�.195','�׽�Ʈ �����Դϴ�.195',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (242,364,'�׽�Ʈ �����Դϴ�.196','�׽�Ʈ �����Դϴ�.196',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (243,364,'�׽�Ʈ �����Դϴ�.197','�׽�Ʈ �����Դϴ�.197',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (244,364,'�׽�Ʈ �����Դϴ�.198','�׽�Ʈ �����Դϴ�.198',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (245,364,'�׽�Ʈ �����Դϴ�.199','�׽�Ʈ �����Դϴ�.199',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (246,364,'[������]�׽�Ʈ �����Դϴ�.1','�׽�Ʈ �����Դϴ�.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (247,364,'[������]�׽�Ʈ �����Դϴ�.2','�׽�Ʈ �����Դϴ�.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (248,364,'[������]�׽�Ʈ �����Դϴ�.3','�׽�Ʈ �����Դϴ�.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (249,364,'[������]�׽�Ʈ �����Դϴ�.4','�׽�Ʈ �����Դϴ�.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (250,364,'[������]�׽�Ʈ �����Դϴ�.5','�׽�Ʈ �����Դϴ�.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (252,364,'[������]�׽�Ʈ �����Դϴ�.7','�׽�Ʈ �����Դϴ�.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (253,364,'[������]�׽�Ʈ �����Դϴ�.8','�׽�Ʈ �����Դϴ�.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (254,364,'[������]�׽�Ʈ �����Դϴ�.9','�׽�Ʈ �����Դϴ�.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (255,364,'[������]�׽�Ʈ �����Դϴ�.10','�׽�Ʈ �����Դϴ�.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (256,364,'[������]�׽�Ʈ �����Դϴ�.11','�׽�Ʈ �����Դϴ�.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (257,364,'[������]�׽�Ʈ �����Դϴ�.12','�׽�Ʈ �����Դϴ�.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (258,364,'[������]�׽�Ʈ �����Դϴ�.13','�׽�Ʈ �����Դϴ�.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (259,364,'[������]�׽�Ʈ �����Դϴ�.14','�׽�Ʈ �����Դϴ�.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (260,364,'[������]�׽�Ʈ �����Դϴ�.15','�׽�Ʈ �����Դϴ�.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (261,364,'[������]�׽�Ʈ �����Դϴ�.16','�׽�Ʈ �����Դϴ�.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (262,364,'[������]�׽�Ʈ �����Դϴ�.17','�׽�Ʈ �����Դϴ�.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (263,364,'[������]�׽�Ʈ �����Դϴ�.18','�׽�Ʈ �����Դϴ�.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (264,364,'[������]�׽�Ʈ �����Դϴ�.19','�׽�Ʈ �����Դϴ�.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (265,364,'[������]�׽�Ʈ �����Դϴ�.20','�׽�Ʈ �����Դϴ�.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (266,364,'[������]�׽�Ʈ �����Դϴ�.21','�׽�Ʈ �����Դϴ�.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (267,364,'[������]�׽�Ʈ �����Դϴ�.22','�׽�Ʈ �����Դϴ�.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (268,364,'[������]�׽�Ʈ �����Դϴ�.23','�׽�Ʈ �����Դϴ�.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (269,364,'[������]�׽�Ʈ �����Դϴ�.24','�׽�Ʈ �����Դϴ�.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (270,364,'[������]�׽�Ʈ �����Դϴ�.25','�׽�Ʈ �����Դϴ�.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (271,364,'[������]�׽�Ʈ �����Դϴ�.26','�׽�Ʈ �����Դϴ�.26',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (272,364,'[������]�׽�Ʈ �����Դϴ�.27','�׽�Ʈ �����Դϴ�.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (273,364,'[������]�׽�Ʈ �����Դϴ�.28','�׽�Ʈ �����Դϴ�.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (274,364,'[������]�׽�Ʈ �����Դϴ�.29','�׽�Ʈ �����Դϴ�.29',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (275,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.1','�׽�Ʈ �����Դϴ�.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (276,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.2','�׽�Ʈ �����Դϴ�.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (277,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.3','�׽�Ʈ �����Դϴ�.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (278,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.4','�׽�Ʈ �����Դϴ�.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (279,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.5','�׽�Ʈ �����Դϴ�.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (280,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.6','�׽�Ʈ �����Դϴ�.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (281,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.7','�׽�Ʈ �����Դϴ�.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (282,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.8','�׽�Ʈ �����Դϴ�.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (283,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.9','�׽�Ʈ �����Դϴ�.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (284,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.10','�׽�Ʈ �����Դϴ�.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (285,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.11','�׽�Ʈ �����Դϴ�.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (286,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.12','�׽�Ʈ �����Դϴ�.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (287,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.13','�׽�Ʈ �����Դϴ�.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (288,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.14','�׽�Ʈ �����Դϴ�.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (289,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.15','�׽�Ʈ �����Դϴ�.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (290,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.16','�׽�Ʈ �����Դϴ�.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (291,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.17','�׽�Ʈ �����Դϴ�.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (292,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.18','�׽�Ʈ �����Դϴ�.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (293,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.19','�׽�Ʈ �����Դϴ�.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (294,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.20','�׽�Ʈ �����Դϴ�.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (295,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.21','�׽�Ʈ �����Դϴ�.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (296,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.22','�׽�Ʈ �����Դϴ�.22',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (297,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.23','�׽�Ʈ �����Դϴ�.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (298,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.24','�׽�Ʈ �����Դϴ�.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (299,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.25','�׽�Ʈ �����Դϴ�.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (300,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.26','�׽�Ʈ �����Դϴ�.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (301,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.27','�׽�Ʈ �����Դϴ�.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (302,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.28','�׽�Ʈ �����Դϴ�.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (303,364,'[�ҽ�/����]�׽�Ʈ �����Դϴ�.29','�׽�Ʈ �����Դϴ�.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (304,364,'[ȫ��]�׽�Ʈ �����Դϴ�.1','�׽�Ʈ �����Դϴ�.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (305,364,'[ȫ��]�׽�Ʈ �����Դϴ�.2','�׽�Ʈ �����Դϴ�.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (306,364,'[ȫ��]�׽�Ʈ �����Դϴ�.3','�׽�Ʈ �����Դϴ�.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (307,364,'[ȫ��]�׽�Ʈ �����Դϴ�.4','�׽�Ʈ �����Դϴ�.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (308,364,'[ȫ��]�׽�Ʈ �����Դϴ�.5','�׽�Ʈ �����Դϴ�.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (309,364,'[ȫ��]�׽�Ʈ �����Դϴ�.6','�׽�Ʈ �����Դϴ�.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (310,364,'[ȫ��]�׽�Ʈ �����Դϴ�.7','�׽�Ʈ �����Դϴ�.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (312,364,'[ȫ��]�׽�Ʈ �����Դϴ�.9','�׽�Ʈ �����Դϴ�.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (313,364,'[ȫ��]�׽�Ʈ �����Դϴ�.10','�׽�Ʈ �����Դϴ�.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (314,364,'[ȫ��]�׽�Ʈ �����Դϴ�.11','�׽�Ʈ �����Դϴ�.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (315,364,'[ȫ��]�׽�Ʈ �����Դϴ�.12','�׽�Ʈ �����Դϴ�.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (316,364,'[ȫ��]�׽�Ʈ �����Դϴ�.13','�׽�Ʈ �����Դϴ�.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (317,364,'[ȫ��]�׽�Ʈ �����Դϴ�.14','�׽�Ʈ �����Դϴ�.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (318,364,'[ȫ��]�׽�Ʈ �����Դϴ�.15','�׽�Ʈ �����Դϴ�.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (319,364,'[ȫ��]�׽�Ʈ �����Դϴ�.16','�׽�Ʈ �����Դϴ�.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (320,364,'[ȫ��]�׽�Ʈ �����Դϴ�.17','�׽�Ʈ �����Դϴ�.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (321,364,'[ȫ��]�׽�Ʈ �����Դϴ�.18','�׽�Ʈ �����Դϴ�.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (322,364,'[ȫ��]�׽�Ʈ �����Դϴ�.19','�׽�Ʈ �����Դϴ�.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (323,364,'[ȫ��]�׽�Ʈ �����Դϴ�.20','�׽�Ʈ �����Դϴ�.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (324,364,'[ȫ��]�׽�Ʈ �����Դϴ�.21','�׽�Ʈ �����Դϴ�.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (325,364,'[ȫ��]�׽�Ʈ �����Դϴ�.22','�׽�Ʈ �����Դϴ�.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (326,364,'[ȫ��]�׽�Ʈ �����Դϴ�.23','�׽�Ʈ �����Դϴ�.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (327,364,'[ȫ��]�׽�Ʈ �����Դϴ�.24','�׽�Ʈ �����Դϴ�.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (328,364,'[ȫ��]�׽�Ʈ �����Դϴ�.25','�׽�Ʈ �����Դϴ�.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (329,364,'[ȫ��]�׽�Ʈ �����Դϴ�.26','�׽�Ʈ �����Դϴ�.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (330,364,'[ȫ��]�׽�Ʈ �����Դϴ�.27','�׽�Ʈ �����Դϴ�.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (331,364,'[ȫ��]�׽�Ʈ �����Դϴ�.28','�׽�Ʈ �����Դϴ�.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (332,364,'[ȫ��]�׽�Ʈ �����Դϴ�.29','�׽�Ʈ �����Դϴ�.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (333,364,'[����]�׽�Ʈ �����Դϴ�.1','�׽�Ʈ �����Դϴ�.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (334,364,'[����]�׽�Ʈ �����Դϴ�.2','�׽�Ʈ �����Դϴ�.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (335,364,'[����]�׽�Ʈ �����Դϴ�.3','�׽�Ʈ �����Դϴ�.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (336,364,'[����]�׽�Ʈ �����Դϴ�.4','�׽�Ʈ �����Դϴ�.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (337,364,'[����]�׽�Ʈ �����Դϴ�.5','�׽�Ʈ �����Դϴ�.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (338,364,'[����]�׽�Ʈ �����Դϴ�.6','�׽�Ʈ �����Դϴ�.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (339,364,'[����]�׽�Ʈ �����Դϴ�.7','�׽�Ʈ �����Դϴ�.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (340,364,'[����]�׽�Ʈ �����Դϴ�.8','�׽�Ʈ �����Դϴ�.8',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (341,364,'[����]�׽�Ʈ �����Դϴ�.9','�׽�Ʈ �����Դϴ�.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (342,364,'[����]�׽�Ʈ �����Դϴ�.10','�׽�Ʈ �����Դϴ�.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (343,364,'[����]�׽�Ʈ �����Դϴ�.11','�׽�Ʈ �����Դϴ�.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (344,364,'[����]�׽�Ʈ �����Դϴ�.12','�׽�Ʈ �����Դϴ�.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (345,364,'[����]�׽�Ʈ �����Դϴ�.13','�׽�Ʈ �����Դϴ�.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (346,364,'[����]�׽�Ʈ �����Դϴ�.14','�׽�Ʈ �����Դϴ�.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (347,364,'[����]�׽�Ʈ �����Դϴ�.15','�׽�Ʈ �����Դϴ�.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (348,364,'[����]�׽�Ʈ �����Դϴ�.16','�׽�Ʈ �����Դϴ�.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (349,364,'[����]�׽�Ʈ �����Դϴ�.17','�׽�Ʈ �����Դϴ�.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (350,364,'[����]�׽�Ʈ �����Դϴ�.18','�׽�Ʈ �����Դϴ�.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (351,364,'[����]�׽�Ʈ �����Դϴ�.19','�׽�Ʈ �����Դϴ�.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (352,364,'[����]�׽�Ʈ �����Դϴ�.20','�׽�Ʈ �����Դϴ�.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (353,364,'[����]�׽�Ʈ �����Դϴ�.21','�׽�Ʈ �����Դϴ�.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (354,364,'[����]�׽�Ʈ �����Դϴ�.22','�׽�Ʈ �����Դϴ�.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (355,364,'[����]�׽�Ʈ �����Դϴ�.23','�׽�Ʈ �����Դϴ�.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (356,364,'[����]�׽�Ʈ �����Դϴ�.24','�׽�Ʈ �����Դϴ�.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (357,364,'[����]�׽�Ʈ �����Դϴ�.25','�׽�Ʈ �����Դϴ�.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (358,364,'[����]�׽�Ʈ �����Դϴ�.26','�׽�Ʈ �����Դϴ�.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (359,364,'[����]�׽�Ʈ �����Դϴ�.27','�׽�Ʈ �����Դϴ�.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (360,364,'[����]�׽�Ʈ �����Դϴ�.28','�׽�Ʈ �����Դϴ�.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (361,364,'[����]�׽�Ʈ �����Դϴ�.29','�׽�Ʈ �����Դϴ�.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (362,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.1','�׽�Ʈ �����Դϴ�.1',null,null,null,null,null,null,null,null,null,null,3,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (363,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.2','�׽�Ʈ �����Դϴ�.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (364,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.3','�׽�Ʈ �����Դϴ�.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (365,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.4','�׽�Ʈ �����Դϴ�.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (366,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.5','�׽�Ʈ �����Դϴ�.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (367,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.6','�׽�Ʈ �����Դϴ�.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (368,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.7','�׽�Ʈ �����Դϴ�.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (369,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.8','�׽�Ʈ �����Դϴ�.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (370,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.9','�׽�Ʈ �����Դϴ�.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (371,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.10','�׽�Ʈ �����Դϴ�.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (372,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.11','�׽�Ʈ �����Դϴ�.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (373,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.12','�׽�Ʈ �����Դϴ�.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (375,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.14','�׽�Ʈ �����Դϴ�.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (376,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.15','�׽�Ʈ �����Դϴ�.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (379,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.18','�׽�Ʈ �����Դϴ�.18',null,null,null,null,null,null,null,null,null,null,24,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (380,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.19','�׽�Ʈ �����Դϴ�.19',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (381,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.20','�׽�Ʈ �����Դϴ�.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (382,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.21','�׽�Ʈ �����Դϴ�.21',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (383,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.22','�׽�Ʈ �����Դϴ�.22',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (384,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.23','�׽�Ʈ �����Դϴ�.23',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (385,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.24','�׽�Ʈ �����Դϴ�.24',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (386,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.25','�׽�Ʈ �����Դϴ�.25',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (387,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.26','�׽�Ʈ �����Դϴ�.26',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (388,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.27','�׽�Ʈ �����Դϴ�.27',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (389,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.28','�׽�Ʈ �����Դϴ�.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (390,364,'[��Ÿ]�׽�Ʈ �����Դϴ�.29','�׽�Ʈ �����Դϴ�.29',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (398,385,'[������]sdf','sdf','0.jpg','ȭ�� ĸó 2021-09-06 121634.png','ȭ�� ĸó 2021-09-06 121721.png',null,null,'a6cbff94.jpg','ef50bcbf.png','52402083.png',null,null,1,3,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (400,385,'[������]asd','asd','ȭ�� ĸó 2021-10-05 100529.png',null,null,null,null,'a6b758be.png',null,null,null,null,2,1,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (401,385,'[������]÷�� ���� ��?','���� ÷�� ����',null,null,null,null,null,null,null,null,null,null,4,0,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (402,385,'[������]�������� ��������','�������� ��������',null,null,null,null,null,null,null,null,null,null,15,0,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (417,385,'[������]�ٰ���','�ٰ��� �׽�Ʈ�Դϴ�.
��������
<script>alert(''test'');</script>',null,null,null,null,null,null,null,null,null,null,22,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (418,512,'[������] �����Խ���','�����K',null,null,null,null,null,null,null,null,null,null,8,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (419,512,'[������]���̵����� ������','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel quam enim. Aliquam facilisis magna magna, id aliquam magna pellentesque vel. Aenean dignissim lectus purus, nec suscipit augue sagittis vitae. Ut purus urna, faucibus id efficitur a, aliquet sed mauris. Morbi sed turpis feugiat, porttitor arcu non, consequat ipsum. Fusce molestie maximus purus, ut tristique justo bibendum dictum. Nullam tincidunt felis ligula, et accumsan nisi feugiat at. Nam ex dolor, dapibus id scelerisque vitae, sagittis in felis. Donec mi tortor, auctor quis magna quis, tempor venenatis lectus.','basic.jpg',null,null,null,null,'20732e58.jpg',null,null,null,null,8,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (420,423,'[����] �Ե� �� ���̾�Ʈ �����߾��','������ �ʹ� �̻����� �� �̻�����?
��ź���� �߽��ϴ�','����.png',null,null,null,null,'5b28e728.png',null,null,null,null,17,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (412,391,'[�ҽ�/����]���� �׽�Ʈ',' <c:forEach var="page" begin="${pc.beginPage }" end="${pc.endPage }">
',null,null,null,null,null,null,null,null,null,null,29,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (421,423,'[����] ���̾�Ʈ ���� ���� ���� �մϴ�','�׳��̿��� �������� �ƾ��
�峭�ƴ���?
�ܹ��� �� ì�ܸ԰� �ٷ� � ���ַ� �߾��','�����.jpg','�����2.jpg','�����3.jpg','�����4.jpg',null,'9f5e4b8d.jpg','92e4217a.jpg','8a1a2e44.jpg','efbe826a.jpg',null,35,4,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (422,410,'[ȫ��][�ｺ��ǰ������] �������԰�!�׸��е� 1���� �߰� ���� 10�� 13�ϱ��� ���ݿ���!! �︰�� ��â�� ������ �ｺ�׸�!������ �ｺ�尩 ������?','��

���ݱ����� �ｺ�尩,�ｺ�� �׸��� �ؾ��ּ���.

Ư����� �Ű�� �׸��е� ���� ������ �Ϸ�Ǿ����ϴ�.

?

������ �԰�Ϸ�!!

?

�︰��,������,��â��,��,�� �������Գ� ������ ��ǰ�Դϴ�.

?

���� 10��!!������ ����ȭ�� �ｺ�׸�

 10�� 13�ϱ��� 1���� ���ε� �������� ����������.

?

���� 38,900��===>�԰��� ���� 29,800��

2���̻� ���Ž� �߰�����

?

���� ����� �� ��� ���� ���ϰ� �׸��� ¯¯�մϴ�.

?

�ｺ�尩,������ �׸�� ���������� ���� �԰�� �����Դϴ�.

������ �߱��� ��ǰ�� �ٸ� ǰ���� ������ ��ǰ�̴� 

���� �׸��ɼ� �ְ� ���� ���� ���� �ֽñ� �ٶ��ϴ�.
[��ó] �������԰�!�׸��е� 1���� �߰� ���� 10�� 13�ϱ��� ���ݿ���!! �︰�� ��â�� ������ �ｺ�׸�!������ �ｺ�尩 ������?�̱����ļ��� �Ű��� �ｺ�׸�. (�ｺ�ŴϾ�  ��¯ Ŭ��/�ｺ������ ����/���̾�Ʈ/�ʺ����) | �ۼ��� �ľ�','�׸��е�_06���빮.jpg',null,null,null,null,'d6d912ee.jpg',null,null,null,null,6,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (423,410,'[ȫ��][��ġŻ����̳�] �ð��� ��ġŻ��!5�� �ź��ȭ�� �ｺ�ŴϾ� ���̳� ���� ����� ���� �̺�Ʈ ���ݿ��� 10�� 13�ϱ��� 4kg��뷮 59,800��','�ð��� ���� ����µ� ���� ��ġ?



���ص� ��ġ�� �������?? ���ش� Ż������.

�ｺ�ŴϾ� ���̳ʷ� ��ġ!!��� �Ǿ����.





���ݸ� ���� ���ð� ���ܹ��� �� �ʼ�!

100%��û�ܹ� WPI+WPH��� ��ǰ!

��δܹ��� �Է� 0%



10�� 13�ϱ��� ���ݿ���!!

��������+10������=����� ��������!!

�ｺ�ŴϾ� ����ƾ�� �������� �ɰ��� ��¥ ���̳�.


5�� � ź��ȭ�� ���䵦��Ʈ��NO!/�����Լ� ������NO!
WPI+WPH��� ��ǰ

���� �ܹ����� �ݵ�� ���� ������.��δܹ��� �Է� "0"%

����/���� �� ���� ������.

���� ���� ������� ���ް��� �������� �񱳵��ȵ˴ϴ�.


���� ���� ��ǰ�Դϴ�.���� ���̳��� ������ ž.!!


[��ó] �ð��� ��ġŻ��!5�� �ź��ȭ�� �ｺ�ŴϾ� ���̳� ���� ����� ���� �̺�Ʈ ���ݿ��� 10�� 13�ϱ��� 4kg��뷮 59,800�� (�ｺ�ŴϾ� ��¯ Ŭ��/�ｺ������ ����/���̾�Ʈ/�ʺ����) | �ۼ��� �ľ�','�۾�İ��̳�_0331.jpg',null,null,null,null,'80491e8e.jpg',null,null,null,null,4,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (424,410,'[ȫ��] [BCAA 1���� ����]  BCAA 500g 28.900�� ���ִ� �������� ���׷��̵� ��ñ�� 53%���� �������� 10�� 13�ϱ���!','���׷��̵� �� �ｺ�ŴϾ� �񾾿��̿��� ���� ���!

?

���а˻� �Ϸ�!

���в� ���� ���ð� ���� �̿� ��Ź �帳�ϴ�.

?

���ִ� BCAA�� �����ı� ������� ������ ������.


?

�������� 10��13�ϱ��� 53%����

28,900�� 2���̻� �ֹ��� �߰����� �˴ϴ�.^^

?','bc.png',null,null,null,null,'7331f054.png',null,null,null,null,9,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (425,410,'[ȫ��][WPH��Ư���̺�Ʈ] 10���������� 30% ���� 72,800�� �����ı� ������ WPH-1 ��뷮 3kg 100���� 10�� 13�ϱ��� ���� ���� �߰�����!','������ ���ѹα�!!


������� ���� 10���� ���۵Ǿ����ϴ�.

����� ���Ѵٸ� �÷���!!



��ϱ� ���� ���� ������ ���� 10��.

���ڴ� ������ �⸧�� �ξ��� 100% WPH �����ǰ



�������ְ� WPH-1 3kg 100ȸ��



Ÿ����ǰ ó�� 2kg NO!!.. 3kg 100ȸ�� ���ݺ� �ʼ�




10�� 13�ϱ��� ��������!!

ī��������� �ִ� �Ǹ� ��ǰ���� ������ ������ ��ǰ���� �ø�
������ �ְ� ��ǰ�Դϴ�.ī���ִ� �ǸŻ�ǰ


���̻� ���ü� ���� �İ����� ������ �Դϴ�.

�ľ�ó��ϿϷ�,������� �Ϸ�

���� �������� WPH ��ǰ�� ���ݺ� �ʼ�!!
','wph.jfif',null,null,null,null,'4de1d3df.jfif',null,null,null,null,13,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (426,392,'[������] ���ᳯ�� 4�� ���Ҿ�� �ð� ¯ ������','����',null,null,null,null,null,null,null,null,null,null,9,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (427,415,'[����] ���� ������ ���� ����','�뷡�� �� �θ��� ����
�� �컩��','���ϸ�.jfif',null,null,null,null,'1354c558.jfif',null,null,null,null,8,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (428,415,'[����] ���̾�Ʈ �����ϴ� �� �˷��帲 (���������� ���� �־��)','��ü ���� �Ͻø� �˴ϴ�','������.jfif',null,null,null,null,'a6ffa85c.jfif',null,null,null,null,14,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (429,393,'[������] ���� �ǳ� ����°���? ','�Ĵ� �Ͻô� �е� ��� ��� �����ô���.. ����',null,null,null,null,null,null,null,null,null,null,24,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (430,435,'[ȫ��] BCAA ȿ����, BCAA ��ǰ ��õ','1. �����ٵ� BCAA - �Ƹ� ���� ������ BCAA�� �ƴұ� �ͽ��ϴ�. �ٸ� BCAA�� ���� �Ǹ��� �� �������� ��Ͻô� �е��̶�� �� �ƴ� Xtend���� BCAA! ���� �Ծ ���� ��� ����������� ���� ���־����ϴ�.. �������� ���ִٰ� �ϴ�����~

������(���� ��Ʈ)���� 2.18 lbs( �� 1kg ), 54,000���� 


2. ��������ƾ BCAA ( 2:1:1 ) - ������δ� �ְ��� ��������ƾ���� BCAA�Դϴ�. ����� ���� �� ��ǰ�� �԰� �ֽ��ϴ�. �Դٰ� ü���� �� �ȵż� �����ٰ�, �ٽ� ������ ü���� Ȯ���� �Ǵ°� �����󱸿�! ���ſ���� �𸣰����� �̷� �ɸ����� �κе� ���� ���������� �����ϱ� ������ ����� ������ ��ġ�� �ִٰ� �����մϴ� ����! ��������ƾ bcaa���� �˾� ���µ� �ְ� �и��� �µ� ������ �и����� �������� �Ұ��ص帮�ڽ��ϴ�! ���� �Ծ� �� �����δ� ����, ���͸��, �����ֽ�, ��׷��� ���� �Ծ�ôµ���.. �� �ְ����� �� ������ �����ֽ�> ���͸��> ����>>>>��׷����Դϴ�. �����ֽ��� ���� �����̵�� ����ϰ�, ���͸�е� ����ϴ� ���ֽ��ϴ�. ������ �ʹ� �޾Ұ� ��׷��̴� �� ��׷��� ���� �ƴ϶� �׳� ���ؼ� �� ���Ƚ��ϴ�..

��������ƾ �ڸ��ƿ��� 1kg�� 57,900�������� �׽� �ϴ� ���ϰ� ������ �ִ� ���� ���θ������ �ΰ� ��� 3�� �� �ʹݴ� ���ص� 3���� �Ĺݴ뿡 ���Ű� �����մϴ�. ������� ���� �ְ��Դϴ�.

','BCAA��������_03��5��.jpg',null,null,null,null,'aea82b71.jpg',null,null,null,null,26,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (432,386,'[������]','�г��Ӻ����׽�Ʈ
������','site01.jpg','site02.jpg','site03.jpg',null,null,'3d81dffb.jpg','a49c2293.jpg','5e07f75f.jpg',null,null,40,3,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (438,385,'[������]2222','2222','site02.jpg',null,null,null,null,'527c11c2.jpg',null,null,null,null,15,1,to_date('21/10/05','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.FREELIKELY
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREELIKELY (FBNUM,MEMBERNUM) values (430,435);
Insert into SPRINGWEFIT.FREELIKELY (FBNUM,MEMBERNUM) values (418,435);
REM INSERTING into SPRINGWEFIT.FREEREPLY
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (1,377,'�׽�Ʈ ����Դϴ�. 1',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (2,377,'�׽�Ʈ ����Դϴ�. 2',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (3,377,'���� �׽�Ʈ�Դϴ�.',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (4,377,'�׽�Ʈ ����Դϴ�. 4',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (5,377,'�׽�Ʈ ����Դϴ�. 5',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (6,377,'�׽�Ʈ ����Դϴ�. 6',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (7,377,'�׽�Ʈ ����Դϴ�. 7',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (8,377,'�׽�Ʈ ����Դϴ�. 8',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (9,377,'�׽�Ʈ ����Դϴ�. 9',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (10,377,'�׽�Ʈ ����Դϴ�. 10',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (11,377,'�׽�Ʈ ����Դϴ�. 11',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (12,377,'�׽�Ʈ ����Դϴ�. 12',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (13,377,'�׽�Ʈ ����Դϴ�. 13',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (14,377,'�׽�Ʈ ����Դϴ�. 14',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (15,377,'�׽�Ʈ ����Դϴ�. 15',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (16,377,'�׽�Ʈ ����Դϴ�. 16',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (17,377,'�׽�Ʈ ����Դϴ�. 17',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (18,377,'�׽�Ʈ ����Դϴ�. 18',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (19,377,'�׽�Ʈ ����Դϴ�. 19',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (20,377,'�׽�Ʈ ����Դϴ�. 20',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (21,377,'�׽�Ʈ ����Դϴ�. 21',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (22,377,'�׽�Ʈ ����Դϴ�. 22',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (23,377,'�׽�Ʈ ����Դϴ�. 23',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (24,377,'�׽�Ʈ ����Դϴ�. 24',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (25,377,'�׽�Ʈ ����Դϴ�. 25',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (26,377,'�׽�Ʈ ����Դϴ�. 26',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (27,377,'�׽�Ʈ ����Դϴ�. 27',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (136,378,'������',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (29,377,'�׽�Ʈ ����Դϴ�. 29',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (137,378,'������',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (150,415,'������',385,to_date('21/10/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (151,415,'������',385,to_date('21/10/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (152,415,'������',385,to_date('21/10/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (153,412,'zzzz',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (154,428,'1��������� �󸶿���?',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (155,428,'�� ���� ����',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (156,425,'�� ������ �������',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (165,432,'ds',385,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (158,428,'�� ������ ������ ������? ������ ���˾ƺ��� ����������',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (159,429,'���� �ǳ� ����Ŀ�',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (160,430,'��... ���Ϳ��� ����ǰ���� �̺�Ʈ �������� ���ھ��',492,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (163,431,'<script>alert(''test'');</script>',385,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (167,438,'ȣ',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (166,432,'dfdf',514,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (170,438,'gkgk',385,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (169,438,'2',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (132,396,'cccc',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (130,396,'zzzz',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (131,396,'xxxx',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (133,378,'����',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (134,378,'������',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (135,378,'������',365,to_date('21/09/28','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.FREEREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (408,385);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (396,385);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (403,385);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (408,391);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (47,385);
REM INSERTING into SPRINGWEFIT.MARKETBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (41,385,'sell','�׽��ѤĤ���',6000,'��','basic.jpg','hobak.jpg','jebi.jpg','sky.jpg',null,null,null,null,null,null,'7ae2c177.jpg','dc8e9117.jpg','66842111.jpg','3f5465b0.jpg',null,null,null,null,null,null,'���� ������ ���̷� ���� 90',37.555442,126.936119,19,4,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (42,397,'sell','qwer',123,'qwer',null,'sky.jpg','sunflower.jpg','tulip.jpg',null,null,null,null,null,null,'0df5b068.jpg','56529eb8.jpg','874e1e8d.jpg','c8d8cb2f.jpg',null,null,null,null,null,null,'���� ���Ǳ� �����뿪3�� 3',37.476316,126.961871,4,4,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (43,385,'buy','�׸� ������ �Ⱦƿ� ���� ��������',1000000,'���� ���� ����',null,null,null,null,null,null,null,null,null,null,'07b8356b.jfif',null,null,null,null,null,null,null,null,null,'���� ������ ���̷� 6',37.558338,126.926837,31,1,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (44,397,'sell','sttesttesttesttesttes',3000,'������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������','item01.png','item02.png','item03.png','side03.png','side04.png',null,null,null,null,null,'82dd8e8b.png','e35a4d68.png','d52e1b91.png','eb6e9864.png','ce437617.png',null,null,null,null,null,'���� ���Ǳ� �����뿪�� 8',37.4772,126.961985,44,3,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (47,397,'buy','�߱���ǰ �˴ϴ�',3000,null,null,'baseball-gd53e62220_1920.jpg',null,null,null,null,null,null,null,null,'8fcb8c21.jpg','84a3914d.jpg',null,null,null,null,null,null,null,null,'���� ���Ǳ� ���μ�ȯ�� 1924',37.476908,126.962878,5,2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (48,397,'sell','�౸��ǰ ��ϴ�',5000,'��ϴ�',null,null,null,null,null,null,null,null,null,null,'0482ff55.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ���μ�ȯ�� 2613',37.485049,127.035498,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (49,397,'buy','�������� �˴ϴ�',3000,'�˴ϴ� ���ؽ�',null,null,null,null,null,null,null,null,null,null,'fc58dd94.jpg',null,null,null,null,null,null,null,null,null,'���� ���Ǳ� ���μ�ȯ�� 1357',37.479694,126.901508,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (50,510,'buy','������ �˴ϴ�',30000,'������ �˴ϴ� ��Ʈ�ν�Ÿ��',null,null,null,null,null,null,null,null,null,null,'bd63aa36.png',null,null,null,null,null,null,null,null,null,'���� ���Ǳ� ���μ�ȯ�� 1500',37.482044,126.917252,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (51,510,'share','�״Ͻ�����',0,'����������',null,null,null,null,null,null,null,null,null,null,'20db4aa2.jpg',null,null,null,null,null,null,null,null,null,'���� ���α� ���μ�ȯ�� 946',37.492507,126.862033,7,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (52,510,'share','Ź��ä ������',0,'����ũ�ڵ� �׸��̿���',null,null,null,null,null,null,null,null,null,null,'b435f233.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ���μ�ȯ�� 2609',37.484963,127.035096,1,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (53,510,'buy','���� �˴ϴ�',50000,'������̽����� �Ⱦƿ�',null,null,null,null,null,null,null,null,null,null,'7b2b2c20.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ������� 238-2',37.484787,127.034571,0,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (54,510,'buy','�˴ϴ�',10000,'�˴ϴ� �׽�Ʈ',null,null,null,null,null,null,null,null,null,null,'cf0de42b.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ���μ�ȯ�� 2611',37.484989,127.035354,4,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (55,510,'sell','��� ��ϴ�',3000,'����ϴ�',null,null,null,null,null,null,null,null,null,null,'aead3a77.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ���μ�ȯ�� 2609',37.484963,127.035096,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (56,510,'buy','��ϴٷ� ������ �Ⱦƿ� �����ε�',300,'��ϴٷ� ������ �Ⱦƿ� �����ε�',null,null,null,null,null,null,null,null,null,null,'ebf00638.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ���μ�ȯ�� 2611',37.484989,127.035354,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (57,512,'share','�����ҰԿ�',0,'�������Դϴ�',null,null,null,null,null,null,null,null,null,null,'a76c7318.png',null,null,null,null,null,null,null,null,null,'���� ������ ���μ��� 5',37.518211,127.02315,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (58,512,'sell','�����Ź��˴ϴ�',5000,'������270 �̰ŽŰ� ����߾��',null,null,null,null,null,null,null,null,null,null,'93921b52.jpg',null,null,null,null,null,null,null,null,null,'���� ���Ǳ� ���μ�ȯ�� 1375',37.480108,126.903514,5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (59,512,'sell','�����Ⱦƿ�',50000,'�˴ϴ�
������ 
a2',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,'���� ���Ǳ� �����뿪�� 15',37.47674,126.961992,10,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (60,512,'sell','�����˴ϴ�',3000,'�����Ⱦƿ�
43����
',null,null,null,null,null,null,null,null,null,null,'b5f97a77.png',null,null,null,null,null,null,null,null,null,'���� ���Ǳ� �����뿪�� 27',37.476262,126.961692,14,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (61,512,'sell','�籸 ť�� �˴ϴ�',6000,'��� �Ƚ���
���ŷ���','billiard-ga6fb4e9ee_1280.png','backpack-gdfa3867d0_1280.png',null,null,null,null,null,null,null,null,'c43c529a.png','72d0b517.png',null,null,null,null,null,null,null,null,'���� ���Ǳ� �����뿪�� 37-4',37.475965,126.961681,46,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (62,428,'share','��¥�� �帳�ϴ�',0,'�Ƶ�ٽ� �ϻ轺 24cm���� 
',null,null,null,null,null,null,null,null,null,null,'ecba1901.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ��ȭ�� ���� 45',37.549123,126.913545,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (63,512,'sell','�˴ϴ�',300,'�˴ϴ��˴ϴ�',null,null,null,null,null,null,null,null,null,null,'cae6d500.jpg',null,null,null,null,null,null,null,null,null,'���� ������ ���� 105',37.55516,126.942718,77,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (78,398,'sell','�Ⱦ��� ��ⱸ �˴ϴ�.',100000,'���Դϴ�.',null,null,null,null,null,null,null,null,null,null,'4f41303e.jpg',null,null,null,null,null,null,null,null,null,'���� ������ õȣ��� ���� 997',37.538579,127.123742,22,1,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (80,397,'sell','12345',3000,'12344',null,'spain2.jpg',null,null,null,null,null,null,null,null,'293b3d04.jpg','2190485b.jpg',null,null,null,null,null,null,null,null,'���� ���Ǳ� �����뿪�� 15',37.47674,126.961992,16,2,to_date('21/10/05','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.MARKETLIKELY
SET DEFINE OFF;
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (66,435);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (63,410);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (41,385);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (63,435);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (59,492);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (63,385);
Insert into SPRINGWEFIT.MARKETLIKELY (MBNUM,MEMBERNUM) values (75,435);
REM INSERTING into SPRINGWEFIT.MARKETREPLY
SET DEFINE OFF;
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (54,75,'���������Τ̤Ѥ�����������',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (52,75,'��۴��',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (53,75,'��𤿷��������',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (55,76,'�����������ŤǤ�',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (56,76,'�����������������',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (57,78,'�������Դϴ�',398,null,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (58,78,'�Ǹ� �Ϸ�',398,null,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (60,78,'dd',385,null,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (12,41,'��������',385,null,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (17,41,'��!  �ѿ�!   6000��!  ������!',387,null,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (18,41,'�׽�Ʈ',387,null,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (19,44,'asd',385,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (20,44,'asdfasd',385,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (21,44,'sdf',385,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (22,44,'���������� ���� �Խ��ϴ�.',410,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (23,47,'��ٴ°ſ��� �Ǵٴ°ſ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (24,49,'�װ� �ǳ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (25,48,'��ٴ°ſ��� �Ǵٴ� �ſ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (26,44,'��۴��',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (27,47,'�װ�ǳ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (28,47,'�����Ǹ��ϳ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (29,48,'������ ���̿���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (30,48,'���͵� �󸶳� ��ҳ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (31,49,'����Ƚ�� ����ΰ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (32,50,'�ù谡���Ѱ���',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (33,50,'�װ�ǳ���',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (34,55,'�Ǵٴ°ſ��� ��ٴ°ſ���',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (35,55,'�װ�ǳ���',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (36,55,'���ŷ��� �ϳ���',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (37,61,'�װ�˴ϱ�? ���ձ��� �����ֽ��ϴ�',428,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (38,58,'275�ε� ����������',428,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (40,59,'���� ���� �̿���? ���� ������ �Ⱥ�����.',423,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (41,59,'���������̸� ���� �־��~',423,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (42,60,'�� ���� �̰� �����Ź��ΰ���?',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (48,59,'�����ȿø��Űź��� ��� �ƴұ��?',492,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (44,57,'�� ���Ű����� ��¥ ��������?',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (45,54,'�޸� ������ �����ּ���',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (46,54,'���� �־��',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (47,63,'�۾����� �Ľ÷�����?',509,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (50,64,'<script>alert(''test'');</script>',385,null,to_date('21/10/03','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.MARKETREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (40,385);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (37,1);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (33,385);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (34,385);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (46,385);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (35,385);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (32,385);
Insert into SPRINGWEFIT.MARKETREPORT (MBNUM,MEMBERNUM) values (31,385);
REM INSERTING into SPRINGWEFIT.MEMBER
SET DEFINE OFF;
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (1,'abc123@naver.com','pear','$2a$10$CVX5IlCmpTGuUDvRBxQpXujmgov.6DPPAwxEkoy.NgyR6UdsuPgEK','01012345678',to_date('21/09/24','RR/MM/DD'),to_date('21/09/24','RR/MM/DD'),'N',37.53105,126.907069,'Y','80882e73','NO',null,'64BB92AB7CB91FD2A0B0164BAB3AF97A',to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (385,'admin','������','$2a$10$LjQ7xElXZyMbQhvoVXUFKeAPqR1Ps9A8Poy4MjWgn6cbHuFahxLK.','01011111111',to_date('21/10/05','RR/MM/DD'),to_date('21/10/05','RR/MM/DD'),'N',37.560567,126.943349,'Y','ee0206d5','YES',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (364,'test@test.com','test','$2a$10$UD.0v9JdgYqyAQg9zXHnUOmsZFyzM0i5IYEIWt3kYWIOAJFbGbZra','123094858',to_date('21/09/17','RR/MM/DD'),to_date('21/09/17','RR/MM/DD'),'Y',null,null,'N','7a15e820','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (365,'hwanseo3747@gmail.com','hwanseo','$2a$10$YFj59qoOlaCcEIAnrxBWqeQa4Emuqi.83.OK/IyzP7D88TrtRH3c.','01092937575',to_date('21/09/25','RR/MM/DD'),to_date('21/09/25','RR/MM/DD'),'N',37.48147,126.648931,'Y','2ca9ab94','NO',null,'none',to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (2,'yeriyerimoon@gmail.com','ȫ�浵','$2a$10$2weMyRrJiocdAW.1spjTtemaEUrEkEx1piFzexYn2d78KwMtL/xJ.','01026421128',to_date('21/09/24','RR/MM/DD'),to_date('21/09/24','RR/MM/DD'),'Y',null,null,'N','d6a70ba2','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (389,'abcd1234@gmail.com','abcd','$2a$10$rD5qdOAPZ033Zh0pCICqyep8aUaunmh2z5OpPdz7/.EvrrJc9MVwi','0101111111',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','690c7884','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (386,'hwanseo3747@naver.com','�׽�Ʈ1','$2a$10$1RPvT.n37HlYaOGld5mKYOS3hSLpRNyL7pCpiRFaNXVcsxtOmVMxi','0123904857',to_date('21/09/28','RR/MM/DD'),to_date('21/09/28','RR/MM/DD'),'N',37.484536,126.641767,'Y','ecd3546c','NO',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (387,'dkssyd7358@gmail.com','���ڵ���','$2a$10$ks5EPhp6IBSeBAtU91csq.tF4TByRqHMVIKSPfuNMqCgJTysbsyG.','01011111111',to_date('21/09/29','RR/MM/DD'),to_date('21/09/29','RR/MM/DD'),'N',37.483315,126.645043,'Y','0fe0b201','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (400,'dkssyd7358@naver.com','qweqwe','$2a$10$5bAZeEw9aTwioKTtLDUpcOO1943ZdVod4nY.WZh104zuavDrynzoC','0103333333',to_date('21/10/01','RR/MM/DD'),to_date('21/10/01','RR/MM/DD'),'N',null,null,'Y','54a9b3f0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (391,'funigency@hanmail.net','hihihihi','$2a$10$Whr558vwEH577h3EKC3IyesYQcfuAaFeC5eRwUDJsp6GfhBIHsmRW','01098233272',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555571,126.932732,'Y','f80967e7','NO',null,'none',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (392,'minho117811@gmail.com','ȣ��ȣ��','$2a$10$/LsCj.IvdxXOKBz9A/GPMucqHJogdf2Y6H0eLu12iQp7tmJzyoEYO','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.5761,126.9344,'Y','53ad04db','NO',null,'none',to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (393,'magnifique1128@gmail.com','�Ƿη�','$2a$10$Oz1c2ziAvKNtablnR0AaZOUSr4o1hk2Aj8EtD81Ik2FmeB/beRz3C','0101111111',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.531046,126.907079,'Y','7920af50','NO',null,'none',to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (397,'lhj8514@daum.net','��������','$2a$10$DFduWYuNsmcj0r5y7Eulx.addyp7.VoKODB.SaqeC43AlBzMjRaDG','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.478856,126.964843,'Y','650f4b9d','NO',null,'C52FF5207BC8006E93D453A3B5025811',to_date('21/10/07','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (395,'lyj8514@naver.com','heej','$2a$10$x1TDPYigtoF95OccTB7jLuaNkTTDsBHtnLRbpPKPB5qHo.47BgM6G','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','bffba24e','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (398,'stephen4951@naver.com','�޷ո޷�','$2a$10$4GL1Pn7toTZwO75S11kRjOCPqMp6ACcJ/PMgFrizMKZhaL7Pk6S2G','01047428917',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.560567,126.943349,'Y','4e0f1350','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (401,'sally@wefit.com','����SALLY','$2a$10$cEjEWAgGqmhb5XS/qx2PZOS2KU5zs/Ll6aghkqd.1o00XhXW/9ZKe','01086835085',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e8bba666','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (402,'latte@wefit.com','��ó��','$2a$10$8LJeceJ.cjqc6iQNn8YCJOSJmcStOJpRZQOcAi8SB1eOD2hTPO5o.','01062881814',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','ebe16a16','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (403,'test1@test.com','test1','$2a$10$ybuxbF4.b5iT7TYP1YjjReos2Du0EvFaAbvB7pGKoQfDr3X30ZdK2','01029394857',to_date('21/09/16','RR/MM/DD'),to_date('21/09/16','RR/MM/DD'),'N',null,null,'Y','5d187484','N',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (404,'test2@test.com','test2','$2a$10$ywLq.plckBS4QGCyb39ssOK.TBWDAKl7I9lQRDyjQjFJ/pdm1zXAe','01029387575',to_date('21/09/16','RR/MM/DD'),to_date('21/09/16','RR/MM/DD'),'N',null,null,'Y','ce0be4e3','N',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (405,'test3@test.com','test3','$2a$10$UD.0v9JdgYqyAQg9zXHnUOmsZFyzM0i5IYEIWt3kYWIOAJFbGbZra','123094858',to_date('21/09/17','RR/MM/DD'),to_date('21/09/17','RR/MM/DD'),'N',null,null,'Y','7a15e820','N',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (406,'auth@wefit.com','������1','$2a$10$DJKHCGQzK1LeNzjTH.uPH.8MtnDAOSK7h5EWkwe.Bup/WzmyXMPKK','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','0c7099fb','YES',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (407,'auth2@wefit.com','������2','$2a$10$AbHtIXeV8zwDrbAaN6O8duUjVXKARDjIK.zg9FCmWENo5W3IYvv9u','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b4b5820d','YES',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (408,'auth3@wefit.com','������3','$2a$10$9IbYTLYko5.FXFr2/pZ2Qex892LlKHYIqWe3AYLrUKd2mW1Uk9cYq','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','833c65b7','YES',null,'none',to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (409,'auth4@wefit.com','������4','$2a$10$Q9hPuSsz43UmKft0SHfp5eSXutmR4wlgWgBZW0BbPd3fJ3VHV9WY.','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','99e4c1a8','YES',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (410,'auth5@wefit.com','��ڴ�','$2a$10$98P5k04NaJJ8bCQOCAikHOwQohLfiT/bAHQpcPHsDJOgu8rVz.GFu','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555553,126.93272,'Y','8c4bd945','YES',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (411,'meow123@wefit.com','�߿���','$2a$10$2NjcvZvpMJ/q4IXyThonmuuvsnP3rJ4p3sN1DfS4eZxpoRiTeQwIG','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2b938666','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (412,'cristiano@wefit.com','ȣ����','$2a$10$YKIr36ZNOWlonOnWpjcPtOjkr8.VicKvxhFmEmvhrmaN63Z5fJF8m','01007298172',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','7df1bcf7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (413,'ddoddo@wefit.com','�Ƕ�','$2a$10$MKQFURbSHXRVqpXtn65o8ufCnrlcNyR//57OSkKNEAzLYW6pK66y.','01048583222',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','513ea3cd','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (414,'hongGrami@wefit.com','ȫ�׶��','$2a$10$9zX3nmkBh7Bb08ICv9cLlOzwDyDdP9C27bBfO7WMpDd1M5TRv44wS','01090725210',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','bdeef31b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (415,'ryan@wefit.com','RYAN����','$2a$10$buI0jo6fRp2sJB9sePuum.Nku6oqzKuhej2QPpX6KMxXXUL5Wy3pm','01001601768',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','831d2664','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (416,'carol@wefit.com','Christmas','$2a$10$sHRrkneuFZGyvQwQ/DKbTO8Dz.hPyY6R1UM7eq/D0HyPgGABFyE2i','01024771889',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','811850e3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (417,'lwm@wefit.com','lwmsxena','$2a$10$N53ozGR0ricjCO3MRrw79.yX6YPo8Gwd2YJcpbUtB0DLoS.glXZM2','01078638742',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a8ffde4c','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (418,'hana@wefit.com','���ϳ�','$2a$10$3SwOLqeF3wdUQyYTQ2DxY.nt2AbBAqtvQZNsffmGA4yMRux9SZb2G','01059653254',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a21d3aed','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (419,'fifaon9@wefit.com','FIFAon9','$2a$10$WsQBXhSPdQgNwp5PPfRNSelrVIdeCO0MViU3BEJaYUBI1oxcnFpEG','01067917971',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c8ffa181','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (420,'melon-park@wefit.com','melon p','$2a$10$pndX2kh60Qq0zm80cL06PeSro5aANMFLDqHqRfctdVV.dEGAksJ86','01004153844',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c6bcd906','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (421,'bliss@wefit.com','����Bliss','$2a$10$f/ZLGo2Dqd7TLU3BOYNTeOHctBbmMSOFeg3lGX3UqQpK8chWeRKMu','01086747674',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','29b47997','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (422,'waiting@wefit.com','�ڴ��','$2a$10$xbskSf9cDwb98E.lNZP.Gua3ZGQ4isdXzzygF5b51I9IfP.q1pgP2','01059600383',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','207049f9','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (423,'gogildong@wefit.com','��浿','$2a$10$SlRLwB8hjokNIfDnM6QLveAfnyjx7usNcqd7Jph/NLT729p9JGyXi','01054906540',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555568,126.932714,'Y','bb5253bd','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (424,'dooley@wefit.com','�Ѹ�','$2a$10$/mfxHFzl2LbjBGoYEAjRB.a66V1uX5hKnbFNtaPZvrPppikCljG2W','01097603646',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555566,126.932724,'Y','7dfaca90','NO',null,'none',to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (425,'lilyjeon@wefit.com','Lily Jeo','$2a$10$dIZntpZLyjzXzmNDG7CBMuhUMQwS2Qcn1XyTPltpefzGlYDJxoDYe','01099307130',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9469443b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (426,'newboat@wefit.com','newboat','$2a$10$eOU9sPOmTOo.rY9gQ.XHbOwXCAyLBqZ5aJww3neVvwqxYVbFIzt2G','01037806395',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','567cf0fa','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (427,'knowing@wefit.com','�Ⱦ˷��� ','$2a$10$txIXloFpF1uotgRQQA85h./zwN.Zieci/AEvUve2ziRoDK//ZUJ52','01038524602',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','e56b26ed','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (428,'milkbread@wefit.com','������','$2a$10$1zliuq3zqSeS316SKZOSwuNwu8oT5QqRPyb2wYw9.TSbhUSZtMQoi','01026030228',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b35cd94c','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (429,'lovinglg@wefit.com','Life is G','$2a$10$Sm9mBNZl2q9Yj/TfuJdeKuYtWvsAf1g5n9QIK3Hxk4pRdImzmCzry','01089323051',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','f4fa8b30','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (430,'ade@wefit.com','�ڸ����̵�','$2a$10$epTZhUGRHYR66RKhhOm6p.37Git.cICQS.k1OHpcYy7PB.GsNXlGa','01089876447',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c56d3263','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (431,'lotte0@wefit.com','���¿�','$2a$10$jP91CdPzQpYuS4guTD6POOGyJ8DN6654Hi73S6zPodPgX1Kk2PPfC','01031652551',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e4eada03','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (480,'sg@wefit.com','sg���̵�','$2a$10$cx5Kyea32/qm3PIE4LI7fulLHnyZ0oqCbLB2kcwNQqrGVVaR9gjze','01087234280',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','04d7d9f3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (481,'cheese@wefit.com','ġ������','$2a$10$kE0wYXC2oGPNyB0hjEbZJO6dKmiqIRPODKecbapzwsX8RIzguCcKy','01062910610',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9cc88c86','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (482,'neo@wefit.com','�ʱ���','$2a$10$OPJz2lrBYhbE5Vk.I9BVU.HObFu.sGYb09T3XIdHtIuxrJF1tV2N2','01096479275',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2ad953e5','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (483,'sseri@wefit.com','happyss','$2a$10$StVJ0V/vJgFn1Ij414lKOO6HMAguzN8qvtvVSEhVy6f5pa./Jx7Gm','01005576242',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','7543ce86','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (484,'card@wefit.com','ī�尪��ü��','$2a$10$LSpsBcOW2XtrxhnOX3r/fub2rctnQjPpNoATch6lm29bS5Hqn7Apm','01030924104',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e487b686','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (485,'bluesky@wefit.com','blue sky','$2a$10$yfE1iAJdjwkPvPnIZJ1BVO/1mEPticnz.vVfo26srj4Pad18P3Mr6','01066592641',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','88aba7fe','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (486,'jyyy@wefit.com','jyyy Lee','$2a$10$HCMdMtybs8aMA9hYUsyqRuB/S4d4Yscdr1kQF/0Jl8ivNBb3GCbme','01063734767',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','62fc7515','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (487,'thanks@wefit.com','��Day','$2a$10$xfPMbeEWI5RpDJ7Vi3Kk.ueQ1ahSjknjWY.0FbTbvBg7IZ2ay.5Ym','01008158624',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','466a192e','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (488,'sally@wefit.com','����SALLY','$2a$10$cEjEWAgGqmhb5XS/qx2PZOS2KU5zs/Ll6aghkqd.1o00XhXW/9ZKe','01086835085',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e8bba666','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (489,'latte@wefit.com','��ó��','$2a$10$8LJeceJ.cjqc6iQNn8YCJOSJmcStOJpRZQOcAi8SB1eOD2hTPO5o.','01062881814',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','ebe16a16','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (490,'kwon@wefit.com','�Ǻ���','$2a$10$8V4pZVXPb69B8ApOxzjOL.mve2cfg0zjv7YuxpGIA.JLwPdQS9AlO','01090345264',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1e070fb4','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (491,'scentplus@wefit.com','scentplus','$2a$10$iFdOPpsELB/ckaxrXkRdQOaI680r1ibzJw3G5p1nkrKbIH4ruxNem','01041520520',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c6f844cb','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (492,'jyun@wefit.com','��','$2a$10$03GEgtMg4jvqu881ct2T1OopEvcKxHkoiuGBYabyFS9a2TA44plcG','01084097682',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5547cf4e','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (493,'kim@wefit.com','kim����','$2a$10$BxFXPuCzn1zI5CWCOoJcw.shZ2Zz.4BBr3wFgkIpUrHRrFSVPiVAa','01039561097',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','aacd9eb8','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (494,'jeong@wefit.com','Jeong','$2a$10$3bQp/Vl2r8ZHHzRBZXQq7uD57Thx2Nn9TvtaHD1vVk4xTHLZBBB0G','01004881898',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b9c7966d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (495,'libera@wefit.com','Edity Libera','$2a$10$F96hs7/p3iOlJ42Y4j/mhOpq23/u9TlYyPUuXil8O2ELLUU/WX3fa','01008615951',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','53b8cd9f','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (496,'nothanks@wefit.com','�ȹ�����','$2a$10$IL7gMxOZFyRyJZmg33vzJe4bMbgCKK5PokYFhWKzCd.IDfvPDjC2m','01036321725',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1e5b5916','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (497,'ava@wefit.com','Ava Ford','$2a$10$JNoFdemgcPT7s5FdTEOlyO8MRZQHG5HlD7FGkw6lU0RU5kbCLLM..','01046576408',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','be04d567','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (498,'slow@wefit.com','������','$2a$10$Z1qUbbTsJrVxSvYI3U/1B.r6aO.W2bwNhAeFQVsAHhvRpHaQ/M3xy','01075474498',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b97bfc09','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (499,'i9@wefit.com','i 9','$2a$10$oxewtu20e3fUeo67uLzoJOJzoy.MRcAVBHfHfFafZvKZa7qTycyx2','01070432047',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','3fe08d36','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (500,'leaume@wefit.com','Leaume','$2a$10$FDQix3ozme5OPojAqdX1l.Wht/GylzhYx8wA4LCGBr75/h8NckUzi','01097350728',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','fe10a44b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (501,'gogooma2@wefit.com','��9��9����','$2a$10$nchGRZoxgvPAY6o1whXWgu9ooC.5ytEP5b43QMWR5Mg.vx5m28.lu','01092649691',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.478856,126.964843,'Y','77527683','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (502,'dana@wefit.com','kim�ٳ���','$2a$10$TW5JxkpohlXdVycVGLU0Q.VpdIakDK4AwAzLUmihDGMtoygdgVsWG','01067260338',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','90bd60d7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (503,'sunflower@wefit.com','Sunflower You','$2a$10$AknySGly0.mzNDSnhpw5aOo9o1yyThcSpL5c0YWIFVBOomPnwnGf6','01083986853',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','263244ac','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (504,'nagne@wefit.com','���׳�','$2a$10$GIHSIDBWzWx4KZeFhkP6neb01mihCWUrG6X50GRORvYYcwMyra4Pi','01035883184',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','067bac8f','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (505,'sook@wefit.com','����','$2a$10$7QJr54m6v/ELlHi5B2Of/uID5sZVl6.5KebgOCFoKesOa9cGZIHBC','01018340232',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','75e9c45b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (506,'choco@wefit.com','Choco Lee','$2a$10$GYwKqFVltkz5IdvgzSZcVumsSSm456C2ecm45niHtSvcJv/ygfPta','01011702520',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','33d065bf','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (507,'jjinine@wefit.com','jjinine','$2a$10$8D5J8wEtHHc4qhQD0OwtHu5S.4hN5eFBr62J5lQMV5bFQYpfFByuq','01044034562',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','8db4da27','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (508,'hdmr@wefit.com','HDMR2^3','$2a$10$KcL0rqW/uijta1sef3hDTuN.ZRga3A8RrCrPYkQo.YYCW7VYGf8bS','01074779432',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1b853743','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (509,'bell@wefit.com','�����','$2a$10$v2V6bfO0JvGFh5y/HZ3EYOGbDZzrpSNUFYXTZLf.616TZALQiGN8K','01023973764',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','90d33371','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (510,'lee_hj8514@naver.com','hihi','$2a$10$1lsW2r5Selo5Fe2vPdElV.yELqFiD13WrnCou5GHKpB3cwfCr..Qy','01012345678',to_date('21/10/02','RR/MM/DD'),to_date('21/10/02','RR/MM/DD'),'N',37.478856,126.964843,'Y','f8c10ce6','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (511,'minho0324@naver.com','���̳�','$2a$10$Jhm6m6xgpOeIQbyb.i7kQuEXrmELj.z6dWGH8OkH4Fwg.w8xDE8om','01012345678',to_date('21/10/02','RR/MM/DD'),to_date('21/10/02','RR/MM/DD'),'N',null,null,'Y','29f485a3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (512,'lyj8514@gmail.com','�ٸ����̵�1','$2a$10$4JwKX7rzsvEvLD1kkLl1quVoGPkmzuIAqRbb7SLXC6t9fvT9xRJR2','01012345678',to_date('21/10/02','RR/MM/DD'),to_date('21/10/02','RR/MM/DD'),'N',37.5682,126.9977,'Y','04be8263','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (514,'2subtanker@gmail.com','������','$2a$10$kIuKLikRY4PJAPYODAcHseZvCYAu7aVBYbXn.r5jveVf.ioWpTGDS','01095467835',to_date('21/10/05','RR/MM/DD'),to_date('21/10/05','RR/MM/DD'),'N',37.484536,126.641767,'Y','68cd9925','NO',null,'none',to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (432,'eunpark@wefit.com','Eungyeong Park','$2a$10$QEuQlmEkZR.Xgr3Gyh3Gz.vDek0.EZqE/1qjEfhzCNgT0QPE/kc.i','01086319123',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','fbd63b7a','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (433,'poyoyo@wefit.com','poyoyo','$2a$10$s8akLiQy2S5hPI3j0MwBsOa5CTQ4wdDe6R5k6g5YrsosiioODofE.','01002150592',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','8a7ad5a6','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (434,'yulee@wefit.com','����yulee','$2a$10$R4kCypT0SFGaR.AaggUEqu5aPUr4AR1SFB3V5fMj/rJASgAgHNrNi','01018257246',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','cce53628','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (435,'haribo@wefit.com','�ϸ�������','$2a$10$bPwGkz8jbIxcnyzGdNXASefOJYiThI5fvqBrV4.lrO6YiLLqgy/Vm','01000094328',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.55576,126.932679,'Y','a4779a40','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (436,'wchoi@wefit.com','W CHOI','$2a$10$qzS9qwVZylJ5Vq7ldErblu3pkoQBJDkA8n80jpNV/yUrN/ipY6nla','01003600832',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','6fcc26e7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (437,'twitterienne@wefit.com','twitterienne','$2a$10$El0haxE75F6qtZXouzK9BeUiSpJMQAJ4DNx47Zr0Coj1Rnk/cB9Ye','01026827138',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e80bed34','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (438,'yuyoung@wefit.com','������','$2a$10$ZnDnO.sKYoXZelMONTq8Mu.9BIWCr5WiBlUrwLBI5lx.vws0LeGZS','01087800452',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','8dc7f558','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (439,'nyom@wefit.com','�ȇ���','$2a$10$1ji3JXw6GGdxK3BNoDvDleFPtx9rYVr93JAUDF6vqgB0EnpdCdmRW','01054922883',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5bd8ebd7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (440,'smithers03@wefit.com','Smithers03','$2a$10$GXUqa9Gh061diLmn5ew8KOTRuT2hK.d6705BN1y7eR7OrNc/1ytqu','01074016778',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b32208d0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (441,'kimkyle@wefit.com','Kim Kyle','$2a$10$UK4HC4YmnuDpAsK3lmZZRe.ZtqTd.qcmoX5ZNRhMA2.0rBMpzp6Y2','01070290512',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9b1255c0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (442,'springday@wefit.com','Springday_mj','$2a$10$RbfUZOi.Xyzos9l9BcIDMu6odH2ul0YKGe15fkkw5hPO4FIfeMeFG','01029131602',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','16c4e47a','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (443,'zzing@wefit.com','����','$2a$10$gItvWvx0NVVjyci6kY1Y5.YHzXzV3u/0FvblBgHK4dClTdWNN2Jom','01022505317',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','fb370a86','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (444,'soomin@wefit.com','������','$2a$10$gwf9e8o0kg37PAqQrgGpaOvHAO1tuexSFHKeJMNF2nXkAv5FRHimy','01094400412',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2bd84fe1','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (445,'dooboo@wefit.com','�κ�','$2a$10$TH42TQitTpaANUBKu47I.OqjVViA5Q1Kw.k8RQJil67XTRz/t7.m2','01038561272',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e816e3ad','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (446,'hjee@wefit.com','HJ ee','$2a$10$wwPknIyLd21/RYlAJLLUnuHi4xCG.vM5ehG2DV1EHzq2MyrgQeJQu','01084219119',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','d9858e5b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (447,'ddangkong@wefit.com','����','$2a$10$.5g5hNOV5ANE42rBniQ8ke5nkJoL6QzW8o7IVHdt7tRs1z8lNh/GG','01004208563',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','4b18f50d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (448,'yeonie@wefit.com','Yeonie','$2a$10$ojPri0Ype2nzkty4pzFd8eRDs9hsQevPeylEKl1Bnh5HAYfb1Gf3G','01054468301',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','aa554052','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (449,'cho@wefit.com','*�� 0��*����','$2a$10$HHl1PPVUbnuVa5gk.RPCPebtGkj94BTOt3RBsxVXYevlQP.PmKnV2','01093571755',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','64480cce','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (450,'eunsoo@wefit.com','����','$2a$10$bpE22sR81pbt1i4jbnMguuvhqhNhexjuL/yU/snugR.zwz6MUP6.K','01089402961',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e7865a81','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (451,'ashlee@wefit.com','Ashlee LEE','$2a$10$Wjq7r/Khe/IvuDFE5/eLXOqfAXiFTsoidkEFC5bvskZ0lFeqrT3aS','01027614063',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','95e98074','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (452,'amoogae@wefit.com','�ƹ���','$2a$10$kq49vY7wwfOARJazPdxSB.e1bgwNpfMBcLO8JT6BTVrQhtCP3fMbq','01014803392',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c1f73aa9','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (453,'kitty99@wefit.com','ŰƼ99','$2a$10$.Tb.uJkSWNb.go9qlmOOd.AfQKv.MgRcVv1OjAk8glHmZ9ZVpmQzC','01048714706',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','319d822d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (454,'ym02@wefit.com','YM','$2a$10$bgFNpd2Pvmv4Tt.xAOOhzO5gY9S/ujsZEzhdMqRkZEwiK2sGli6EK','01075482257',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','10f2e7f1','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (455,'mungnyang@wefit.com','�۳�','$2a$10$rUnI4YASoRVzZU6cjiBEuuZpkF2K6N9mMnn0Rgv6Jz0ehWpt2iF.2','01095702318',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','0a80f141','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (456,'hhh@wefit.com','�� �Ѥ�','$2a$10$P46rfxZ3pVBgX/..UhKi2.sChYfgAYbjM/tKs3MPPZbCBpmZ.jWze','01005503441',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','f9fe7358','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (457,'lse@wefit.com','�̽���','$2a$10$v48ZV5wuzGBo25/hCwVsouFY7Cw8cJm.jBEvkhJhflrYB18XUS4US','01030374599',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a01de431','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (458,'gogooma@wefit.com','����','$2a$10$yBHYC.40qo8Onib4Qy8JVOUqUyx2MglziSUmYiPeKNnGpPcaglUAS','01003542447',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','63643a64','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (459,'nina@wefit.com','Nina J','$2a$10$mlkkI9cttdPPmxQI.pwUXehkAKgbhynOg6mUOXWgLHyHkvNwezwJm','01093869719',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e9181144','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (460,'yeong@wefit.com','Yeong .Y','$2a$10$XGqqwXQWzNObrweFrwD7KOSMOIVMZE7EL6YYhkSy5JOfLNhRTqAx2','01088067249',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1452f813','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (461,'je@wefit.com','����','$2a$10$OtDFpGr0kUYTQP6MaiWvGOMZaHUUaIzad.wAh4wKUHJXepYdOXcfe','01044406212',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','357b31c0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (462,'vitamin@wefit.com','��Ÿ��','$2a$10$T3/duijb2WQpH.ZbhMgEn.jjk3IHvieZi4DNvVwpeYnq4UEeWzJXS','01019834035',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5265e35d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (463,'ar@wefit.com','��Ƹ�','$2a$10$Hmk/AaCE6Yog5yjvxcwuF.1sOY6luh3txRu.KZ1q3Gqf2hGbI7TES','01076789785',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','79919aa0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (464,'bodybank@wefit.com','�ٵ��ũ-bodybank','$2a$10$N6pMdluf01KdIwsjowzLBuoADzA4Fx98eV3ur87cqSuCcev/uS5BW','01066204114',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2f424b74','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (465,'secret@wefit.com','����ǽ�','$2a$10$4qe2ew4TJ7EfqjPaUFOuUe0SRU9mDw6cpGlBK2.PhiPx1DeTDweba','01007338320',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','532906bb','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (466,'seraph1982@wefit.com','123Seraph1982','$2a$10$EZ.5YhR2MP9CB/RBMkOLJOxJePTxTN1rPBYqxMIXF3domcctCcjK.','01011934269',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9c4726e8','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (467,'creamsoda@wefit.com','ũ���Ҵ�','$2a$10$eTaX3SW6FdFF0j5JIT0JSu6sAVpRAZLiooCglRrvWmdVS.pFnQZl2','01047500854',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','5f330eca','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (468,'silverstar@wefit.com','silver star','$2a$10$hjTNzTSoGY.T8M20LvDMH.1V0clab/F.NxFvyAzuNEEuwOiMqMG72','01053973572',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','3ebcdb17','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (469,'eunchae@wefit.com','����ä','$2a$10$Fx2EHGAgmTXUjZuofUNyU.jW872lHXIGtslIJahsia.S51m7PcGbG','01070074188',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','57b4f5e3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (470,'ppeumi@wefit.com','ppeumi','$2a$10$GhR4jbhQ44KKiIdcmYZ2MuBwPE7QoxrOf701Z0Y/KqCgWAP0q94na','01029257314',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','7596e169','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (471,'oo1n@wefit.com','oo1n','$2a$10$tIij7pkklMV9j2Zoez0kk.yPSVMD66DPO.R1LNKQLGUcjW8gRG11W','01034905767',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','09a3db30','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (472,'simplist@wefit.com','Simplist','$2a$10$/GXFa32j0YVUWF6SifXNQ.fBxtdS1IWLzL26fmzEXB8/urlSNbV0C','01060220729',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a213cab2','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (473,'ten@wefit.com','Ten','$2a$10$o4oTuOUgvpWT3L8jyFg.I.stbWXJlNWkpkOAot75ET96kBEr9srf.','01079600408',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','79800937','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (474,'suna@wefit.com','�ּ���','$2a$10$JEnUgAQfKHRkvA5bbBYZ5uFCcvmYUpTB5tc4Qse9NuzihSWm6YQCS','01019925212',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1ddf916b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (475,'sohee@wefit.com','������','$2a$10$QuIXEsmcu.FomLAP2Y/RpekQwHq9IObUhZk7ShQdSjGL4A9rA04tK','01072747690',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','56718f7f','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (476,'shine@wefit.com','Shine Hong ����','$2a$10$nfpSRo7vgjmoGPixgpAAb.1nhJqMjbt4deykpSjpENCi3ap8h.7gu','01051525264',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','971daf85','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (477,'outdoor@wefit.com','�߿ܿ~?��~ ����','$2a$10$RS9sxp7Zm1r58TOvMJN35eKRlT8Xxvq2sG3xI.zQYRWRQx1OcpI4W','01013756664',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9eb27bf5','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (478,'lucy@wefit.com','Lucy Yoo','$2a$10$QZQGFLrW8UpVkfI4ge.19uBkEDTeAZTlnciUl648O3QbHQ1m3nrLO','01050227724',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','6fe5152a','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (479,'grace@wefit.com','�׷��̽�Ƽ��','$2a$10$P6BL1rNJRI5DpvzjCXObsuQqV8QCGcgOtP.MW7.ZjJFHKuoejguDW','01067725735',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5de3ba4b','NO',null,'none',null);
REM INSERTING into SPRINGWEFIT.NOTICEBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (226,407,'��õ�� ��ü������ ��� ���� �ȳ�','
��õ�� ��ü�����Ϸ� ���� ������� �ȳ������.
��ǰ, ��� ������ ���� ��� ������ �ٸ� �� ������
��ǰ ���������� �ڼ��� ��������� ������ �ּ���.

 

�������:
 �� ���� � (���� ���� ����� ����)

 

�ù���: 
�� 10�� 1�� ��� ����
�� 10�� 4�� ��� �簳
     10�� 1�� (��) 17�� ���� ~ 10�� 4�� (��) 17��
     �����Ǳ��� 10/4(��) ���

 

 

 


�������
- ��ü���� ���� ���� �Ǵ� ����ϴ� ��ǰ
    10/5(ȭ) ���� ���� ���


�����ǻ��ס�

1. ��Ȱ�� ��� �� ��ǰ ������ ���� ���� �Ⱓ����
    ��� �غ� & ��ǰ ���� �غ� �� �� �־��. 
    [����غ���] �ܰ迡�� �ֹ� ��Ұ� �Ұ��� �� �ȳ������.
    
2. ���ֵ� ������ ��� �Ϸ� ����
   ��� ������ �� �ִ� �� �ȳ������. 
   �ָ� ���� ���� ���ο� ���� ��������� �޶� �� �� �־��. 
   ���� �� ��ٱ��Ͽ��� ��ǰ�� ��������� ��! Ȯ�����ּ���, 

 

�ֻ��� ǰ���� ��ǰ�� ���޵帮�� ���� 
������ ����� ���߹��� ?',null,null,7,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (227,407,'[�̺�Ʈ�ȳ�] �������� 9�� (9.1~9.30) ���� �ȳ�','�ȳ��ϼ���, ���� �Դϴ�.
���� ���� �ý��� ''��������'' 9�� ������ �ȳ������ :)

9�� �� �ް� ����Ǵ� �� ��ġ�� ������!

 

[�̺�Ʈ �Ⱓ]
2021. 9. 1(��) 00�� ~ 2021. 8. 30(��) ��������

 

[���� ���]
''�������� �������''�� �̿��ϴ� ��� �� ���

 

(1) ���� 1:  ���� ù ���� ��
- �������� ���� ù ���� �� 3,000�� ��� ����
�� 20,000�� �̻� ���� �� ����

 

(2) ���� 2:  ����� ��  
a) 50,000�� �̻� ���� �� 2,000�� ��� ����
b) 70,000�� �̻� ���� �� 3,000�� ��� ����

�� �Ⱓ �� 1ȸ / �ߺ� ���� �Ұ� 
�� �Ⱓ �� a��, b�� �� �ϳ��� ���� ���� 

 

 

[���ǻ���]
- ���� ù ���� ���� ����� ''���� ��ü ������''����
  ���� �̷��� ���� ���� ���ϸ�, ID�� 1ȸ ���� �˴ϴ�.
  (�ٸ� ���������� �� ���̶� �������̸� �̿��غôٸ� ���� ��� ����)
- ���� ù ���� ���� ������ ��� ����� �� �ֽ��ϴ�.
- ������ �������� ���� �ܰ迡�� ����˴ϴ�.
- �κ� ��� �� ���� ���ǿ� ���� ������ ����� ���� �ݾ��� ȯ�� �ݾ׿��� �����˴ϴ�.',null,null,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (228,407,'[�߿����] WeFit �̿��� ���� �Ǿ����ϴ�.','��1��(����)
�� ����� (��)����(���ڻ�ŷ� �����)�� ��ϴ� ���ͼ� (���� �������̶� �Ѵ�)���� �����ϴ� ���ͳ� ���� ����(���� �����񽺡��� �Ѵ�)�� �̿��Կ� �־� ���̹� ���� �̿����� �Ǹ�?�ǹ� �� å�ӻ����� �������� �������� �մϴ�.

�ء�PC���, ���� ���� �̿��ϴ� ���ڻ�ŷ��� ���ؼ��� �� ������ ������ �ʴ� �� �� ����� �ؿ��մϴ�.��

��2��(����)
�� �������̶� (��)���Ͱ� ��ȭ �Ǵ� �뿪(���� ����ȭ ��̶� ��)�� �̿��ڿ��� �����ϱ� ���Ͽ� ��ǻ�� �� ������ż��� �̿��Ͽ� ��ȭ ���� �ŷ��� �� �ֵ��� ������ ������ �������� ���ϸ�, �ƿ﷯ ���̹����� ��ϴ� ������� �ǹ̷ε� ����մϴ�.

�� ���̿��ڡ��� �������� �����Ͽ� �� ����� ���� �������� �����ϴ� ���񽺸� �޴� ȸ�� �� ��ȸ���� ���մϴ�.

�� ��ȸ�����̶� ���� �������� (����) ȸ������� �� �ڷμ�, ��������� �������� �����ϴ� ���񽺸� �̿��� �� �ִ� �ڸ� ���մϴ�.

�� ����ȸ�����̶� ���� ȸ���� �������� �ʰ� �������� �����ϴ� ���񽺸� �̿��ϴ� �ڸ� ���մϴ�.

��3�� (��� ���� ��ÿ� ���� �� ����)
�� �������� �� ����� ����� ��ȣ �� ��ǥ�� ����, ������ ������ �ּ�(�Һ����� �Ҹ��� ó���� �� �ִ� ���� �ּҸ� ����), ��ȭ��ȣ?������۹�ȣ?���ڿ����ּ�, ����ڵ�Ϲ�ȣ, ����Ǹž� �Ű��ȣ, ������������å���ڵ��� �̿��ڰ� ���� �� �� �ֵ��� 00 ���̹����� �ʱ� ����ȭ��(����)�� �Խ��մϴ�. �ٸ�, ����� ������ �̿��ڰ� ����ȭ���� ���Ͽ� �� �� �ֵ��� �� �� �ֽ��ϴ�.


',null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (229,407,'WeFit ��������ó����ħ ���� �ȳ� (2021/2/10 ����~)','
�ȳ��ϼ���, �����Դϴ�.

 

2021�� 2�� 10�Ϻ��� ���ʹ�

���Բ� ���� ��Ȱ�� ���� ������ ����

�Ʒ��� ���� ����� ��������ó����ħ�� ������ �����Դϴ�.

 

 

<���� ����>

- �� �������� ���� ��ȭ �� ���� �̿� ���� ����

 

<���� ����>

- ������ ���������� ��Ź

- �¶��� ������ ���� ���� ����

1) ���������� ���� �� ó���ϴ� ���� �����
���̽���, ����, Amplitude, ũ���׿�, ���̹�, īī��, ����, ����Ʈ�ַ��, ���Ǿ�

2) �������� ���� ���
�̿��ڰ� ȸ���� ������Ʈ�� �湮�ϰų� ���� ������ �� �ڵ� ����

 

*�� ������ �������� �����ô� ���
�ź��ǻ� ǥ��(ȸ��Ż��)�� �Ͻ� �� ������,
�ź��ǻ縦 ǥ������ ������ ��� ������ �����Ͻ� ������ ���ֵ˴ϴ�.

 

������ ���� ������������ �������� �����ϰ� �������� ��
������ ��ġ�ӿ� ���� �����մϴ�.

���� �ϰ� �̿����ֽô� ���е鲲,
�ŷ��� �� �ִ� ������� �����ϰڽ��ϴ�.

 

�����ϴ�!

 ',null,null,4,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (230,407,'WeFit ���� BEST �ı� ���� ���� �ȳ�',' �ȳ��ϼ���, �����Դϴ�.
���Ϳ� ������ �ı⸦ �����ֽô�
�����е鲲 �������� ��������!

 

21�� 4������ �ſ� �ִ� 10���� BEST �ı⸦ �����Ͽ�
����Ʈ 1,000���� �����ص����.

 

�̿� BEST �ı� ���� ���ؿ� ����
�Ʒ��� ���� �ȳ������.

 

[BEST �ı� ���� ����]
- ��ǰ�� Ȱ���� �����ǰ� �Ұ� �� ���
- ���� ÷�� 1�� �̻� / ���ڼ� 200�� �̻�
- �ڽŸ��� ���ִ�! �������� ������� ���
- �ſ� 1�Ϻ��� ���ϱ��� ��ϵ� �ı� �� ����
- ��ǰ�� ��/�İ�/�� ���� �����ϰ� ǥ���Ͻ� ���
- ��ġ �ִ� ������ ����! Ƣ�� �ı⸦ �ۼ����ֽ� ���

 

* �� ���ǿ� �ش� �� ��� BEST �ı⿡ ���� �� Ȯ�� UP!
* �ı� ����/������ ���� ����� �Ǵ� �Ͽ� �����˴ϴ�.

 

�ð����� ���� ������ �ı⸦ �÷��ֽô�
��� �е鲲 �ٽ� �� �� ����帮��,
BEST �ı� ������ �����ε� ��� �˴ϴ�!',null,null,5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (219,408,'2021�� 10�� 2�� ������Ʈ ����','�ȳ��ϼ���! ���� �Ŵ��� �Դϴ�.

�Ʒ� ���� ������ �ݿ��� �ű� ������ �������� �ٽ� ���� �Ǿ����ϴ�.
�Ƹ� ������ ���� ������ �Ʒ� ������ ������ ������ ����Ͻ� �� �־��!

-� ��� ����/����/���� ��� �߰�
-Ż�� ��� �߰�
-� ��� ���� ���� ����
-������ ���� ���� ����

�̹� ������Ʈ�� Ȩ������ ���� �� ���� �켱������ ���� ���� ���� �� ����� ��������� �Ϻ� ���� ������ �� �Դϴ�.

�����ε� ���������� ���� ������ �����Ͽ� ������ �κе��� ���������� ������Ʈ �����ϰ� ���� �帱�Կ�.

�����մϴ�!',null,null,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (220,408,'[��������] ���� ����! ''�� ���� ��ź�� �޲ٹ� ����'' No����! No÷����! (~ 10/11)','������ǰ

��ź�� �޲ٹ� ����(300g)

�����Ⱓ : 9/27(��) ~ 10/11(��) 2�ְ�

?

��������

�� ���� �޲ٹ� 

1�� 7,500�� 

3�� �̻� ���Ž� �� �� 7,000�� (�ǸŰ� 9,900��)



�� ���� �޲ٹ� ���� �ٷΰ���(Ŭ��)

�ȳ��ϼ���!

�ǰ������� ����� ����ϴ� ���̿���Ǫ�� �λ�帳�ϴ� ^^

?

ȸ���Ե鲲 �Ұ��帱 ��ǰ�� ���� õ�� ���θ� ���� ������ ��÷���� �޲ٹ� �����Դϴ�.

?

3�� �̻� ���� ���Ž� ���� ���αݾ��� ����Ǵ� ���� ���� ���� �̺�Ʈ�� �ִ� ��ǰ �Դϴ�.



���� ��÷����

�� ���� �޲ٹ�

���̷� ���� ��Ұ� ���� �޲ٹ� ������ �����ϸ� �ʹ� �������� ���� �� ��û�� ������ ȭ��÷���� ������ ���̾�Ʈ�� �ǰ����� ġ�����̶� ���Ͻð� ��źе��� ��������?

���� ���̿���Ǫ�忡�� ���� ������ �� ���� �޲ٹ� ������ �׷� ������ �ָ� ���� �����ð� ���ְ� ��� �� �� �ְ� ��� ���� �������� ������ ���̷� ȭ��÷������ ���� �Ͽ����ϴ�.


���� ����� �̱����� ���� �� �ִ� �޲ٹ̸� ���� ������~


��ź�� 100g�� 0.86g


������ǰ

��ź�� �޲ٹ� ����(300g)

�����Ⱓ : 9/27(��) ~ 10/11(��) 2�ְ�

?

��������

�� ���� �޲ٹ� 

1�� 7,500�� 

3�� �̻� ���Ž� �� �� 7,000�� (�ǸŰ� 9,900��)


-��ü����-

�ֽ�ȸ�� ���̿���

507-86-02181

�� 2020-��õ����-2242ȣ

070-4150-0084

�� ���������� ��ȯ ȯ�� ���� å���� �� ��ü�� �ֽ��ϴ�
','�޲ٹ�Ȯ�뼦.png','972e71a5.png',8,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (221,408,'[��ۿ���] MBC ����� - 2019 ������ ����, 2�� ������','2019 ������ ���� 1��, ��հ� ���̳���?

2�ο����� ���� ȸ���е��� ���� ���� �����ȯ�� ���� �ް��ִ� �е��� �������, 10�ְ� ��ź���� �Ĵ� ���丵�� �����մϴ�! ���� �� ����� ��, <MBC ����� - 2019 ������ ���� 2��>���� Ȯ���ϼ���! 


2�� ��۽ð� : 2019. 11.7  ����� �� 10�� 5��',null,null,12,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (222,408,'�ν�Ÿ �������� ���� �ν�Ÿ�׷� ���� �� �ؽ��±� �ȳ�','�Ĵ��� �ٸ� ������ �����ϰ� ������ �е��� Ű�� ���� ������ �ø��� ��
#WeFit �� �ؽ��±��Ͻð�, ī�� ������ �Բ� �±��ؼ� ������ �÷��ֽñ� �ٶ��ϴ�.

���� �ν�Ÿ�׷� ������ @wefit.com �Դϴ�.
�����е��� �ؽ��±׿� �÷��ֽô� ������ �ڷḦ ������Ʈ�� �帮�� �ֽ��ϴ�.

���� �ø��� �� ������ �ؽ��±� ����Ʈ
#���̾�Ʈ #�������� #�Ĵ� #� #��Ʈ�Ͻ� #�Ĵ��ϱ� #��ź���� #�ǰ�
#���� #��Ƽ #WEFIT #wefit #FITI #FITUS

',null,null,7,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (223,408,'[�̺�Ʈ] ���̾�Ʈ ���� ������ ���� (~11.30)','�з� : A4 ���� 2�� �̻�

���� : ���Ѿ���

�Ⱓ : 11�� 1�� ~ 11�� 30�� 

�ɻ� : 12�� 7�� ������ �� ���ƿ� �� �ջ� (���� �ø� ���� �����մϴ�.)

�������� ���⸦ �ø��� ��� ���ƿ� ���� �� ���� �Խù� �ϳ��� �ɻ��մϴ�.



������� : ��������� �Խ��ǿ� ���⸦ �÷��ּ���. 

�Խ����� 11�� 1�Ͽ� ���� �����̴�, �̸� ���� �غ��ϼŵ� �����ϴ�!

���� �� �Խñ� �̵��� ��Ģ�̸�, 11�� 1�� ���� ���οö���� �۸� ���� �����մϴ�. 





��ǰ



1�� (10���� �̸�Ʈ/�ż��� ��ǰ��)

2�� (5���� �̸�Ʈ/�ż��� ��ǰ��)

3�� (3���� �̸�Ʈ/�ż��� ��ǰ��)

����� (���� ���ǰ ��Ʈ, ���ƿ� ���� 10�����)



���ǰ ��Ʈ ����ǰ

 : ��źĿ�ǿ� ������ �ӱ��� + �̴� ���� ��Ʈ + ���� �ΰ� ����



���ǰ ��Ʈ�� ����� ���� �������� ���� �� �����Դϴ�. (���� �� 10������ ������!) 1��� 3����� �帮�� �̸�Ʈ/�ż��� ��ǰ���� ���� ������ ���� �ٸ� ��Ʈ ��ǰ������ ��ü�� �� �ֽ��ϴ�. ',null,null,13,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (224,408,'������� �� ���� ��õ���ڵ尡 �����˴ϴ�.',' �ֱ� �������� �븰 ���к��� ��ǰ ȫ�� �� ��õ���� ����, ȸ������ ������ ������ ���� �ʴ� ��ǰ�� ��õ�޾� �����ϴ� ���� �־����ϴ�. ��, ��õ���ڵ带 ���������� ������ �ƴ�, �������� ���Ȱ���� �̿��� ��ʵ� �߰��� �Ǿ����ϴ�. (���������� ���̵� ������ ����� ����� �ϳ��� �ڵ带 ȫ��) �̷� �ε����� ������ ����, �����ڷ� ��� ��õ�� ��ũ�Խñ��� ������ �� �����Դϴ�. �ٸ�, ���� ������ �ö���ִ�, ȸ������ ��ǰ ��õ �Խ����� �۵��� �״�� ������ �� �����Դϴ�. �Ҽ��� ���� �ټ��� ���ع޴� ��Ȳ�� �����ϱ� ���� ��ġ�̴�, ���� �ٶ��ϴ�. �����մϴ�. ',null,null,6,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (225,408,'[�ؿ�����] �����н�Ʈ �Ż� �԰� ��� �ִ� 20% ����? (~10/3)',' �����н�Ʈ �α� �Ż� �԰� ���! 

 �����н�Ʈ �ֹ�, Ű��� ������

?

������ ���� R&D �ɷ����� ������ ���� ��ǰ�� �����ϰ��ִ� �����н�Ʈ! �����н�Ʈ Ű������� �߽����� ���� Ű����� �԰�Ǿ����ϴ�. 

?

�ó��� �� ���� ������ ���ν����� �������� �ó��� �� Ű��� ���� ��Ʈ�κ��� ġ������ũ �ֹ�, �ε巴�� ��ŭ�� ���̽� ���� �ֹ����! 

?

����ߴ� ������ ���� �δ���� ��⼼��.  

?

���� ���� ���Ϳ����� �����н�Ʈ �Ż� �԰� ��� �����н�Ʈ �ֹ�, Ű��� ��ǰ���� �ִ� 20% ���ε� �������� ���� �� �ֽ��ϴ�. 

?

?

���� 14,900

���ΰ� 11,920~13,410


?','instagram.jpg','505754b1.jpg',12,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (231,407,'[��۾ȳ�] �ù� ���� �ľ����� ���� ��� �Ұ� �ȳ�','�ȳ��ϼ���, �����Դϴ�.

���� �ù� ���� �ľ��� Ȯ��Ǹ鼭,
���������� ��� �Ұ��� �������� ����ؼ� �þ�� �ֽ��ϴ�.

�̷� ���� �Ұ����ϰ� �ֹ��� �Ұ��Ͻ� ���е鲲,
����� ������ ������ ���մϴ�.

�̹� ���θ����
���Ϳ����� ������ ��￩ �غ��� ���θ���ε�,
����ġ ���� ������ �帮�� �Ǿ�
���� ���� ��ó�ϰ� �˼��� �����Դϴ�.

��ٷ��ֽŸ�ŭ
�󸶳� ����ϰ� �ӻ��Ͻ��� �������� ������ �˴ϴ�.

���� �������Ϳ����� ��ۺҰ����� �� �� �ƴ϶�
�Ϲ� ����� ������ ����������
[�ݼ�/����/�н�]���� ������ �ݺ��ǰ� �ֽ��ϴ�.

�̸� �ֹ��ϰ� ���߿� �޾ƺ��� �� �ִ� ����� ����Ͽ�����
ȥ���� ū ��Ȳ���� ������ ��ǰ�� ��ٸ��ð� �ϰų�,
Ȥ���� �߼��� �Ǵ���
��� ������ �� �ٸ� ������ �����Ǳ� �����Ǿ����ϴ�.

�������ٵ� ''���� ��ǰ�� �����ϰ� ���''
�ص帮�� ���� ���� �߿��ϴٰ� �Ǵ�,
��� �Ұ� ������ ���
�ε����ϰ� [�ֹ� �Ұ�] ��ġ�� �����ϰ� �Ǿ����ϴ�.

�� ��Ȳ�� ������ �ذ�Ǵ´��, 
������ ������ �� ��� [������] ���θ�ǰ� 
������ ������ ������ �� �ִ� ����� �غ� �߿� ������
�ʸ� ���� ��Ź�帳�ϴ�. 


�����մϴ�.


 �ֹ� �Ұ� �ȳ� 
�� ��� �Ұ� ������ �ش� �� ���
[�ֹ��� > �����ϱ�] Ŭ�� �� [�ֹ� �Ұ�] �޽����� �����ؿ�.

�� ��ǰ ���� ��� �Ұ� ������ �ٸ� �� �־��.',null,null,5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (232,407,'[����] �α���/ȸ������ �Ұ� ���� �ذ� �ȳ�','
�ȳ��ϼ���, �����Դϴ�.


2021.07.22 ���� 4:25�а���� 4:58�а����
�α��� �� ȸ�������� �Ұ��� ������ �־����.


���Ϳ��� ����ϴ� �ܺ� ��Ʈ��ũ�� �Ͻ�����
������ Ȯ�������� ����� ��� ����ȭ�Ǿ����.


�ƿ﷯ ������ �����̴� ���Ե鲲 ����� �����帮��
������ ������ �߻����� �ʵ��� �ּ��� ���ϰڽ��ϴ�.


�����մϴ�.',null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (233,407,'WeFit ȸ������ ���� �ȳ� (210405 ver)','�ȳ��ϼ���,
���Ϳ� ���� �� ȯ���ؿ�.


�ű� ���� ��, [���� 10% ���� ����] �� �����.
���� ���� �� ������ ������� ��! ��ġ�� ������.

 

���Ͱ� �Բ� �ǰ��ϰ�
���� ������ ������ ����� ���ñ� �����ؿ�!


�̿��Ͻø鼭 �ñ��ϰų� ������ ���� �����ôٸ�,
�������� �����ͷ� ���� �����ּ���!


�����մϴ�.


 

[���� ��� �ȳ�]

�� ���� ���� �� �������� ��� �����մϴ�.
�� ���� ��ǰ ���� �� ��� ��� �����մϴ�.
�� ����Ʈ�� �ߺ� ����� �Ұ��մϴ�.
�� ��ۺ� ������ ���� �ݾ��� 10% ������ ����˴ϴ�.
   (�ִ� 1�������� ���� ����)
�� ���޵� ������ [���������� >����]���� Ȯ�� �����մϴ�.
 

 

[���ǻ���]

�� �ű� ȸ�� ���� �����Դϴ�.
�� ���� �� �̸���, SMS ��� ���� ���� �� ������ ���޵˴ϴ�.
   (���� ���� ȸ�� ���� ���� �� ����Ʈ ������ �Ұ��մϴ�.)
�� Ż�� �� �簡�� �ÿ��� ���������� �Ұ��մϴ�.
',null,null,6,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (234,407,'[��������] ��� �� �׷����! 7���� ���Ѱ� �߰����� ���� ���� ''���� ���� �׷����'' (~ 10/12)','������ǰ

���� ���� �׷���� 300g

?

�����Ⱓ

09�� 29�� (��) ~ 10�� 12�� (ȭ) 2�ְ�

?

��������

8,900�� (�ǸŰ� 11,900��) 

<�뷮���� �߰�����>

3�� �̻� ���� �� 7,900��

?

?

������� 2022-05-23 ����

?

?

?

-��ü����-

�ֽ�ȸ�� �׵彺�丮

113-86-72731

�� 2019-���ﱸ��-0916ȣ

02-2615-2320

�� ���������� ��ȯ ȯ�� ���� å���� �� ��ü�� �ֽ��ϴ�','�׷����.png','8fe81861.png',5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (235,407,'[ü����̺�Ʈ] �ùٸ� ��źĿ���� ����! �����̵��� ���� �ǰ��� ����, ''��Ŭ��Ŀ��'' ü��� ���� (~ 10/11)','[ü��� ���� �ȳ�]

1. ���� �ο� : 20�� (��Ʈ ���� �� �� 1)

- SET 1 : �ݷҺ�� �������� ������ 200g + ��Ƽ���Ǿ� ����ü�� �Ƹ��� 200g 

- SET 2 : �ݷҺ�� �������� ������ 200g + ���׸��� ��Ƽ���� ��ī���� 200g 

2. ���� �Ⱓ : 10/1(��)~10/11(��)

3. ü��� ��ǥ: 10/12(ȭ)

4. ��ǰ �߼��� : 10/13(��)

?

[���� ���]

1. �ϴ��� ü��� ��û�� �ۼ�

2. ��۷� ����� �ۼ��� �Բ� ��û �Ϸ�

?

?

[ü��� ���� �� �ı� �ۼ� �̼�]

1. (�ʼ�) ī�� �̺�Ʈ �ı� 1��

2. (�ʼ�) ���� SNS �ı� 1�� : ��α� or �ν�Ÿ�׷� �� ��1

- ��ǰ ���� �� 1���� �� �ۼ�

- �ʼ� �ؽ��±�(Ű����) : #��Ŭ��Ŀ�� #�����̵��Ҿ��¿��� #Ű�����нĴ� #��źĿ�ǿ��� #��ź�������̾�Ʈ



?

��Ŭ��Ŀ�� �����ϱ�



�ֱ� ��Ŭ��Ŀ�Ǵ� ���� ǰ���� �����޾� 

���� ���� ȣ�� ����Ŀ�� ȣ�ھظ���Ʈ����

���� ������ �����Ͽ����ϴ�.

��Ŭ��Ŀ�Ǹ� ������ֽô� ���� �е鲲 �����ϰ���,

Ű��ī�信���� ȸ���Ե鲲 Ư�� �̺�Ʈ�� �����մϴ�!

?

<��Ŭ��Ŀ�� ü��� ����ı� �̺�Ʈ>

ü��� ��ǥ �� �ı⸦ �ۼ����ֽ� �е� ��

����ı⸦ �����Ͽ� 3�в�

�ڿ����� ����ȿ�� ���, ÷���� ������ ��÷��

Ű������ ���� ���� ��Ƽ�̳׶�

�����̿� �뷱���� �� �����մϴ�!


- ���� �ȳ� ���ڸ� ���� ��ǥ, ü��� ��û �� �Է��� ����ó �� �ּҷ� �߼� ���� ','Ŀ��.png','3c1ac677.png',12,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (236,410,'[�ʵ�] �����ͺ��� ������Ƚ��ϴ�.�� ���̷� ��ü ���Ǻ�!','

�ȳ��ϼ���, �ֱ� īī������ ���� <��*��>�̶�� ������κ��� �����ͺ��� ������Ƚ��ϴ١� ��� �޼����� ������ ȸ���Ե��� ���� �ִ� ������ Ȯ�ε˴ϴ�. �ش� ��ü�� ���ͳݿ� ��¥�ı⸦ �������� ����� �����̷� ��ü���� ���Ͱ��� ������ �����ϴ�. �׷��Ƿ� ���� ���̵� �����ְų�, �Խñ��� ��� �÷��޶�� ��û�� ������ ���ñ� �ٶ��ϴ�. �����ε� �׷� ������ �����ô� ��� �� �Ű����ּ���. (�Ű��ϱ� �� ���ȿ� �����ϴ� ô � ��ǰ/�귣���� �Խñ��� �÷��޶�� ������ �ľ����ֽø� �̷� ���� ��ü���� Ȱ���� �����ϴµ��� ������ �˴ϴ�.) 







��� �̷����� �Ͼ�ɱ��?



�̷� ���̷� ��ü���� ���α׷��� ���� ȫ���ϱ� ���ϴ� ���̵���� �����ϰ�, �� ������ ���̵���� �߰��� �ŷ���, ���۸� �˻�������� ��Ī�Ͽ� ���� ����ó�� �����մϴ�. ī���� ������� ���� ������ ����ó�� ����� ���� �ƴϴ� �Ƚ��Ͻñ� �ٶ��ϴ�.









��� ������ �� �������?



�̷� �������� ������ �����ϱ� ���ؼ���, �ŷ��� �Ϸ�� �߰��� �ŷ��� � ����ó�� ���� �ʵ��� �Խñ��� �����ϰ�, �������� ����ó, īī���� ���� �Խñۿ� ������� �ʱ⸦ �����մϴ�.





���ٿ��

�����ͺ��� ������Ƚ��ϴ�.�� �� ���̷� �����ü�� �����Դϴ�.

�Խñ� �븮 ���ε� Ȥ�� ���̵� ������ ������ ������ ������ ���� ��Ȥ���� ������.

�����ϴ� ô � ��ü�� ȫ���ϰ� �;��ϴ� ������ Ȯ�����ֽ� �� �ִٸ� ����Ʈ��� ���� ������ �˴ϴ�.',null,null,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (237,410,'[��������] �� �����ϰ�! ���κ���Ŀ���� ���ʰ��� ����ǰ�� �α���ǰ�� ��� ���� �� �ִ� ��ȹ��! (~ 10/6)','�ȳ��ϼ���

���κ���Ŀ�� ��ȹ�� ������ �����մϴ�!

���Ϳ� ���ʷ� �����Ǵ� ũ���� ����!

�׸��� �پ��� �α���ǰ����� �Ѹ����߾��~

?

���� �������� ȸ���Ե��� �ǵ���� �޾�

ȸ���Ե��� �پ��� ��ǰ���� �� ������ �� �ֵ���

��ǰ �� 5�� ���� ��Ʈ�� ������ �̴ּ�ϴ� ^^

?

���� ��ǰ�� �ѹ��� ��ð� ���� ���� ���ο���Ʈ!

���� �����ϴ� ��ǰ�� ��ð� ���� ���� 5�� ��Ʈ!

���������� ���� Ȧ Ÿ��Ʈ����!

���� ȸ���Ե��� ���� ���κ���Ŀ������

���� Ư���� ��ȹ���� �����ּ̾��~

?

�� 15���� ��ǰ��� ������ ���� �ܵ� ����!!

��� �̺�Ʈ�� �����ϰ� ������

ȸ���Ե��� ���� ���� ��Ź�帳�ϴ� :)

?','03_���κ���Ŀ��.png','5c1cea1f.png',10,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (238,410,'[��������] �ｺ ��Ʈ���� 2�� ��ñ�� �����̺�Ʈ 10�� 13�ϱ��� ���� �����մϴ�.','�ｺ �е帮���� ��Ʈ��/��� ������ ��Ʈ��/�ո�ȣ ����Ʈ�� ���



2�� ���Թ��� ����



��Ʈ��,�ո�ȣ���� �� ���� ��ǰ�� �ƴմϴ�.

�پ ������� ǰ���� ������ ������.



���� �е��� ���� ��õǳİ� ���Ǹ� �̴ּµ� ���� �Ϻ��� ��ǰ ��ø� ����

�������� �����׽�Ʈ�� ������ ���� ���� ��õǾ����ϴ�.



������ �߱��� ��ǰ�� �ƴ� ���� �ؿ� �귣�带 �����ϴ� ��Ű��ź �������� ����

���ԵǾ����ϴ�.��ǰ�� ���� �� ������ �� Ȯ���ϼ���.



(�˰� ��Ű���?������ ���� ���� ������ �귣��� ��Ű��ź���� ����˴ϴ�.) 



ǰ���� ������ ��� �����ϴ� ��ǰ�� ���ص� ��ȸ���� �ʴ� �����̽ǲ��� ���ϴ�.

�����ε� ������ �پ �پ��� �ｺ��ǰ�� �߰��� �����Դϴ�.



���� �̿��� �ֽñ� �ٶ��ϴ�. 



�� �ｺ �е� ������ ��Ʈ��

2���Ѽ�Ʈ �Һ��ڰ��� 17,000�� ==>��ñ�� ���ΰ��� 11,800��

�μ�Ʈ�̻� ���Ž� �߰� ���� �˴ϴ�.

','straps_360x360.jpg','8fde3ebc.jpg',10,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (239,410,'WeFit ����ƾ ��õǾ����ϴ�. ������ �ְ��� �ܹ���������','
���� ��ð� �Ǿ����ϴ�.�� �Ѵ޳Ѱ� �ð��� �ɸ��� �Ѵ� ���� �����Ұ� �����ϴ�.

���� �е��� ��ø� ��ٸ��� ��ŭ �켱 ù ���� ����Ǿ����ϴ�.



������ �κ��� ���� �����Ͽ� ������ǰ�� �ɼ� �ֵ��� ������ �����Ͽ� ȸ����������

�������� ���̴� ��ǰ���� �ŵ쳯�� �ֵ��� ����ϰڽ��ϴ�.



���Ŵ� ���͸� �̿��Ͻø� �˴ϴ�.

���� ���ɰ� �̿� ��Ź �帳�ϴ�.','�ｺ�ŴϾ�.jpg','6065a2eb.jpg',27,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (240,410,'10�� �����ı� �̺�Ʈ ��÷�� ��ǥ','
���� ���� �е��� �̺�Ʈ�� �ǽ��ϴ��� �𸣽ôµ� �մϴ�.

10�� �̺�Ʈ�� 2�и���� �̺�Ʈ ���ǿ� �����Ͻź��� ���׿�.

11������ �� ���� �е��� �̺�Ʈ�� �����ϼż� ����ǰ �޾� ������.^^



�ڼ��� ������ �� ī���̺�Ʈ ��÷����� �����Ͻð� ������ �ֽñ� �ٶ��ϴ�.

ī�信 ����� �� ��α׳� sns�� ������ �ּž� �մϴ�.



Ȥ�ö� ���� Ȯ������ ���Ѻ��� ���� ���� �ֽø� Ȯ���� ó���� �帮�ڽ��ϴ�.

11������ �� ���� �����ڰ� �������� �ϴ� �ٷ��Դϴ�.



��ǥ�� 2�ֵ��� ȸ���� ���� ��� ��÷�ڿ��� ���ܵ˴ϴ�.���������� �ϴ�

���� �ȳ� �帳�ϴ�.^^



*����ǰ�� ���ҷ� �߼۵˴ϴ�.



��÷�ڴ� �Ʒ� ������ �ۼ��ϼż� ��� �ּ���.

����-

�ּ�-

�����ȣ-

��ȭ��ȣ-

���޻���-
',null,null,76,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (247,410,'test ��������','test','1633437049809.jpg','18415d19.jpg',48,1,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (246,385,'111','111','site04.jpg','1ca0d67d.jpg',15,1,to_date('21/10/05','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.NOTICELIKELY
SET DEFINE OFF;
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (236,435);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (224,435);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (222,435);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (226,435);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (231,435);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (247,410);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (240,385);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (241,408);
Insert into SPRINGWEFIT.NOTICELIKELY (NBNUM,MEMBERNUM) values (239,435);
REM INSERTING into SPRINGWEFIT.NOTICEREPLY
SET DEFINE OFF;
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (72,219,'�Ĵ� ���� ������ �� �¾ƿ�? 3�ϱ����� ����ǰ� ���� ������� �ϳ��� �Ⱥ�����',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (73,219,'�׻� ����� �ǰ� �� �ݿ����ּż� ����帳�ϴ� ����',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (74,225,'�������� �̸� �� �����׿�',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (75,225,'�ֹ� 8���� �Ŀ�����!!!!',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (76,225,'���̾�Ʈ �����ϰ� ������ �ø��Կ� ������',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (77,224,'���� �� �Ͻ� �� ���ƿ�. ������ ���� �ʹ� �����ƾ��;;',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (78,224,'Ư�� ���� ��õ���ڵ� ������ �ƴ� ô �ϸ鼭 �ø��� ��¥ ���� �ȴ��󱸿�',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (79,223,'���� �ʼ� �ΰ���?',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (80,223,'1�� ���� ������',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (84,221,'���� ��ź���� �𸣴� ��� �ʹ� ���� �� ���ƿ�. �̰� ��۵Ǹ� ���̵� �ƽð� �ǰ���?����',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (82,222,'�ø� �� ���� �� �±� �ҰԿ�~',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (83,221,'�� �̰� ���� ������̿��� ������ �̰� ���̵� �� ������..',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (85,220,'���� �������������� ���� ������ �޲ٹ�',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (86,220,'�� �ٵ� �������� ���� ��������? ź���� ���� �����׿� ������',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (87,219,'���� �� �� ������ �ϴ� �� ��������',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (88,219,'� ��Ͻ� � ����Ʈ���� ���ã�� ��ǥ ������ ����ó�� �������� ������� �߰� ���ּ���',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (89,235,'�� ������û �ҰԿ�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (90,235,'�ı� �ۼ��� �ϸ� �ǳ���?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (91,234,'�ܸ��� ��� ���� ���� �ñ��ؿ�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (92,234,'�Ѱ��� �������� ��� �ſ�?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (93,233,'�� �̹� �����ߴµ��̤�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (94,233,'���� ȸ���� ���� �ּ���',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (95,232,'������ �ذ����ּż� �����մϴ�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (96,231,'������ ���θ�� �ٽ� �������ּ��� �ƽ�����̤�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (97,230,'�������� �ϴ°ſ���?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (98,229,'�� Ż���ϰ� ������ ���� ��� �ϴ°ǰ���?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (99,229,'�������� �����ּ���',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (100,227,'�������� ���� ���ε� ������',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (101,227,'����ī�� �ٵ� �߱޹������� ��������',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (102,228,'��� ������ ����ֳ���?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (103,226,'�� 5�� ������ �ֹ��ߴµ� ��� �������?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (104,226,'��� ���� �� Ȯ�����ּ���',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (105,225,'�����̳� ������� ���� ���� �����ϳ׿�~',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (106,225,'���� �̺�Ʈ ���� ���ּ���',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (107,220,'�� ���� ������ �޲ٹ̴�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (108,221,'�ٵ� ��ź������ �ݴ��ϴ� �ǻ�鵵 ������ �׷� �ǰߵ鵵 �� �ݿ��ż� ��������?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (109,223,'�ڰԿ� ���������� �÷Ⱦ�䤻�� ���ƿ� ���� �����ּ���',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (110,240,'����/����ø�����/23242/010-2342-3333/�����մϴ�~',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (111,239,'������ ���� ������ ���� �ֹ� �Ϸ� ���ϴ�',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (112,238,'�̰� ��¥ ���ƿ� ������ ���� �� �����ϴ�',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (113,237,'�� �̰Ÿ� ������ �� �Ծ �ǳ׿� ����',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (114,237,'���������� �ְ���',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (115,236,'�� ���� ���� �̰� �޾Ҿ��',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (116,236,'�ٵ� �����ϼ���',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (117,240,'����÷/����ü��빮��/2432/010-2343-3432/����',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (121,238,'�̰� ��¥ �ְ�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (119,240,'���� ���� ��ȸ�� �븱�Կ��',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (128,247,'�޲ٹ�',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (122,234,'�̰� JMT.. �� �ֹ��Ϸ� ���߰ڴ�',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (123,237,'��...��¥���հڴ�',492,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (126,244,'2) �� ����',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (127,244,'sfdvdsfv',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (129,247,'�ٹ�',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (130,248,'�� ���� ���ϰڳ�',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (131,248,'�� �ߵǳ�',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (132,247,'�к��ϸ� �� �ٲ��;',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (133,248,'�� �ٲ��',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (134,248,'�� ���� �� �� ª��',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (135,239,'�ٵ� �̰� ���',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (136,247,'�����������K',514,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (70,219,'� �Ҹ� Į�θ��� �� �ȶߴ� �ſ���? �߰� ���ּ���̤�',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (71,219,'� ��� �м��̶� �׷����� �ٽ� ����ֽø� �����մϴ�~',415,to_date('21/10/02','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.NOTICEREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.NOTICEREPORT (NBNUM,MEMBERNUM) values (241,408);
REM INSERTING into SPRINGWEFIT.PLACEBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (76,410,'��������ü������','���� ���ƿ�
�ٵ� �ڷγ� ���ķδ� �̿������� ���� �ż� �ƽ�����','��������ü������.jfif',null,null,null,null,'f0e343ef.jfif',null,null,null,null,'������','���� ������ �����ŷ� 29',37.552013,126.912133,9,1,to_date('21/10/02','RR/MM/DD'),'��������ü������');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (72,512,'���Ǳ� ������','���Ǳ�������ü������','�ٿ�ε�.jpg',null,null,null,null,'e8ff6eff.jpg',null,null,null,null,'����','���� ���Ǳ� �������3�� 37',37.473067,126.960315,6,1,to_date('21/10/02','RR/MM/DD'),'1');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (74,423,'�����ִ�','�����ΰ� �� �׷���
����� �ߴµ� Ȧ���� ��� ���� �ϴ� ��','�����ִ�.jfif',null,null,null,null,'7944c6da.jfif',null,null,null,null,'��Ÿ','���� ������ ����� 164',37.553771,126.946269,6,1,to_date('21/10/02','RR/MM/DD'),'�����ִ�');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (75,423,'���� ��Ʈ ���� ������','���� ��Ʈ ���� ������
','������.png',null,null,null,null,'cd641d22.png',null,null,null,null,'����','���� ������ ���ﵿ 810',37.555153,126.94272,16,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (77,410,'���빮�� �Ȼ�','������ ���� �� �մϴ�.
�׷��� Ư�� ��Ʈ�� ���ȭ �����ô°� ������ �� ���ƿ�.','���빮�� �Ȼ�.jfif',null,null,null,null,'5bf9e7af.jfif',null,null,null,null,'���','���� ���빮�� ������ �� 2-1',37.573121,126.945976,12,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (78,410,'���Ǽ� ����','�޸��� ������
�ڷγ� ���ķ� ����� �ʹ� ���������.','���Ǽ� ����.jpg',null,null,null,null,'98a95439.jpg',null,null,null,null,'�޸���','���� ������ ������ 190-1',37.559411,126.924879,9,1,to_date('21/10/02','RR/MM/DD'),'���Ǽ�����');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (79,410,'�Ե� ���̽� ��ũ','����� �ʹ� ���ƿ�.','�Ե�����_���̽���ũ_2.png',null,null,null,null,'a4db9a5c.png',null,null,null,null,'������Ʈ','���� ���ı� �ø��ȷ� 240',37.51131,127.098142,6,1,to_date('21/10/02','RR/MM/DD'),'�Ե� ���̽� ��ũ');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (80,392,'���� �����ؿ�','���� ����',null,null,null,null,null,null,null,null,null,null,'����','���� ���� �Ǳ�1�� 3',36.318414,127.452549,10,0,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (81,393,'������ ��2���������� ������ ��û ���׿� ','������������ ���� ������ �� �� �������Ű��ƿ� 
��õ�մϴ� ','��1.png','��2.jpg',null,null,null,'3befaa87.png','3636e9e8.jpg',null,null,null,'����','���� �������� ��ȸ��� 615',37.526692,126.902731,27,2,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (82,393,'�迬�� ������ �̿��ϴ� �� ���̽���ũ�� �ְ���','���￡�� �� �������� �ְ� �ƴѰ��� �񱳺Ұ�','��1.jpg',null,null,null,null,'66dbda16.jpg',null,null,null,null,'������Ʈ','���� ��õ�� �Ⱦ�õ�� 939',37.530728,126.879233,12,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (83,393,'���ǵ� �Ѱ��������� ���� �����ϽǺ�','����ũ�� �����մϴ�

ī�� ���� ä�ù� �������ּ���
http://.kakao.com/3243902df30423/',null,null,null,null,null,null,null,null,null,null,'�޸���','���� �������� ���ǵ��� 330',37.526348,126.933595,8,0,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (84,415,'�����Ŵ� ���ǵ� �Ѱ� ���� ����','�ָ� ������ ������','���ǵ� �Ѱ�.jfif','���ǵ� �Ѱ�2.jfif',null,null,null,'4e7a0ece.jfif','8e2abe4f.jfif',null,null,null,'������','���� �������� ���ǵ��� 83',37.533661,126.925399,10,2,to_date('21/10/02','RR/MM/DD'),'���ǵ� �Ѱ� ����');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (85,438,'��꿡�� �䰡 �� ������ ��õ�մϴ� ������','���� dc 10% �� �ֵ��� �մϴ�
��� �޸� �� �̸� �˷������',null,null,null,null,null,null,null,null,null,null,'��Ÿ','���� �������� ��ȸ���53�� 24-4',37.527491,126.906666,14,0,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (107,514,'����','����','site04.jpg',null,null,null,null,'66118d5d.jpg',null,null,null,null,'���','���� ������ ���μ�ȯ�� 2907',37.491961,127.057095,5,1,to_date('21/10/05','RR/MM/DD'),'����');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (87,438,'���￡�� �ְ� ����� ����Ŭ��','��μ� �׷��� �Ѿ縸�ѵ��� ���� ����',null,null,null,null,null,null,null,null,null,null,'����','��� ���� ���籸 �����1643���� 164',37.657494,126.863513,127,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (102,1,'�Ͼǻ� 1�ð� �ڽ��� �� ���׿�','1�ð��� �ϻ���� �� ���׿� ~~',null,null,null,null,null,null,null,null,null,null,'���','���� ���α� �Ͼǻ�� 48',37.59517,126.970171,25,1,to_date('21/10/05','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (105,514,'test','ette','site01.jpg','site02.jpg',null,null,null,'a920a542.jpg','f49e8fcd.jpg',null,null,null,'������','���� ������ ������� 708',37.52444,127.015933,11,3,to_date('21/10/05','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (110,509,'^^','^^','main (1).png',null,null,null,null,'8dab0748.png',null,null,null,null,'������','���� ������ ���μ��� 5',37.518211,127.02315,4,1,to_date('21/10/05','RR/MM/DD'),'111');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (109,1,'��� ������ ','������ ���� ���ε� �ϴ��󱸿�~
','gym2.jpg',null,null,null,null,'6a3e7291.jpg',null,null,null,null,'ȨƮ��Ʈ','���� �������� ��ȸ��� 595',37.527024,126.900516,5,1,to_date('21/10/05','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (111,392,'�׽�Ʈ','�׽�Ʈ',null,null,null,null,null,null,null,null,null,null,'���','���� ���빮�� �źϰ�� 3',37.581144,126.926638,3,0,to_date('21/10/06','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (112,392,'����','����',null,null,null,null,null,null,null,null,null,null,'�޸���','���� ���빮�� �𷡳��� 430',37.583617,126.942253,7,0,to_date('21/10/06','RR/MM/DD'),null);
REM INSERTING into SPRINGWEFIT.PLACELIKELY
SET DEFINE OFF;
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (78,492);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (80,392);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (87,492);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (87,435);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (95,435);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (87,438);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (83,406);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (96,435);
Insert into SPRINGWEFIT.PLACELIKELY (PBNUM,MEMBERNUM) values (102,1);
REM INSERTING into SPRINGWEFIT.PLACEREPLY
SET DEFINE OFF;
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (60,78,'���� ��å�� �ʹ� ���� �������� �������� ���ְ��ϴ�',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (61,75,'���������� ���� �������� �־��׿� ',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (62,77,'�Ȼ� �ʹ� ���� ���������� ���� ���ɱ浵 ¿..',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (63,84,'�ָ� ������ ���� Ÿ�Ƿ���? ',438,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (64,82,'���￡�� �ְ��� �������� ���ع���..',438,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (65,83,'����л��� �����Ѱ���? ���ǵ����� ������л��Դϴ�',438,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (66,82,'������� ���� �����µ�.. �ǰ���ͳ׿�',509,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (67,87,'���� ���� ���Ǻ� �Ȱ�ʴϲ�...',428,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (68,85,'��� ���� ���ι޾ƿ� ���� �䰡�� �����ؾ��ϴµ�',428,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (69,84,'�� �� ���� ������ Ÿ��� �ߴµ� �շ��ϽǷ���?',423,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (70,81,'�� �� ���� 660���� Ÿ�� �������ٰ� �ôµ�.. ������ͳ׿�',411,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (71,85,'���� �˷��ּ��䤻��',423,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (89,87,'����',398,0,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (73,75,'�׷� �п��̶��� �����ٴ�..',418,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (74,81,'�ǹ��� ���ƺ��̳׿�',492,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (75,78,'����ʹ�..',492,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (87,95,'��������������',435,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (77,92,'�ȳ��ϼ���',385,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (88,95,'������������������������',435,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (86,81,'^^',406,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (107,110,'^^',392,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (108,110,'^^^',392,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (106,102,'�οջ� ���� ���� ����~',1,0,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (109,105,'$#',392,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (110,87,'dd',385,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (58,80,'������ �̸��� ������? ����ͳ׿�~',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (59,79,'��Ϳ��',393,0,to_date('21/10/02','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.PLACEREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.PLACEREPORT (PBNUM,MEMBERNUM) values (95,435);
Insert into SPRINGWEFIT.PLACEREPORT (PBNUM,MEMBERNUM) values (96,435);
Insert into SPRINGWEFIT.PLACEREPORT (PBNUM,MEMBERNUM) values (102,1);
Insert into SPRINGWEFIT.PLACEREPORT (PBNUM,MEMBERNUM) values (71,385);
REM INSERTING into SPRINGWEFIT.SPACTIALTEST
SET DEFINE OFF;
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.482479,126.646991);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.482704,126.648998);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.507551,126.760504);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.476208,126.648195);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.471184,126.646585);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.482479,126.646991);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.482704,126.648998);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.507551,126.760504);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.476208,126.648195);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.471184,126.646585);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.482479,126.646991);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.482704,126.648998);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.507551,126.760504);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.476208,126.648195);
Insert into SPRINGWEFIT.SPACTIALTEST (X,Y) values (37.471184,126.646585);
--------------------------------------------------------
--  DDL for Index PK_NOTICEBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_NOTICEBOARD" ON "SPRINGWEFIT"."NOTICEBOARD" ("NBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FREEREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_FREEREPLY" ON "SPRINGWEFIT"."FREEREPLY" ("FRNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DIETBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_DIETBOARD" ON "SPRINGWEFIT"."DIETBOARD" ("DBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_COURSEREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_COURSEREPLY" ON "SPRINGWEFIT"."COURSEREPLY" ("CRNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PLACEREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_PLACEREPLY" ON "SPRINGWEFIT"."PLACEREPLY" ("PRNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_COURSEBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_COURSEBOARD" ON "SPRINGWEFIT"."COURSEBOARD" ("CBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MARKETREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_MARKETREPLY" ON "SPRINGWEFIT"."MARKETREPLY" ("MRNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FREEBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_FREEBOARD" ON "SPRINGWEFIT"."FREEBOARD" ("FBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DIETREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_DIETREPLY" ON "SPRINGWEFIT"."DIETREPLY" ("DRNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICEREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_NOTICEREPLY" ON "SPRINGWEFIT"."NOTICEREPLY" ("NRNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MARKETBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_MARKETBOARD" ON "SPRINGWEFIT"."MARKETBOARD" ("MBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PLACEBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_PLACEBOARD" ON "SPRINGWEFIT"."PLACEBOARD" ("PBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRINGWEFIT"."PK_MEMBER" ON "SPRINGWEFIT"."MEMBER" ("MEMBERNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Function DISTANCE_WGS84
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SPRINGWEFIT"."DISTANCE_WGS84" (H_LAT IN NUMBER, H_LOT IN NUMBER, T_LAT IN NUMBER, T_LOT IN NUMBER)
RETURN NUMBER DETERMINISTIC
IS
BEGIN
  RETURN ( 6371.0 * ACOS(
    LEAST(1,
     COS( RADIANS(H_LAT) ) * COS( RADIANS(T_LAT) )
     * COS(RADIANS(T_LOT) - RADIANS(H_LOT) )
     + SIN( RADIANS (H_LAT) ) * SIN(RADIANS( T_LAT) )                                    
    )
  ));
END;

/
--------------------------------------------------------
--  DDL for Function RADIANS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SPRINGWEFIT"."RADIANS" (nDegrees IN NUMBER) 
RETURN NUMBER DETERMINISTIC 
IS
BEGIN
  /*
  -- radians = degrees / (180 / pi)
  -- RETURN nDegrees / (180 / ACOS(-1)); but 180/pi is a constant, so...
  */
  RETURN nDegrees / 57.29577951308232087679815481410517033235;
END RADIANS;

/
--------------------------------------------------------
--  Constraints for Table MARKETLIKELY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."MARKETLIKELY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETLIKELY" MODIFY ("MBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COURSEREPORT
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."COURSEREPORT" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEREPORT" MODIFY ("CBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICEREPLY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."NOTICEREPLY" ADD CONSTRAINT "PK_NOTICEREPLY" PRIMARY KEY ("NRNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."NOTICEREPLY" MODIFY ("NRREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEREPLY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEREPLY" MODIFY ("NRCONTENT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEREPLY" MODIFY ("NBNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEREPLY" MODIFY ("NRNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIETREPORT
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."DIETREPORT" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETREPORT" MODIFY ("DBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREELIKELY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."FREELIKELY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREELIKELY" MODIFY ("FBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COURSELIKELY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."COURSELIKELY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSELIKELY" MODIFY ("CBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICEBOARD
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."NOTICEBOARD" ADD CONSTRAINT "PK_NOTICEBOARD" PRIMARY KEY ("NBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."NOTICEBOARD" MODIFY ("NBREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEBOARD" MODIFY ("NBIMAGECOUNT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEBOARD" MODIFY ("NBLOOKCOUNT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEBOARD" MODIFY ("NBTITLE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEBOARD" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEBOARD" MODIFY ("NBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MARKETREPLY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."MARKETREPLY" ADD CONSTRAINT "PK_MARKETREPLY" PRIMARY KEY ("MRNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."MARKETREPLY" MODIFY ("MRREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETREPLY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETREPLY" MODIFY ("MRCONTENT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETREPLY" MODIFY ("MBNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETREPLY" MODIFY ("MRNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLACEBOARD
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" ADD CONSTRAINT "PK_PLACEBOARD" PRIMARY KEY ("PBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("PBREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("PBLONGITUDE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("PBLATITUDE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("PBADDRBASIC" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("PBCATEGORY" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("PBTITLE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEBOARD" MODIFY ("PBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLACEREPORT
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."PLACEREPORT" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEREPORT" MODIFY ("PBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREEREPLY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."FREEREPLY" ADD CONSTRAINT "PK_FREEREPLY" PRIMARY KEY ("FRNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."FREEREPLY" MODIFY ("FRREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEREPLY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEREPLY" MODIFY ("FRCONTENT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEREPLY" MODIFY ("FBNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEREPLY" MODIFY ("FRNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICEREPORT
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."NOTICEREPORT" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICEREPORT" MODIFY ("NBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIETBOARD
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."DIETBOARD" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETBOARD" ADD CONSTRAINT "PK_DIETBOARD" PRIMARY KEY ("DBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."DIETBOARD" MODIFY ("DBREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETBOARD" MODIFY ("DBTITLE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETBOARD" MODIFY ("DBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MARKETBOARD
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."MARKETBOARD" ADD CONSTRAINT "PK_MARKETBOARD" PRIMARY KEY ("MBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."MARKETBOARD" MODIFY ("MBREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETBOARD" MODIFY ("MBPRICE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETBOARD" MODIFY ("MBTITLE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETBOARD" MODIFY ("MBTYPE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETBOARD" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETBOARD" MODIFY ("MBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLACELIKELY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."PLACELIKELY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACELIKELY" MODIFY ("PBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREEREPORT
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."FREEREPORT" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEREPORT" MODIFY ("FBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLACEREPLY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."PLACEREPLY" ADD CONSTRAINT "PK_PLACEREPLY" PRIMARY KEY ("PRNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."PLACEREPLY" MODIFY ("PRREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEREPLY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEREPLY" MODIFY ("PRCONTENT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEREPLY" MODIFY ("PBNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."PLACEREPLY" MODIFY ("PRNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIETLIKELY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."DIETLIKELY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETLIKELY" MODIFY ("DBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICELIKELY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."NOTICELIKELY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."NOTICELIKELY" MODIFY ("NBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MARKETREPORT
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."MARKETREPORT" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MARKETREPORT" MODIFY ("MBNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COURSEBOARD
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" ADD CONSTRAINT "PK_COURSEBOARD" PRIMARY KEY ("CBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" MODIFY ("CBREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" MODIFY ("CBCATEGORY" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" MODIFY ("CBYOUCODE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" MODIFY ("CBTITLE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" MODIFY ("CBNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEBOARD" MODIFY ("CBLOOKCOUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("MEMBERNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("SESSIONID" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERMANAGERYN" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERCODE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBEREMAILYN" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERHUMANYN" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERCONNDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERREGISTDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERPASSWD" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERNICK" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBEREMAIL" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."MEMBER" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COURSEREPLY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."COURSEREPLY" ADD CONSTRAINT "PK_COURSEREPLY" PRIMARY KEY ("CRNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."COURSEREPLY" MODIFY ("CRREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEREPLY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEREPLY" MODIFY ("CRCONTENT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEREPLY" MODIFY ("CBNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."COURSEREPLY" MODIFY ("CRNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIETREPLY
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."DIETREPLY" ADD CONSTRAINT "PK_DIETREPLY" PRIMARY KEY ("DRNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."DIETREPLY" MODIFY ("DRREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETREPLY" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETREPLY" MODIFY ("DRCONTENT" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETREPLY" MODIFY ("DBNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."DIETREPLY" MODIFY ("DRNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREEBOARD
--------------------------------------------------------

  ALTER TABLE "SPRINGWEFIT"."FREEBOARD" ADD CONSTRAINT "PK_FREEBOARD" PRIMARY KEY ("FBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRINGWEFIT"."FREEBOARD" MODIFY ("FBREGDATE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEBOARD" MODIFY ("FBTITLE" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEBOARD" MODIFY ("MEMBERNUM" NOT NULL ENABLE);
  ALTER TABLE "SPRINGWEFIT"."FREEBOARD" MODIFY ("FBNUM" NOT NULL ENABLE);
