--------------------------------------------------------
--  파일이 생성됨 - 수요일-10월-06-2021   
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
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (175,407,'수영 호흡법 (음파, 자유형 측면호흡 Freestyle Stroke Breathing)','호흡은 모든 운동에서 가장 중요한 부분이고,
내 연습량을 소화하려면
올바른 호흡법을 갖고 있어야 합니다.

특히 호흡이 편해지면 연습량을 늘리기에도 좋죠.

한번 같이 연구해봅시다.','7MP5OR5g1Qk','수영',6,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (174,407,'수영 왕초보 탈출, 6분 기초 강습!!','호흡법, 발차기, 뜨기와 같은 기본 동작이 포함된 수영 기초 강습 영상입니다.
수린이 여러분들! 용기 내서 수영 시작해보세요~!!

도움이 되신 분들 좋아요,
어울림TV 함께 해주실분들은 구독 부탁드립니다.

항상 좋은 영상으로 만나는 어울림TV가 되겠습니다. 감사합니다.','bPWqO20Xzco','수영',6,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (176,407,'#1. 배드민턴 강의 - 자세가 반이다. 클리어 스윙, 타점, 이제 이해하고 배우자. Let''s learn Clear Swing with understanding.','안녕하세요 윤이콕TV 유니크한 코치 윤주영코치입니다.
이번시간 첫 강의 영상으로 인사드립니다. 
클리어,드롭,스매싱의 스윙인 오버헤드 스트로크 강의 영상입니다.
배드민턴을 즐기시다가 스매싱이나 클리어 등 뒷볼 상황에서 실수가 많으신 분들은 분명 기본적인 자세가 불완전한 상태이기 때문에 많은 실수를 한다고 생각합니다. 이 영상을 보고 매일 10분만 투자해서 연습을 한다면 큰 도움이 될것입니다.

Hi guys! This is the first lecture video of this time.
It is the overhead stroke lecture which is the swing of clear, drop, smashing.
When you play Badminton, If you are mistaken in bad situation such as smashing or clearing, I think you make many mistakes because the basic posture is incomplete. If you watch this video and practice for 10 minutes every day, it will be a big help.','RtZZp7q1IUg','배드민턴',6,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (177,407,'#2. [ENG] 스매싱스텝! 4분안에 마스터하자 - Let''s learn smash step in four minutes.','모두가 원하는 강한 스매쉬! 
강한 스매쉬는 안정적인 스탭에서 나옵니다. 
안정적인 스탭을 위해서 4분만 투자해보세요 ^^

배드민턴을 배울때 기본기가 정말 중요합니다. 기본기가 없는 상태에서 배드민턴을 무작정 배우면 나중에 실력향상이 더딜 뿐더러 한번 잡힌 습관은 다시 고치기 정말 어려우실 겁니다.
레슨 받기 전에 영상 한번씩 확인하시고 레슨받으시면 훨씬 큰 도움 될 것입니다 ^^','YH2_oq4HQ0w','배드민턴',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (178,407,'#3. 배드민턴 후위 스탭 - 강한 스매싱은 안정된 스탭에서 부터 시작된다. 쉽게 배우는 배드민턴 후위 스텝!','안녕하세요.
이번 시간에는 배드민턴 후위 스텝 레슨을 준비해봤습니다.
배드민턴 경기 도중 내 머리 뒤로 날아가는 공에 대한 대처가 늦는 경우가 많이 있을거라고 생각됩니다. 
스탭이 완벽하게 숙지되지 않은 상태에서 배드민턴을 하면 강한 스매싱을 구사하기 힘들 뿐만 아니라, 잘못하면 부상으로 이어질 수 있기 때문에 꼭 스텝을 정확하게 숙지 및 이해하고 배드민턴을 치셔야 합니다. 이번 강의를 통해서 스매싱으로 연결되는 배드민턴 스텝을 한번 배워보도록 하겠습니다.','nyukLGa9iBQ','배드민턴',3,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (179,407,'#4. 배드민턴 스탭 - 코트에서 빨리 뛰는 꿀팁 대방출 2탄!!!','많은 분들이 어려워하시는 배드민턴 스탭 영상을 준비해봤습니다.
이번 영상은 지난 영상에 이어서 후위 스탭을 준비했습니다.
쉽지 않겠지만, 많이많이 연습하셔서 빠르게 이동하시면 좋겠습니다.

처음에는 어색하게 느껴지실수도 있지만 연습을 계속 하시다보면 분명 익숙해지시는것을 느끼실 수 있으실거에요 ^^
연습이 최고입니다 ^^','Gz6me_Hq3Ys','배드민턴',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (180,407,'스쿼시 배워본적 없는 분들에게 강추하는 혼자 연습하는 방법!!','[스쿼시용품 | 영티가 사용하는 라켓 ] 
라켓마켓▶ http://racketmarket.co.kr/

[스쿼시선수의 일상이 궁금하다면?] 
영티 인스타 ▶https://www.instagram.com/yhtv0/

[스포츠양말 | 영티가 착용한 양말] 
COMPORT▶ https://comport.kr/

[스쿼시센터(코트)안내]  
▶http://map.squash.pe.kr/','3TMQglOabwk','스쿼시',7,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (181,407,'스쿼시 그립잡기','올바른 그립잡기와 이유를 설명드립니다.','_3C0Xn6dz5I','스쿼시',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (182,407,'[테니스 포핸드] 한쌤의 포핸드 기초부터 1편','포핸드 기초부터 다시 시작하는 포핸드 레슨입니다!','GyISMO3Hs_Q','기타',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (183,407,'[테니스 포핸드] 한쌤의 기초부터 2편 스윙,스텝,왼손 만들기!','스윙,스텝,왼손 과 스윙 만드는 방법입니다!','ovV6fTOGjyM','기타',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (187,407,'스케이트 멈추는 법 연습 순서',null,'Y4JPIrZyq1g','스케이트',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (185,407,'빙상장 처음 가면 무조건 이것부터 해야한다? 스케이팅 걸음마 배우기 ｜ 우당탕탕 스케이트 ep.2','안녕하세요. 스포츠 이야기를 전해주는 ''스포츠텔러'',  쇼트트랙 선수 곽윤기 입니다. 

빙상장 처음 가시면, 바로 스케이트 타시죠? 하지만 미끄러운 빙상장에 중심 잡기도 어렵고,  서 있기도 힘들어서 많이 무서우셨을 거예요!

이제는 빙상장 가시자마자 이건 무조건 따라하세요!
발로 걷는 것 처럼 연습하시고, 벽잡고 걸어보시고 그 다음엔 반원 항아리!
이것도 다 숙지가 됐다고 생각하시면 원을 작은 것부터 크게 순서대로 그려보세요!

그러면 빙상장에서 스케이트 타는 거 어렵지 않아요! 

다음 편에는 브레이크 잡는 법과 넘어지는 법 알려드릴테니, 빙상장으로 많이 놀러오세요!!','NZchsYe8_oo','스케이트',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (186,407,'넘어져도 세워주려고 하지말라고? 스케이팅 멈추는 방법, 스케이트 브레이크 하는 법, 쇼트트랙 선수가 알라쥼 ｜우당탕탕 스케이트 ep.3','어느덧 스케이트 배우기 세번째 시간입니다!

스케이팅을 할 줄 알았다면, 이제 멈출줄도 알아야겠죠?
멈추는 방법에는 여러가지가 있습니다만, 일단 초보자 분들이 보신다 생각하고 단계별로 브레이크를 배워봅시다!

첫번째는, 뒷발을 90도로 만들어서 멈추기!
두번째는, 콩콩콩콩 으로 멈추기! (콩콩 멈추기로 이름을 지어볼까요?)
세번째는, 멋있게 슬라이딩 인데... 이건 다음 시간에 배워봐요^^

그리고 넘어질때도 잘 넘어져야 안 다칩니다!
스케이트는 뒤로 넘어질 경우에 머리나 허리, 엉덩이 등 부상이 올 경우가 있으니 앞으로 넘어지셔야 해요! 

앞으로 넘어지는 방법 배우고, 일어날때는 혼자 일어납시다! ','4GqJrdyUKMs','스케이트',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (188,407,'포핸드 탑스핀 연습동영상 테니스','동호인 아니에요.. ㅠㅠ','Ao7bNB4E3GQ','기타',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (189,407,'필라테스 개인레슨 받고 가세요? 전신 구석구석 자극을 느낄 수 있어요 (Whole body workout)','안녕하세요 :) 
2주만에 인사드려요! TMI인데..이사준비로 맘이 바빠지니까 영상에서도 그런 모습이 담기는거 같더라구요 ㅠㅠ 그래서 결국 지난주에 찍은 영상은 마음에 안들어 삭제하구 이사끝내고 제대로 찍자! 해서 이렇게 이주만에.. 새로운 공간에서 인사드려요 ㅎㅎ 

오늘 운동은 초급자용 전신 필라테스 루틴이구요! 악! 너무 힘들어!!하는 느낌보다는 
잔잔하게 모든 근육을 쓰면서 땀이 송글송글 맺히는..운동이 끝나면 아주 개~~운한 느낌이 드실거에요 ^-^ ! 재밌게 잘 따라와주세용 ㅎㅎ
그리고 요즘 많이 습하고 덥지만 식사 잘 챙겨드시면서 항상 건강챙기세요 :)!!!

(제 인스타그램도 구경오세요??)
https://www.instagram.com/bbang_neu/

[동작순서]
1. 목 & 어깨 스트레칭
2. 하체스트레칭
3. 스파인 트위스트
4. 컬업
5. 싱글레그 스트레치
6. 리버스 컬업
7. 컬업 & 트위스트
8. 힙 익스텐션
9. W 동작
10. 소 & 고양이 스트레칭
11. 숏트 플랭크
12. 풀 플랭크
13. 롤링 라이크 어 볼
14. 티저','sb51gF18cYo','필라테스',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (190,407,'필라테스 입문자를 위한 초급 레슨? 쉽고 자세한 설명과 함께해요｜전신, 코어 강화 루틴','안녕하세요!
오늘은 초급자분들을 위한 기초 전신 필라테스 루틴을 준비해봤어요 :)
필라테스에 관심이 있어서 한 번 쯤은 해보고싶으셨던 분들도 좋구요,
자세한 설명과 함께 동작 하나하나 섬세하게 운동하고 싶으셨던 분들도 함께 해주시면 좋을 거 같아요~! 
저는 요즘 중-고강도 운동도 즐겨하지만 이렇게 정적으로 흘러가는 필라테스도 주 2-3회 빠지지 않고 해주고 있어요! 
호흡과 함께 동작 하나씩 컨트롤 하다보면 몸 속 깊은 곳에서부터 힘이 생기는 느낌이랄까요~?ㅎㅎ 
많은 분들이 꼭 함께 느끼셨으면 좋겠어요 ??
운동하시면서 궁금하신 부분은 언제든지 댓글로 질문 남겨주시구요
이제 선선해진 바람이 아침저녁으로 불어오는데 큰 일교차에 감기 조심하세요??','gcpiKiweo2I','필라테스',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (191,407,'필라테스 개인레슨 받고 가세요? 기본기부터 탄탄히!! (Whole body Workout)','안녕하세요 ^-^
오늘은 초급자분들을 위한 전신운동을 준비했어요! 
영상 초반부에 말씀드리지만 등척성운동을 위주로 진행될 건데요~! 
관절의 움직임이 크지 않기 때문에 초보자분들도 부담없이 따라할 수 있는 동작들이에요! 
어쩌면 너무 쉽다 자극안오는데! 라고 생각하실 수도 있는데요! 
꼭 흉곽호흡과 함께 해주셔야 해요! 그래야 그 효과가 커지고 자극도 배로 느끼실 수 있을거에요 :) 
동작들을 어느정도 마스터하실 때쯤 지금처럼 10초가아닌
동작을 50초에서 1분동안 버티는 영상으로도 준비할 생각이에요! 
꾸준히 하셔서 저와 나중에 동작별 1분 챌린지도 같이 해봐요 ^-^ ?

(제 인스타그램도 구경오세요??)
https://www.instagram.com/bbang_neu/

[동작순서]
1. 흉곽호흡법
2. 사이드 스트레칭
3. 등 스트레칭
4. 등, 어깨 스트레칭
5. 푸쉬업
6. 버드독
7. 컬업
8. 브릿지
9. 토텝
10. 원 레그 레이즈
11. 사이드 플렝크
12. 레그 리프트
13. 슈퍼맨','3zRMZ4Uijlo','필라테스',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (192,407,'지금까지 이런 디테일은 없었다! 그립잡는 법 [ 배드민턴 강의 1화 ]','안녕하세요 ! 나는 김대표입니다 !
박코치와 함께
배드민턴의 A부터 Z까지 !
함께 배워보시죠!','-2tkidRS2eU','배드민턴',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (193,407,'스매쉬 세지는 스냅훈련 ! [ 배드민턴 강의 2화 ]','안녕하세요 ! 나는 김대표입니다 !
박코치와 함께
배드민턴의 A부터 Z까지 !
함께 배워보시죠!','CGLiPLvPupU','배드민턴',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (194,407,'자전거의 기본, 올바른 페달링을 하는 방법','#자전거입문 #페달링 #댄싱','J0fmUEw_o2M','자전거',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (195,407,'오르막을 오를 때 절대로 해서는 안되는 6가지 | 업힐','#자전거입문 #오르막 #업힐','VD3KfOsYM88','자전거',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (196,407,'자전거 기초강좌 01 - 스탠딩 Standing - 이창용 선수 MTB 산악자전거 기초 정읍시자전거협회','정읍시자전거협회에서 자전거 초보분들을 위해 영상을 제작했습니다. mtb선수 이창용과 함께 즐겁게 산악자전거 기술을 연마하세요. 1편 자전거 기초-스탠딩 입니다.','nc0VbTxP-gU','자전거',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (197,407,'달리기 빨라지는법 1편 - 100M 육상 스타트 자세강의, 일반인 센서기록측정 (체대입시&경찰체력)','#달리기 잘하는법? 달리기자세? 

前전국생활체육 #육상 100m, 200m 1위 출신 
#리쌤 이 알려주는 달리기 강의 1편영상.','xStzJPrbWt0','달리기',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (198,407,'달리기 빨라지는법 2편 - 100M 육상 전력질주 강의 및 달리기 자세 교정 (체대입시 & 공무원체력)','#달리기 잘하는법? 달리기자세? 
前전국생활체육 #육상 100m, 200m 1위 출신 
#리쌤 이 알려주는 달리기 강의 2편영상.','wlWiHdrpHJM','달리기',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (199,407,'달리기할 때 무릎 통증? 미드풋도 미드풋 나름! 올바른 미드풋 러닝 착지 + 연습 방법 (러너들 필청)','1:1 온라인 상담 문의: mrphysio7@gmail.com','hGZbetOam4Q','달리기',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (200,407,'초보 러너들을 위한 기본 러닝 자세를 알려드립니다.','이번 영상은 많은 초보 러너분들이 가지고 있는 안 좋은 자세에 대해서
알려드리고 왜 많은 분들이 힐스트라이크 주법으로 달리는 이유에 대해서 
설명에 드리겠습니다.

00:00 INTRO
00:12 러닝기본자세
00:55 스트레칭
01:47 러닝자세교정
04:10 힐스트라이크에 대한 이야기
05:59 초보러너에게 미드풋을 추천 안하는 이유','nnmiUT8CXjQ','달리기',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (201,407,'건강한 등산을 하는 법은 따로 있다?! 필수 시청! [지식 클립]','우리나라는 지형의 특성상 산이 많기 때문에 국민들이 가장 선호하는 운동이 등산이라고 합니다. 개인뿐만 아니라 기업들도 각오를 다지고 계획을 세우기 위해 신년산행 등을 진행하는 경우도 많습니다. 이번 강의를 통해 등산에 대해 올바르게 알고 있는지 다시 점검해 보고, 등산을 통해 건강을 지키기 위한 방법 등에 대해 알아봅니다. 등산을 통해 건강 지키기를 실천해 보시기 바랍니다.','JGlZdp06p0c','등산',2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (202,407,'즐거운 산행을 위해 꼭 알아야 할 등산상식 1편! 배낭 잘 매는법','짐 챙기는 용도로만 알았던 배낭, 알고보니 몸의 균형을 갖춰 줄 중요한 장비 중 하나?! 
배낭만 잘 매도 안전한 등산을 할 수 있다!','C3kuhiB6xQM','등산',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (203,407,'즐거운 산행을 위해 꼭 알아야 할 등산상식 2편! 올바른 스틱 사용법','많은 사람들이 잘못된 스틱 사용법으로 손목과 무릎에 무리가 가게 되는데...
더 이상 장식품으로만 사용하지 마세요~! 제대로된 스틱 사용법을 알려드립니다','KDpf49eLufk','등산',1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (204,407,'?요일별운동? 월요일 전신코어/속근육강화 15분 루틴, 허리통증 NO!!!',null,'CNg_J7M_v74','홈트짐트',0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (205,407,'[우먼센스 홈트] 코어 강화, 복근 운동법(코사이드 플랭크 힙업 다운)','헬스타그래머‘스윗바디’김지수의 위엄 복근

“시작은 미약하나 그 끝은 창대하리라.” 김지수 트레이너는 여자 연예인의 식스팩 사진을 보고 자극받아 복근에 대한 로망을 키웠지만, 지금은 

상상 그 이상의 ‘명품 복근녀’가 됐다. 
운동도 생활 습관이 돼야 한다고 힘주어 말하는 그녀의 복근 운동법.

사이드 플랭크 힙업 다운
1 옆으로 누워 바닥에 수건을 대고 팔꿈치로 눌러 상체를 세운다.
2 아래 옆구리와 복부에 힘을 주며 엉덩이와 어깨가 사선으로 일직선이 될 때까지 엉덩이를 들어 올린다. 
좌우 8회씩 3세트 반복.


자세한 내용▶ #우먼센스 4월호(P184~188)

기획 김은혜 기자 
사진 김정선
헤어&메이크업 정은경(메이메이) 
의상협찬 리복','2m8uhJxIix8','홈트짐트',5,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (206,407,'초보러너가 더 멀리 지치지않고 달리는 방법. (부제. 재부팅 러닝)','어떻게하면 지치지 않고 조금 더 멀리 달리기가 가능할까요? 
5km부터 풀코스 마라톤까지 여러분 모두가 할 수 있습니다. 

오늘 영상이 마음에 드셨다면 구독과 좋아요. 알림설정까지 부탁드립니다. ','-8BBrxjlXtg','달리기',19,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (207,407,'달리기에 대한 오해와 진실?! 제대로 배워 제대로 달리자 (KBS_2018.05.23)','생로병사의 비밀_런(RUN) 다시 달리기

달리기는 근력과 지구력을 키워주고, 심장의 기능 또한 튼튼하게 해 주는 운동이다. 최근에는 달리기가 노화 예방에도 효과적인 운동이라는 사실들이 밝혀지고 있다. 장소와 시간의 제약을 받지 않아 누구나 시작할 수 있고, 우리 몸에도 좋은 달리기! 하지만, 제대로 준비 하지 않고 달리면 그만큼 부상의 위험도 크다. 생로병사의 비밀에서는 달리기가 우리 몸에 어떤 영향을 주는지 구체적으로 살펴보고 안전하고 건강하게 달리기 위한 방법을 알아본다.','665r9k2E0_o','달리기',4,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (208,407,'(층간소음X, 설명O) 복근운동과 유산소를 한번에??서서하는 복근운동?',null,'kETh8T3it4k','홈트짐트',7,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (209,407,'(No 스쿼트, No 런지, No 반복) 30분 유산소성 근력 전신 운동 - 역대급 다이어트 운동!','안녕하세요^_^ 
오늘은 고강도 HIIT프로그램 준비했어요! 
명절동안 많이 먹고 은근히 불어난 살 때문에 찝찝하시죠! ㅎㅎ (저도 그렇답니다) 
옆구리 툭 튀! 아랫배 볼록! 낑기는 레깅스~ㅠㅠㅎㅎ
저와 함께 고강도 운동으로 원래 사이클로 돌아올 수 있는 시동을 걸어보자구용!!!  ! 
그럼 오늘 운동도 힘차게 잘 따라와주세요 
홧팅입니다!! 
저는 다음 영상에서 찾아뵐게용 ??','NWVueUdekqo','홈트짐트',14,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (211,407,'[ 김현우프로 ] 모든 골프 스윙은 이동작 하나만 지켜주세요! 더 멀리 똑바로 아이언과 드라이버 ㅣ 골프레슨','안녕하세요 
골프레슨 전문채널의 김현우프로입니다.
아마추어 골퍼분들께서 골프를 하면서 궁금했던 부분을 조금 더 디테일하게 방법을
설명을 해드리고 있으며,
멘탈과 실전에서 코스 메니지먼트 다양하게 도움이 되는 방법을 레슨해드리고 있습니다 
너무 어려운 골프이지만 여러분들이 실전에서 도움이 되는 레슨으로 
매주 금요일 7:30 에 찾아뵙도록 하겠습니다!
항상 건강 잘 챙기시고 골프 실력에 좋은 결과가 늘 있으시기 바라겠습니다 ~','jNRWCAoWLAc','골프',10,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (212,407,'백스윙 회전하지 마세요! 드라이버과 아이언! ㅣ 골프레슨','안녕하세요 
골프레슨 전문채널의 김현우프로입니다.
아마추어 골퍼분들께서 골프를 하면서 궁금했던 부분을 조금 더 디테일하게 방법을
설명을 해드리고 있으며,
멘탈과 실전에서 코스 메니지먼트 다양하게 도움이 되는 방법을 레슨해드리고 있습니다 
너무 어려운 골프이지만 여러분들이 실전에서 도움이 되는 레슨으로 
매주 금요일 7:30 에 찾아뵙도록 하겠습니다!
항상 건강 잘 챙기시고 골프 실력에 좋은 결과가 늘 있으시기 바라겠습니다 ~!','5QSwyvD45rY','골프',15,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (213,407,'SUB) 이것만 죽어라 하세요. 최고의 레슨입니다. 출근길 Golflesson 허석프로',null,'4c1L1FHWb9k','골프',32,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEBOARD (CBNUM,MEMBERNUM,CBTITLE,CBCONTENT,CBYOUCODE,CBCATEGORY,CBLOOKCOUNT,CBREGDATE) values (214,407,'7번 6번 5번 아이언 비거리 차이가 없으신 분들 어서오세요 #아이언샷',null,'7Ugt1NgZDsQ','골프',119,to_date('21/10/02','RR/MM/DD'));
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
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (35,151,'안녕하세요',365,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (36,151,'하하하',365,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (143,151,'아모야',398,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (144,151,'안나오자나요',398,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (145,127,'안녕하세요.',406,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (146,153,'배드민턴 강의가 아니네요. 그래서 신고했어용',509,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (147,153,'야옹야옹',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (148,153,'그래두 재밌는 강의네요.',436,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (152,164,'우는 이국 이름자를 까닭이요, 밤이 슬퍼하는 봅니다.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (150,154,'동영상이 안나와서 신고했어여',422,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (151,165,'나는 겨울이 하늘에는 아직 멀리 된 있습니다.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (153,163,'잔디가 그러나 언덕 이국 이런 풀이 봅니다.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (154,162,'다 가슴속에 아스라히 아이들의 불러 멀듯이, 오면 아름다운 거외다.',411,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (155,165,'시와 자랑처럼 별빛이 아이들의 했던 사람들의 노새, 나의 이름자 봅니다.',452,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (156,164,'프랑시스 경, 까닭이요, 까닭입니다.',452,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (157,165,'새워 우는 추억과 위에 별이 이름과, 봅니다.',487,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (158,164,'많은 보고, 가슴속에 하나 이 이제 사람들의 나는 까닭입니다.',487,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (159,165,'내일 하나 어머님, 있습니다. 속의 시와 강아지, 밤이 있습니다.',507,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (160,164,'멀듯이, 못 위에도 이름자를 봅니다.',507,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (161,165,'유익한 강의네요. ^^ 잘보았습니다.',438,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (162,164,'우는 하나에 잔디가 덮어 이런 불러 까닭입니다.',438,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (163,165,'저는 물이 무서워요 ㅜㅜ',448,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (164,164,'등산 가고 싶네요~',448,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (165,165,'수영 레슨 받고 싶어요.',431,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (166,165,'이런 때 쓸쓸함과 이런 나의 별에도 마디씩 풀이 계십니다.',509,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (167,165,'^^',509,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (202,217,'qregsfzdxnv b',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (169,168,'ㅁㄴㅇ',385,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (182,214,'하 언제쯤 필드 나가볼지요',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (172,170,'ㅂㅈㄷ',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (173,170,'ㅂㅈㄷ',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (174,170,'321',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (175,170,'??',406,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (176,170,'asd',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (177,172,'11',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (178,43,'zzz',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (179,171,'90;;;',410,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (180,168,'ㅣㅣㅣ',410,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (200,218,'ㄷㅂ',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (183,214,'스크린만 치니 먼지가 오지네요..',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (185,209,'이거 해도 층간소음 괜찮을까요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (201,217,'efdsgdbnv b',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (203,216,'수정테스트',385,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (204,213,'ㅇㅇㅇ하하하',514,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPLY (CRNUM,CBNUM,CRCONTENT,MEMBERNUM,CRREGDATE) values (189,174,'저는 물이 아직도 무서워용',492,to_date('21/10/02','RR/MM/DD'));
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
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (95,2,'N','N','N','N','Y','그냥 맘에안들어용',to_date('21/09/27','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (151,385,'N','Y','Y','N','N','sdlfkjsdf',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (151,365,'N','N','N','Y','N','qwe',to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (153,385,'N','N','N','N','Y',null,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (153,509,'N','N','N','N','N','운동 강의가 아니네요.',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (153,422,'N','N','N','N','N','그냥 맘에안들어용',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (154,422,'N','N','N','N','N','동영상이 안나옴',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (172,406,'Y','N','N','N','N',null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (168,410,'N','N','N','Y','N',null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (168,509,'N','N','N','N','Y',null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.COURSEREPORT (CBNUM,MEMBERNUM,CBREPORTCHK1,CBREPORTCHK2,CBREPORTCHK3,CBREPORTCHK4,CBREPORTCHK5,CBREPORTINPUT,CBREPORTREGDATE) values (175,385,'N','Y','N','N','N','ㅁ',to_date('21/10/02','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.DIETBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (42,1,'다섯쨰 글 수정합니다.최종.진짜최종','다섯째 글',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/16','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (43,2,'다섯쨰 글 수정합니다.최종.진짜최종','다섯째 글',null,null,null,null,null,null,null,null,null,null,5,0,to_date('21/09/16','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (283,435,'텍스트만 입력시 왜 이렇게 보여?','qrfgm경기 성남시 대장동 민간 개발 업체인 화천대유자산관리 대주주인 전 법조 기자 
출신 김만배(57)씨가 박영수 전 특별검사의 인척 사업가에게 100억 원을 건넨 것으로 드
러났다. 검찰은 이 돈의 일부가 박 전 특검 등에 대한 로비 자금으로 쓰였을 가능성이 있
다고 보고 사용처 추적에 주력하고 있다.

3일 법조계에 따르면 김씨는 지난해까지 화천대유에서 장기대여금 명목으로 빌린 473
억 원 중 100억 원을 대장동 분양대행업체 대표 이모(50)씨에게 전달했다. 이 씨는 화천
대유가 시행을 맡았던 대장동 개발 5개 블록의 분양 대행 업무를 독차지한 것으로 알려
졌다. 이씨와 박 전 특검은 인척 관계인 것으로 알려졌다. 이씨는 2018년경까지 코스닥 
상장사 A사의 대표이사로도 재직했는데, 박 전 특검은 2014년 1월부터 2월까지 A사의 
사외이사로 약 1개월간 재직했다. 이씨와 박 전 특검의 관계 등을 근거로 김씨가 이씨에
게 건넨 100억 원 중 일부가 최종적으로 박 전 특검에게 전달된 것이 아니냐는 의혹이 일
고 있다.

박 전 특검은 2015년 화천대유 설립 이후부터 고문 변호사로 일하며 연 2억 원의 고문료
를 받다가 2016년 말 국정농단 수사 특검으로 임명되면서 고문직을 그만뒀다. 그의 딸도 
화천대유 직원으로 수년간 근무하다 최근 퇴직했는데 지난 6월 화천대유가 보유한 아파
트를 시세의 절반 가격에 분양받은 사실이 알려지면서 특혜 의혹이 제기됐다.

김씨 측 변호인은 “김씨가 사업과 관련해 이씨의 요청으로 100억 원을 빌려준 것은 맞으
나, 박 전 특검과는 무관하다”고 밝혔다. 박 전 특검에게 건너간 돈은 없으며, 분양대행업
을 하는 이씨가 사업자금으로 빌\',null,null,null,null,null,null,null,null,null,null,52,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (285,514,'test','test','site03.jpg','site04.jpg','site05.jpg',null,null,'a03b0da5.jpg','b7d9dd72.jpg','b0e79c1a.jpg',null,null,25,3,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (11,386,'권한테스트','권한테스트','0.jpg',null,null,null,null,'4d4ceba3.jpg',null,null,null,null,13,1,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (12,385,'sdf','sdf',null,null,null,null,null,null,null,null,null,null,9,0,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (249,385,'asd','asd','화면 캡처 2021-09-06 231735.png',null,null,null,null,'9e5b6b80.png',null,null,null,null,5,1,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (250,392,'ㅎㅇㅎㅇ','ㅎㅇㅎㅇ','1280px-01-L_May_25_2009_1625Z.jpg','''1928_Indochine.jpg',null,null,null,'ee2598af.jpg','add10878.jpg',null,null,null,17,2,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (256,385,'asd','asd
asd',null,null,null,null,null,null,null,null,null,null,13,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (255,385,'ㅁㄴㅇ','ㅁㄴㅇ',null,null,null,null,null,null,null,null,null,null,10,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (258,385,'asd','ddd','딸기사과 오픈 샌드위치.jpg',null,null,null,null,'a58a4e2f.jpg',null,null,null,null,9,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (264,392,'족발엔 소주지 크으','족발엔 소주지 크으','2.jpg',null,null,null,null,'6fdf3cd1.jpg',null,null,null,null,1,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (265,392,'짜장엔 고추가루 뿌려야죠','짜장엔 고추가루 뿌려야죠','3.jpg',null,null,null,null,'49108ed4.jpg',null,null,null,null,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (266,392,'불고기에 밥 비벼먹고싶다','불고기에 밥 비벼먹고싶다','4.jpg',null,null,null,null,'1eab7443.jpg',null,null,null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (267,392,'떡볶이에 맥주가 잘 어울리는거 나만 이제알았어?','떡볶이에 맥주가 잘 어울리더라고요','5.jpg',null,null,null,null,'19f230c4.jpg',null,null,null,null,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (268,511,'함박먹으러 후쿠오카 왔어요 고터 후쿠오카 함바그?','함박먹으러 후쿠오카 왔어요','6.jpg',null,null,null,null,'54bebf17.jpg',null,null,null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (269,511,'스시 마렵다','스시 마렵다','7.jpg',null,null,null,null,'6a3ee439.jpg',null,null,null,null,9,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (270,511,'오코노미야끼에 가쓰오부시가 너무 적어요','오코노미야끼에 가쓰오부시가 너무 적어요','9.jpg',null,null,null,null,'01649ca3.jpg',null,null,null,null,10,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (271,511,'오동통통 우동 !','오동통통 우동 !','10.jpg',null,null,null,null,'8d3b4fd3.jpg',null,null,null,null,19,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (272,512,'스페인가고싶어서','스페인식당에갔다','spain1.jpg','spain2.jpg',null,null,null,'254efad4.jpg','f2d8513e.jpg',null,null,null,6,2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (273,423,'오늘자 점심 입니다','밥은 반만 먹었어요','점심.jpg',null,null,null,null,'879d38fc.jpg',null,null,null,null,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (274,393,'먹어도 먹은것 같지 않은','배가고파요','다1.jpg',null,null,null,null,'081e87e3.jpg',null,null,null,null,13,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (275,393,'아이유가 이렇게 먹고 날씬해졌대요','근데 저는 기절할것 같은데요ㅜㅜㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','아1.jpg',null,null,null,null,'d55df78d.jpg',null,null,null,null,18,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (276,393,'공기를 먹은것 같은 기분','야근하고 집에오는 길에 샐러드 사왔슴다 
밤늦게 일하는 것도 화나는데
밥까지 이렇게 먹고 어캐살죠','다3.jpg',null,null,null,null,'2a1aad80.jpg',null,null,null,null,39,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETBOARD (DBNUM,MEMBERNUM,DBTITLE,DBCONTENT,DBIMAGE1,DBIMAGE2,DBIMAGE3,DBIMAGE4,DBIMAGE5,DBREALIMAGE1,DBREALIMAGE2,DBREALIMAGE3,DBREALIMAGE4,DBREALIMAGE5,DBLOOKCOUNT,DBIMAGECOUNT,DBREGDATE) values (277,438,'저희 개두 이제 닭가슴살 안먹네요','언제쯤 다이어트 떄려칠지','다2.jpg',null,null,null,null,'3fde23e5.jpg',null,null,null,null,59,1,to_date('21/10/02','RR/MM/DD'));
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
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (124,283,'ㅈㄷㄱ쇼ㅗㅓㅏㅈㄷㄱ호',435,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (120,277,'테스트2',406,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (122,282,'<script>alert(''test'');</script>',385,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (1,158,'123333',385,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (53,252,'asd',385,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (57,257,'^^^^;;;',410,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (55,255,'zzz',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (56,257,'dkdkkd',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (74,263,'맥주도 드셨나요?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (75,263,'화덕피자인가요?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (65,262,'^^',407,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (67,262,'방울방울',509,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (72,262,'야옹야옹',411,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (68,262,'방울방울방울',509,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (73,263,'무슨 피자인가요?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (76,263,'장작 화덕이에요?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (77,263,'오늘 저녁은 피자닾!',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (78,264,'오늘 토욜인데 족발에 낮술땡기네요',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (79,264,'굿굿',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (80,264,'굳굳',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (81,267,'왜 삶은계란이 없죠?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (82,267,'떡튀순 국룰 아닙니까 너무하네',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (83,266,'당면 먼저 먹었죠?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (84,266,'공기밥 추가 해놨죠?',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (85,265,'계란도 올려야죠',511,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (86,271,'맛있겠다',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (87,271,'점심으로 우동먹어야지',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (88,271,'아니 파스타 해먹어야지',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (89,270,'오코노미야끼에 하이볼 먹고싶다',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (90,269,'스시 오마카세 가고싶다',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (91,269,'먹고픈게 너무 많다',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (92,270,'여러분 연희동에 희로 가세요 두번가세요',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (93,273,'샐러드를 두개드셨네요 ',392,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (94,273,'우와 회사식당인가요',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (95,273,'밥주는 회사 좋은회사',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (96,272,'무슨 음식인가요? 바게트에 하몽인가요',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (97,270,'다여트 하시는거 맞나요 뭐죠',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (98,271,'생생우동인가요? ',393,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (99,276,'하 공기를 드셨다니 ㅋㅋㅋㅋㅋㅋㅋ 넘웃겨요',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (100,276,'아보카도 맛있겠어요',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (101,275,'아이유 와우내..',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (102,275,'저거 먹고 어찌사나요',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (103,274,'식단 구성 넘 좋네요',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (104,274,'누가 이렇게 차려줬으면',438,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (105,277,'강쥐가 입이 고급이 된것이 아닌지...',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (106,276,'새우~~ 쉬림프 꺄',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (107,275,'불가리스에 당이 얼마나 많은지 아시는지요?',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (108,275,'그릴 요거트 드시길..',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (130,287,'fdfsd',392,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (110,277,'근데 어떻게 삶으셨어요? 넘 뽀얗게 잘 삶아졌어요ㅋㅋ',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (111,276,'이건 너무 했네. 야근까지 했는데 샐러드 라니ㅜㅜ',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (112,276,'오동통 새우',459,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (113,275,'근데 이렇게 먹으면 살 안빠질텐데ㅋㅋ 탄수화물 파티네요',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (114,274,'정성추',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (115,271,'먹고싶어요 ㅜㅜ',492,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (126,284,'ㄴㄹㄴㅇㄹㄴㅇ',435,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (129,285,'sdfsfd',514,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (131,287,'수정후',392,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (132,275,'ㅂㅂ',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (133,285,'ㅇㅇㅇ',514,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (135,287,'3',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.DIETREPLY (DRNUM,DBNUM,DRCONTENT,MEMBERNUM,DRREGDATE) values (136,283,'dd',385,to_date('21/10/06','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.DIETREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.DIETREPORT (DBNUM,MEMBERNUM) values (287,392);
Insert into SPRINGWEFIT.DIETREPORT (DBNUM,MEMBERNUM) values (11,365);
Insert into SPRINGWEFIT.DIETREPORT (DBNUM,MEMBERNUM) values (254,391);
REM INSERTING into SPRINGWEFIT.FREEBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (47,364,'테스트 제목입니다.1','테스트 내용입니다.1',null,null,null,null,null,null,null,null,null,null,5,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (48,364,'테스트 제목입니다.2','테스트 내용입니다.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (49,364,'테스트 제목입니다.3','테스트 내용입니다.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (50,364,'테스트 제목입니다.4','테스트 내용입니다.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (51,364,'테스트 제목입니다.5','테스트 내용입니다.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (52,364,'테스트 제목입니다.6','테스트 내용입니다.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (53,364,'테스트 제목입니다.7','테스트 내용입니다.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (54,364,'테스트 제목입니다.8','테스트 내용입니다.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (55,364,'테스트 제목입니다.9','테스트 내용입니다.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (56,364,'테스트 제목입니다.10','테스트 내용입니다.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (57,364,'테스트 제목입니다.11','테스트 내용입니다.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (58,364,'테스트 제목입니다.12','테스트 내용입니다.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (59,364,'테스트 제목입니다.13','테스트 내용입니다.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (60,364,'테스트 제목입니다.14','테스트 내용입니다.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (61,364,'테스트 제목입니다.15','테스트 내용입니다.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (62,364,'테스트 제목입니다.16','테스트 내용입니다.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (63,364,'테스트 제목입니다.17','테스트 내용입니다.17',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (64,364,'테스트 제목입니다.18','테스트 내용입니다.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (65,364,'테스트 제목입니다.19','테스트 내용입니다.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (66,364,'테스트 제목입니다.20','테스트 내용입니다.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (67,364,'테스트 제목입니다.21','테스트 내용입니다.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (68,364,'테스트 제목입니다.22','테스트 내용입니다.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (69,364,'테스트 제목입니다.23','테스트 내용입니다.23',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (70,364,'테스트 제목입니다.24','테스트 내용입니다.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (71,364,'테스트 제목입니다.25','테스트 내용입니다.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (72,364,'테스트 제목입니다.26','테스트 내용입니다.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (73,364,'테스트 제목입니다.27','테스트 내용입니다.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (74,364,'테스트 제목입니다.28','테스트 내용입니다.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (75,364,'테스트 제목입니다.29','테스트 내용입니다.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (76,364,'테스트 제목입니다.30','테스트 내용입니다.30',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (77,364,'테스트 제목입니다.31','테스트 내용입니다.31',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (78,364,'테스트 제목입니다.32','테스트 내용입니다.32',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (79,364,'테스트 제목입니다.33','테스트 내용입니다.33',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (80,364,'테스트 제목입니다.34','테스트 내용입니다.34',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (81,364,'테스트 제목입니다.35','테스트 내용입니다.35',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (82,364,'테스트 제목입니다.36','테스트 내용입니다.36',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (83,364,'테스트 제목입니다.37','테스트 내용입니다.37',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (84,364,'테스트 제목입니다.38','테스트 내용입니다.38',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (85,364,'테스트 제목입니다.39','테스트 내용입니다.39',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (86,364,'테스트 제목입니다.40','테스트 내용입니다.40',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (87,364,'테스트 제목입니다.41','테스트 내용입니다.41',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (88,364,'테스트 제목입니다.42','테스트 내용입니다.42',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (89,364,'테스트 제목입니다.43','테스트 내용입니다.43',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (90,364,'테스트 제목입니다.44','테스트 내용입니다.44',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (91,364,'테스트 제목입니다.45','테스트 내용입니다.45',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (92,364,'테스트 제목입니다.46','테스트 내용입니다.46',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (93,364,'테스트 제목입니다.47','테스트 내용입니다.47',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (94,364,'테스트 제목입니다.48','테스트 내용입니다.48',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (95,364,'테스트 제목입니다.49','테스트 내용입니다.49',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (96,364,'테스트 제목입니다.50','테스트 내용입니다.50',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (97,364,'테스트 제목입니다.51','테스트 내용입니다.51',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (98,364,'테스트 제목입니다.52','테스트 내용입니다.52',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (99,364,'테스트 제목입니다.53','테스트 내용입니다.53',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (100,364,'테스트 제목입니다.54','테스트 내용입니다.54',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (101,364,'테스트 제목입니다.55','테스트 내용입니다.55',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (102,364,'테스트 제목입니다.56','테스트 내용입니다.56',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (103,364,'테스트 제목입니다.57','테스트 내용입니다.57',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (104,364,'테스트 제목입니다.58','테스트 내용입니다.58',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (105,364,'테스트 제목입니다.59','테스트 내용입니다.59',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (106,364,'테스트 제목입니다.60','테스트 내용입니다.60',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (107,364,'테스트 제목입니다.61','테스트 내용입니다.61',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (108,364,'테스트 제목입니다.62','테스트 내용입니다.62',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (109,364,'테스트 제목입니다.63','테스트 내용입니다.63',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (110,364,'테스트 제목입니다.64','테스트 내용입니다.64',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (111,364,'테스트 제목입니다.65','테스트 내용입니다.65',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (112,364,'테스트 제목입니다.66','테스트 내용입니다.66',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (113,364,'테스트 제목입니다.67','테스트 내용입니다.67',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (114,364,'테스트 제목입니다.68','테스트 내용입니다.68',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (115,364,'테스트 제목입니다.69','테스트 내용입니다.69',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (116,364,'테스트 제목입니다.70','테스트 내용입니다.70',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (117,364,'테스트 제목입니다.71','테스트 내용입니다.71',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (118,364,'테스트 제목입니다.72','테스트 내용입니다.72',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (119,364,'테스트 제목입니다.73','테스트 내용입니다.73',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (120,364,'테스트 제목입니다.74','테스트 내용입니다.74',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (121,364,'테스트 제목입니다.75','테스트 내용입니다.75',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (122,364,'테스트 제목입니다.76','테스트 내용입니다.76',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (123,364,'테스트 제목입니다.77','테스트 내용입니다.77',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (124,364,'테스트 제목입니다.78','테스트 내용입니다.78',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (125,364,'테스트 제목입니다.79','테스트 내용입니다.79',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (126,364,'테스트 제목입니다.80','테스트 내용입니다.80',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (127,364,'테스트 제목입니다.81','테스트 내용입니다.81',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (128,364,'테스트 제목입니다.82','테스트 내용입니다.82',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (129,364,'테스트 제목입니다.83','테스트 내용입니다.83',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (130,364,'테스트 제목입니다.84','테스트 내용입니다.84',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (131,364,'테스트 제목입니다.85','테스트 내용입니다.85',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (132,364,'테스트 제목입니다.86','테스트 내용입니다.86',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (133,364,'테스트 제목입니다.87','테스트 내용입니다.87',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (134,364,'테스트 제목입니다.88','테스트 내용입니다.88',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (135,364,'테스트 제목입니다.89','테스트 내용입니다.89',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (136,364,'테스트 제목입니다.90','테스트 내용입니다.90',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (137,364,'테스트 제목입니다.91','테스트 내용입니다.91',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (138,364,'테스트 제목입니다.92','테스트 내용입니다.92',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (139,364,'테스트 제목입니다.93','테스트 내용입니다.93',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (140,364,'테스트 제목입니다.94','테스트 내용입니다.94',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (141,364,'테스트 제목입니다.95','테스트 내용입니다.95',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (142,364,'테스트 제목입니다.96','테스트 내용입니다.96',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (143,364,'테스트 제목입니다.97','테스트 내용입니다.97',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (144,364,'테스트 제목입니다.98','테스트 내용입니다.98',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (145,364,'테스트 제목입니다.99','테스트 내용입니다.99',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (146,364,'테스트 제목입니다.100','테스트 내용입니다.100',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (147,364,'테스트 제목입니다.101','테스트 내용입니다.101',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (148,364,'테스트 제목입니다.102','테스트 내용입니다.102',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (149,364,'테스트 제목입니다.103','테스트 내용입니다.103',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (150,364,'테스트 제목입니다.104','테스트 내용입니다.104',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (151,364,'테스트 제목입니다.105','테스트 내용입니다.105',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (152,364,'테스트 제목입니다.106','테스트 내용입니다.106',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (153,364,'테스트 제목입니다.107','테스트 내용입니다.107',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (154,364,'테스트 제목입니다.108','테스트 내용입니다.108',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (155,364,'테스트 제목입니다.109','테스트 내용입니다.109',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (156,364,'테스트 제목입니다.110','테스트 내용입니다.110',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (157,364,'테스트 제목입니다.111','테스트 내용입니다.111',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (158,364,'테스트 제목입니다.112','테스트 내용입니다.112',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (159,364,'테스트 제목입니다.113','테스트 내용입니다.113',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (160,364,'테스트 제목입니다.114','테스트 내용입니다.114',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (161,364,'테스트 제목입니다.115','테스트 내용입니다.115',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (162,364,'테스트 제목입니다.116','테스트 내용입니다.116',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (163,364,'테스트 제목입니다.117','테스트 내용입니다.117',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (164,364,'테스트 제목입니다.118','테스트 내용입니다.118',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (165,364,'테스트 제목입니다.119','테스트 내용입니다.119',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (166,364,'테스트 제목입니다.120','테스트 내용입니다.120',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (167,364,'테스트 제목입니다.121','테스트 내용입니다.121',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (168,364,'테스트 제목입니다.122','테스트 내용입니다.122',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (169,364,'테스트 제목입니다.123','테스트 내용입니다.123',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (170,364,'테스트 제목입니다.124','테스트 내용입니다.124',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (171,364,'테스트 제목입니다.125','테스트 내용입니다.125',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (172,364,'테스트 제목입니다.126','테스트 내용입니다.126',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (173,364,'테스트 제목입니다.127','테스트 내용입니다.127',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (174,364,'테스트 제목입니다.128','테스트 내용입니다.128',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (175,364,'테스트 제목입니다.129','테스트 내용입니다.129',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (176,364,'테스트 제목입니다.130','테스트 내용입니다.130',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (177,364,'테스트 제목입니다.131','테스트 내용입니다.131',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (178,364,'테스트 제목입니다.132','테스트 내용입니다.132',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (179,364,'테스트 제목입니다.133','테스트 내용입니다.133',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (180,364,'테스트 제목입니다.134','테스트 내용입니다.134',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (181,364,'테스트 제목입니다.135','테스트 내용입니다.135',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (182,364,'테스트 제목입니다.136','테스트 내용입니다.136',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (183,364,'테스트 제목입니다.137','테스트 내용입니다.137',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (184,364,'테스트 제목입니다.138','테스트 내용입니다.138',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (185,364,'테스트 제목입니다.139','테스트 내용입니다.139',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (186,364,'테스트 제목입니다.140','테스트 내용입니다.140',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (187,364,'테스트 제목입니다.141','테스트 내용입니다.141',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (188,364,'테스트 제목입니다.142','테스트 내용입니다.142',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (189,364,'테스트 제목입니다.143','테스트 내용입니다.143',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (190,364,'테스트 제목입니다.144','테스트 내용입니다.144',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (191,364,'테스트 제목입니다.145','테스트 내용입니다.145',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (192,364,'테스트 제목입니다.146','테스트 내용입니다.146',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (193,364,'테스트 제목입니다.147','테스트 내용입니다.147',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (194,364,'테스트 제목입니다.148','테스트 내용입니다.148',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (195,364,'테스트 제목입니다.149','테스트 내용입니다.149',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (196,364,'테스트 제목입니다.150','테스트 내용입니다.150',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (197,364,'테스트 제목입니다.151','테스트 내용입니다.151',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (198,364,'테스트 제목입니다.152','테스트 내용입니다.152',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (199,364,'테스트 제목입니다.153','테스트 내용입니다.153',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (200,364,'테스트 제목입니다.154','테스트 내용입니다.154',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (201,364,'테스트 제목입니다.155','테스트 내용입니다.155',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (202,364,'테스트 제목입니다.156','테스트 내용입니다.156',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (203,364,'테스트 제목입니다.157','테스트 내용입니다.157',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (204,364,'테스트 제목입니다.158','테스트 내용입니다.158',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (205,364,'테스트 제목입니다.159','테스트 내용입니다.159',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (206,364,'테스트 제목입니다.160','테스트 내용입니다.160',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (207,364,'테스트 제목입니다.161','테스트 내용입니다.161',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (208,364,'테스트 제목입니다.162','테스트 내용입니다.162',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (209,364,'테스트 제목입니다.163','테스트 내용입니다.163',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (210,364,'테스트 제목입니다.164','테스트 내용입니다.164',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (211,364,'테스트 제목입니다.165','테스트 내용입니다.165',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (212,364,'테스트 제목입니다.166','테스트 내용입니다.166',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (213,364,'테스트 제목입니다.167','테스트 내용입니다.167',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (214,364,'테스트 제목입니다.168','테스트 내용입니다.168',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (215,364,'테스트 제목입니다.169','테스트 내용입니다.169',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (216,364,'테스트 제목입니다.170','테스트 내용입니다.170',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (217,364,'테스트 제목입니다.171','테스트 내용입니다.171',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (218,364,'테스트 제목입니다.172','테스트 내용입니다.172',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (219,364,'테스트 제목입니다.173','테스트 내용입니다.173',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (220,364,'테스트 제목입니다.174','테스트 내용입니다.174',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (221,364,'테스트 제목입니다.175','테스트 내용입니다.175',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (222,364,'테스트 제목입니다.176','테스트 내용입니다.176',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (223,364,'테스트 제목입니다.177','테스트 내용입니다.177',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (224,364,'테스트 제목입니다.178','테스트 내용입니다.178',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (225,364,'테스트 제목입니다.179','테스트 내용입니다.179',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (226,364,'테스트 제목입니다.180','테스트 내용입니다.180',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (227,364,'테스트 제목입니다.181','테스트 내용입니다.181',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (228,364,'테스트 제목입니다.182','테스트 내용입니다.182',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (229,364,'테스트 제목입니다.183','테스트 내용입니다.183',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (230,364,'테스트 제목입니다.184','테스트 내용입니다.184',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (231,364,'테스트 제목입니다.185','테스트 내용입니다.185',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (232,364,'테스트 제목입니다.186','테스트 내용입니다.186',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (233,364,'테스트 제목입니다.187','테스트 내용입니다.187',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (234,364,'테스트 제목입니다.188','테스트 내용입니다.188',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (235,364,'테스트 제목입니다.189','테스트 내용입니다.189',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (236,364,'테스트 제목입니다.190','테스트 내용입니다.190',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (237,364,'테스트 제목입니다.191','테스트 내용입니다.191',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (238,364,'테스트 제목입니다.192','테스트 내용입니다.192',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (239,364,'테스트 제목입니다.193','테스트 내용입니다.193',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (240,364,'테스트 제목입니다.194','테스트 내용입니다.194',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (241,364,'테스트 제목입니다.195','테스트 내용입니다.195',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (242,364,'테스트 제목입니다.196','테스트 내용입니다.196',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (243,364,'테스트 제목입니다.197','테스트 내용입니다.197',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (244,364,'테스트 제목입니다.198','테스트 내용입니다.198',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (245,364,'테스트 제목입니다.199','테스트 내용입니다.199',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (246,364,'[자유글]테스트 제목입니다.1','테스트 내용입니다.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (247,364,'[자유글]테스트 제목입니다.2','테스트 내용입니다.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (248,364,'[자유글]테스트 제목입니다.3','테스트 내용입니다.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (249,364,'[자유글]테스트 제목입니다.4','테스트 내용입니다.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (250,364,'[자유글]테스트 제목입니다.5','테스트 내용입니다.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (252,364,'[자유글]테스트 제목입니다.7','테스트 내용입니다.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (253,364,'[자유글]테스트 제목입니다.8','테스트 내용입니다.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (254,364,'[자유글]테스트 제목입니다.9','테스트 내용입니다.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (255,364,'[자유글]테스트 제목입니다.10','테스트 내용입니다.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (256,364,'[자유글]테스트 제목입니다.11','테스트 내용입니다.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (257,364,'[자유글]테스트 제목입니다.12','테스트 내용입니다.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (258,364,'[자유글]테스트 제목입니다.13','테스트 내용입니다.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (259,364,'[자유글]테스트 제목입니다.14','테스트 내용입니다.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (260,364,'[자유글]테스트 제목입니다.15','테스트 내용입니다.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (261,364,'[자유글]테스트 제목입니다.16','테스트 내용입니다.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (262,364,'[자유글]테스트 제목입니다.17','테스트 내용입니다.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (263,364,'[자유글]테스트 제목입니다.18','테스트 내용입니다.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (264,364,'[자유글]테스트 제목입니다.19','테스트 내용입니다.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (265,364,'[자유글]테스트 제목입니다.20','테스트 내용입니다.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (266,364,'[자유글]테스트 제목입니다.21','테스트 내용입니다.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (267,364,'[자유글]테스트 제목입니다.22','테스트 내용입니다.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (268,364,'[자유글]테스트 제목입니다.23','테스트 내용입니다.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (269,364,'[자유글]테스트 제목입니다.24','테스트 내용입니다.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (270,364,'[자유글]테스트 제목입니다.25','테스트 내용입니다.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (271,364,'[자유글]테스트 제목입니다.26','테스트 내용입니다.26',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (272,364,'[자유글]테스트 제목입니다.27','테스트 내용입니다.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (273,364,'[자유글]테스트 제목입니다.28','테스트 내용입니다.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (274,364,'[자유글]테스트 제목입니다.29','테스트 내용입니다.29',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (275,364,'[소식/정보]테스트 제목입니다.1','테스트 내용입니다.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (276,364,'[소식/정보]테스트 제목입니다.2','테스트 내용입니다.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (277,364,'[소식/정보]테스트 제목입니다.3','테스트 내용입니다.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (278,364,'[소식/정보]테스트 제목입니다.4','테스트 내용입니다.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (279,364,'[소식/정보]테스트 제목입니다.5','테스트 내용입니다.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (280,364,'[소식/정보]테스트 제목입니다.6','테스트 내용입니다.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (281,364,'[소식/정보]테스트 제목입니다.7','테스트 내용입니다.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (282,364,'[소식/정보]테스트 제목입니다.8','테스트 내용입니다.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (283,364,'[소식/정보]테스트 제목입니다.9','테스트 내용입니다.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (284,364,'[소식/정보]테스트 제목입니다.10','테스트 내용입니다.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (285,364,'[소식/정보]테스트 제목입니다.11','테스트 내용입니다.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (286,364,'[소식/정보]테스트 제목입니다.12','테스트 내용입니다.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (287,364,'[소식/정보]테스트 제목입니다.13','테스트 내용입니다.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (288,364,'[소식/정보]테스트 제목입니다.14','테스트 내용입니다.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (289,364,'[소식/정보]테스트 제목입니다.15','테스트 내용입니다.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (290,364,'[소식/정보]테스트 제목입니다.16','테스트 내용입니다.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (291,364,'[소식/정보]테스트 제목입니다.17','테스트 내용입니다.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (292,364,'[소식/정보]테스트 제목입니다.18','테스트 내용입니다.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (293,364,'[소식/정보]테스트 제목입니다.19','테스트 내용입니다.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (294,364,'[소식/정보]테스트 제목입니다.20','테스트 내용입니다.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (295,364,'[소식/정보]테스트 제목입니다.21','테스트 내용입니다.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (296,364,'[소식/정보]테스트 제목입니다.22','테스트 내용입니다.22',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (297,364,'[소식/정보]테스트 제목입니다.23','테스트 내용입니다.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (298,364,'[소식/정보]테스트 제목입니다.24','테스트 내용입니다.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (299,364,'[소식/정보]테스트 제목입니다.25','테스트 내용입니다.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (300,364,'[소식/정보]테스트 제목입니다.26','테스트 내용입니다.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (301,364,'[소식/정보]테스트 제목입니다.27','테스트 내용입니다.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (302,364,'[소식/정보]테스트 제목입니다.28','테스트 내용입니다.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (303,364,'[소식/정보]테스트 제목입니다.29','테스트 내용입니다.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (304,364,'[홍보]테스트 제목입니다.1','테스트 내용입니다.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (305,364,'[홍보]테스트 제목입니다.2','테스트 내용입니다.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (306,364,'[홍보]테스트 제목입니다.3','테스트 내용입니다.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (307,364,'[홍보]테스트 제목입니다.4','테스트 내용입니다.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (308,364,'[홍보]테스트 제목입니다.5','테스트 내용입니다.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (309,364,'[홍보]테스트 제목입니다.6','테스트 내용입니다.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (310,364,'[홍보]테스트 제목입니다.7','테스트 내용입니다.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (312,364,'[홍보]테스트 제목입니다.9','테스트 내용입니다.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (313,364,'[홍보]테스트 제목입니다.10','테스트 내용입니다.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (314,364,'[홍보]테스트 제목입니다.11','테스트 내용입니다.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (315,364,'[홍보]테스트 제목입니다.12','테스트 내용입니다.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (316,364,'[홍보]테스트 제목입니다.13','테스트 내용입니다.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (317,364,'[홍보]테스트 제목입니다.14','테스트 내용입니다.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (318,364,'[홍보]테스트 제목입니다.15','테스트 내용입니다.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (319,364,'[홍보]테스트 제목입니다.16','테스트 내용입니다.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (320,364,'[홍보]테스트 제목입니다.17','테스트 내용입니다.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (321,364,'[홍보]테스트 제목입니다.18','테스트 내용입니다.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (322,364,'[홍보]테스트 제목입니다.19','테스트 내용입니다.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (323,364,'[홍보]테스트 제목입니다.20','테스트 내용입니다.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (324,364,'[홍보]테스트 제목입니다.21','테스트 내용입니다.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (325,364,'[홍보]테스트 제목입니다.22','테스트 내용입니다.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (326,364,'[홍보]테스트 제목입니다.23','테스트 내용입니다.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (327,364,'[홍보]테스트 제목입니다.24','테스트 내용입니다.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (328,364,'[홍보]테스트 제목입니다.25','테스트 내용입니다.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (329,364,'[홍보]테스트 제목입니다.26','테스트 내용입니다.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (330,364,'[홍보]테스트 제목입니다.27','테스트 내용입니다.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (331,364,'[홍보]테스트 제목입니다.28','테스트 내용입니다.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (332,364,'[홍보]테스트 제목입니다.29','테스트 내용입니다.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (333,364,'[꿀팁]테스트 제목입니다.1','테스트 내용입니다.1',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (334,364,'[꿀팁]테스트 제목입니다.2','테스트 내용입니다.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (335,364,'[꿀팁]테스트 제목입니다.3','테스트 내용입니다.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (336,364,'[꿀팁]테스트 제목입니다.4','테스트 내용입니다.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (337,364,'[꿀팁]테스트 제목입니다.5','테스트 내용입니다.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (338,364,'[꿀팁]테스트 제목입니다.6','테스트 내용입니다.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (339,364,'[꿀팁]테스트 제목입니다.7','테스트 내용입니다.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (340,364,'[꿀팁]테스트 제목입니다.8','테스트 내용입니다.8',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (341,364,'[꿀팁]테스트 제목입니다.9','테스트 내용입니다.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (342,364,'[꿀팁]테스트 제목입니다.10','테스트 내용입니다.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (343,364,'[꿀팁]테스트 제목입니다.11','테스트 내용입니다.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (344,364,'[꿀팁]테스트 제목입니다.12','테스트 내용입니다.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (345,364,'[꿀팁]테스트 제목입니다.13','테스트 내용입니다.13',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (346,364,'[꿀팁]테스트 제목입니다.14','테스트 내용입니다.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (347,364,'[꿀팁]테스트 제목입니다.15','테스트 내용입니다.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (348,364,'[꿀팁]테스트 제목입니다.16','테스트 내용입니다.16',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (349,364,'[꿀팁]테스트 제목입니다.17','테스트 내용입니다.17',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (350,364,'[꿀팁]테스트 제목입니다.18','테스트 내용입니다.18',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (351,364,'[꿀팁]테스트 제목입니다.19','테스트 내용입니다.19',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (352,364,'[꿀팁]테스트 제목입니다.20','테스트 내용입니다.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (353,364,'[꿀팁]테스트 제목입니다.21','테스트 내용입니다.21',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (354,364,'[꿀팁]테스트 제목입니다.22','테스트 내용입니다.22',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (355,364,'[꿀팁]테스트 제목입니다.23','테스트 내용입니다.23',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (356,364,'[꿀팁]테스트 제목입니다.24','테스트 내용입니다.24',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (357,364,'[꿀팁]테스트 제목입니다.25','테스트 내용입니다.25',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (358,364,'[꿀팁]테스트 제목입니다.26','테스트 내용입니다.26',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (359,364,'[꿀팁]테스트 제목입니다.27','테스트 내용입니다.27',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (360,364,'[꿀팁]테스트 제목입니다.28','테스트 내용입니다.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (361,364,'[꿀팁]테스트 제목입니다.29','테스트 내용입니다.29',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (362,364,'[기타]테스트 제목입니다.1','테스트 내용입니다.1',null,null,null,null,null,null,null,null,null,null,3,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (363,364,'[기타]테스트 제목입니다.2','테스트 내용입니다.2',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (364,364,'[기타]테스트 제목입니다.3','테스트 내용입니다.3',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (365,364,'[기타]테스트 제목입니다.4','테스트 내용입니다.4',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (366,364,'[기타]테스트 제목입니다.5','테스트 내용입니다.5',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (367,364,'[기타]테스트 제목입니다.6','테스트 내용입니다.6',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (368,364,'[기타]테스트 제목입니다.7','테스트 내용입니다.7',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (369,364,'[기타]테스트 제목입니다.8','테스트 내용입니다.8',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (370,364,'[기타]테스트 제목입니다.9','테스트 내용입니다.9',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (371,364,'[기타]테스트 제목입니다.10','테스트 내용입니다.10',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (372,364,'[기타]테스트 제목입니다.11','테스트 내용입니다.11',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (373,364,'[기타]테스트 제목입니다.12','테스트 내용입니다.12',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (375,364,'[기타]테스트 제목입니다.14','테스트 내용입니다.14',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (376,364,'[기타]테스트 제목입니다.15','테스트 내용입니다.15',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (379,364,'[기타]테스트 제목입니다.18','테스트 내용입니다.18',null,null,null,null,null,null,null,null,null,null,24,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (380,364,'[기타]테스트 제목입니다.19','테스트 내용입니다.19',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (381,364,'[기타]테스트 제목입니다.20','테스트 내용입니다.20',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (382,364,'[기타]테스트 제목입니다.21','테스트 내용입니다.21',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (383,364,'[기타]테스트 제목입니다.22','테스트 내용입니다.22',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (384,364,'[기타]테스트 제목입니다.23','테스트 내용입니다.23',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (385,364,'[기타]테스트 제목입니다.24','테스트 내용입니다.24',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (386,364,'[기타]테스트 제목입니다.25','테스트 내용입니다.25',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (387,364,'[기타]테스트 제목입니다.26','테스트 내용입니다.26',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (388,364,'[기타]테스트 제목입니다.27','테스트 내용입니다.27',null,null,null,null,null,null,null,null,null,null,2,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (389,364,'[기타]테스트 제목입니다.28','테스트 내용입니다.28',null,null,null,null,null,null,null,null,null,null,0,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (390,364,'[기타]테스트 제목입니다.29','테스트 내용입니다.29',null,null,null,null,null,null,null,null,null,null,1,0,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (398,385,'[자유글]sdf','sdf','0.jpg','화면 캡처 2021-09-06 121634.png','화면 캡처 2021-09-06 121721.png',null,null,'a6cbff94.jpg','ef50bcbf.png','52402083.png',null,null,1,3,to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (400,385,'[자유글]asd','asd','화면 캡처 2021-10-05 100529.png',null,null,null,null,'a6b758be.png',null,null,null,null,2,1,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (401,385,'[자유글]첨부 없을 때?','사진 첨부 없음',null,null,null,null,null,null,null,null,null,null,4,0,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (402,385,'[자유글]수정예정 사진있음','수정예정 사진있음',null,null,null,null,null,null,null,null,null,null,15,0,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (417,385,'[자유글]줄개행','줄개행 테스트입니다.
하하하하
<script>alert(''test'');</script>',null,null,null,null,null,null,null,null,null,null,22,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (418,512,'[자유글] 자유게시판','하하핳',null,null,null,null,null,null,null,null,null,null,8,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (419,512,'[자유글]더미데이터 생성중','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel quam enim. Aliquam facilisis magna magna, id aliquam magna pellentesque vel. Aenean dignissim lectus purus, nec suscipit augue sagittis vitae. Ut purus urna, faucibus id efficitur a, aliquet sed mauris. Morbi sed turpis feugiat, porttitor arcu non, consequat ipsum. Fusce molestie maximus purus, ut tristique justo bibendum dictum. Nullam tincidunt felis ligula, et accumsan nisi feugiat at. Nam ex dolor, dapibus id scelerisque vitae, sagittis in felis. Donec mi tortor, auctor quis magna quis, tempor venenatis lectus.','basic.jpg',null,null,null,null,'20732e58.jpg',null,null,null,null,8,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (420,423,'[꿀팁] 님들 저 다이어트 성공했어요','원래도 너무 이뻤지만 더 이뻐졌죠?
저탄고지 했습니당','설현.png',null,null,null,null,'5b28e728.png',null,null,null,null,17,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (412,391,'[소식/정보]수정 테스트',' <c:forEach var="page" begin="${pc.beginPage }" end="${pc.endPage }">
',null,null,null,null,null,null,null,null,null,null,29,0,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (421,423,'[꿀팁] 다이어트 전후 사진 공개 합니다','뚱냥이에서 근육냥이 됐어요
장난아니죠?
단백질 잘 챙겨먹고 근력 운동 위주로 했어요','고양이.jpg','고양이2.jpg','고양이3.jpg','고양이4.jpg',null,'9f5e4b8d.jpg','92e4217a.jpg','8a1a2e44.jpg','efbe826a.jpg',null,35,4,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (422,410,'[홍보][헬스용품할인중] 전색상입고!그립패드 1만원 추가 할인 10월 13일까지 앵콜연장!! 헬린이 헬창이 난리난 헬스그립!아직도 헬스장갑 끼세요?','①

지금까지의 헬스장갑,헬스용 그립은 잊어주세요.

특허받은 신계념 그립패드 정식 수입이 완료되었습니다.

?

전색상 입고완료!!

?

헬린이,헬충이,헬창이,남,녀 누구에게나 적합한 제품입니다.

?

찐가을 10월!!여름에 최적화된 헬스그립

 10월 13일까지 1만원 할인된 가격으로 만나보세요.

?

기존 38,900원===>입고기념 할인 29,800원

2개이상 구매시 추가할인

?

직접 사용해 본 결과 정말 편하고 그립력 짱짱합니다.

?

헬스장갑,리프팅 그립등도 수입절차를 거쳐 입고될 예정입니다.

저렴한 중국산 제품과 다른 품질과 가성비 제품이니 

국민 그립될수 있게 많은 관심 가져 주시기 바랍니다.
[출처] 전색상입고!그립패드 1만원 추가 할인 10월 13일까지 앵콜연장!! 헬린이 헬창이 난리난 헬스그립!아직도 헬스장갑 끼세요?미국정식수입 신개념 헬스그립. (헬스매니아  몸짱 클럽/헬스보충제 공구/다이어트/초보운동법) | 작성자 후아','그립패드_06월대문.jpg',null,null,null,null,'d6d912ee.jpg',null,null,null,null,6,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (423,410,'[홍보][멸치탈출게이너] 올가을 멸치탈출!5종 곡물탄수화물 헬스매니아 게이너 최초 역대급 할인 이벤트 앵콜연장 10월 13일까지 4kg대용량 59,800원','올가을 말도 살찌는데 나만 멸치?



올해도 멸치로 사것인지?? 올해는 탈출하자.

헬스매니아 게이너로 꽁치!!고등어가 되어봐요.





가격만 보지 마시고 사용단백질 비교 필수!

100%유청단백 WPI+WPH사용 제품!

대두단백질 함량 0%



10월 13일까지 앵콜연장!!

본사지원+10월할인=역대급 구매조건!!

헬스매니아 프로틴의 만족도를 능가할 진짜 게이너.


5종 곡물 탄수화물 말토덱스트린NO!/결정함수 포도당NO!
WPI+WPH사용 제품

사용된 단백질을 반드시 비교해 보세요.대두단백질 함량 "0"%

성분/가격 꼭 비교해 보세요.

동급 성분 몇만원차이 동급가격 성분차이 비교도안됩니다.


정말 좋은 제품입니다.유통 게이너중 가성비 탑.!!


[출처] 올가을 멸치탈출!5종 곡물탄수화물 헬스매니아 게이너 최초 역대급 할인 이벤트 앵콜연장 10월 13일까지 4kg대용량 59,800원 (헬스매니아 몸짱 클럽/헬스보충제 공구/다이어트/초보운동법) | 작성자 후아','글양식게이너_0331.jpg',null,null,null,null,'80491e8e.jpg',null,null,null,null,4,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (424,410,'[홍보] [BCAA 1만원 할인]  BCAA 500g 28.900원 맛있는 세가지맛 업그레이드 출시기념 53%할인 한정수량 10월 13일까지!','업그레이드 뉴 헬스매니아 비씨에이에이 드디어 출시!

?

성분검사 완료!

성분꼭 비교해 보시고 많은 이용 부탁 드립니다.

?

맛있는 BCAA를 시장파괴 가성비로 경험해 보세요.


?

한정수량 10월13일까지 53%할인

28,900원 2개이상 주문시 추가할인 됩니다.^^

?','bc.png',null,null,null,null,'7331f054.png',null,null,null,null,9,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (425,410,'[홍보][WPH초특가이벤트] 10월할인조건 30% 할인 72,800원 시장파괴 가성비 WPH-1 대용량 3kg 100서빙 10월 13일까지 한정 물량 추가할인!','힘내라 대한민국!!


찐쐬질의 계절 10월이 시작되었습니다.

득근을 위한다면 플렉스!!



운동하기 가장 좋은 최적의 계절 10월.

잠자던 근육에 기름을 부어줄 100% WPH 사용제품



가성비최강 WPH-1 3kg 100회분



타사제품 처럼 2kg NO!!.. 3kg 100회분 가격비교 필수




10월 13일까지 한정수량!!

카페공동구매 최다 판매 상품으로 가격은 내리고 제품양은 올린
가성비 최강 제품입니다.카페최다 판매상품


더이상 나올수 없는 파격적인 가성비 입니다.

식약처등록완료,광고심의 완료

현재 시판중인 WPH 제품과 가격비교 필수!!
','wph.jfif',null,null,null,null,'4de1d3df.jfif',null,null,null,null,13,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (426,392,'[자유글] 수료날이 4일 남았어요 시간 짱 빠르다','ㅇㅇ',null,null,null,null,null,null,null,null,null,null,9,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (427,415,'[꿀팁] 비포 에프터 예요 ㅋㅋ','노래만 잘 부르면 됐죠
왜 살빼래','에일리.jfif',null,null,null,null,'1354c558.jfif',null,null,null,null,8,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (428,415,'[꿀팁] 다이어트 성공하는 법 알려드림 (비포애프터 사진 있어요)','업체 끼고 하시면 됩니당','노유민.jfif',null,null,null,null,'a6ffa85c.jfif',null,null,null,null,14,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (429,393,'[자유글] 저만 맨날 배고픈가요? ','식단 하시는 분들 어떻게 허기 참으시는지.. 흑흑',null,null,null,null,null,null,null,null,null,null,24,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (430,435,'[홍보] BCAA 효과와, BCAA 제품 추천','1. 엑스텐드 BCAA - 아마 가장 유명한 BCAA가 아닐까 싶습니다. 다른 BCAA에 비해 훌륭한 맛 때문인지 운동하시는 분들이라면 다 아는 Xtend사의 BCAA! 제가 먹어본 맛은 블루 라즈베리맛으로 정말 맛있었습니다.. 포도맛도 맛있다고 하더라고요~

몬스터짐(몬스터 마트)에서 2.18 lbs( 약 1kg ), 54,000원대 


2. 마이프로틴 BCAA ( 2:1:1 ) - 가성비로는 최강인 마이프로틴사의 BCAA입니다. 현재는 저도 이 제품을 먹고 있습니다. 먹다가 체감이 잘 안돼서 끊었다가, 다시 먹으니 체감이 확실히 되는것 같더라구요! 기분탓일진 모르겠지만 이런 심리적인 부분도 저는 긍정적으로 생각하기 때문에 충분히 투자할 가치가 있다고 생각합니다 ㅎㅎ! 마이프로틴 bcaa에는 알약 형태도 있고 분말형 태도 있지만 분말형태 기준으로 소개해드리겠습니다! 제가 먹어 본 맛으로는 포도, 워터멜론, 레몬주스, 얼그레이 맛을 먹어봤는데요.. 제 주관적인 맛 순위는 레몬주스> 워터멜론> 포도>>>>얼그레이입니다. 레몬주스는 완전 레몬에이드와 흡사하고, 워터멜론도 삼삼하니 맛있습니다. 포도는 너무 달았고 얼그레이는 그 얼그레이 맛이 아니라 그냥 역해서 다 버렸습니다..

마이프로틴 코리아에서 1kg에 57,900원이지만 항시 하는 세일과 월마다 있는 세일 프로모션으로 싸게 사면 3만 원 초반대 못해도 3만원 후반대에 구매가 가능합니다. 가성비는 가장 최고입니다.

','BCAA상세페이지_03월5일.jpg',null,null,null,null,'aea82b71.jpg',null,null,null,null,26,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (432,386,'[자유글]','닉네임변경테스트
ㄴㅇㄹ','site01.jpg','site02.jpg','site03.jpg',null,null,'3d81dffb.jpg','a49c2293.jpg','5e07f75f.jpg',null,null,40,3,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEBOARD (FBNUM,MEMBERNUM,FBTITLE,FBCONTENT,FBIMAGE1,FBIMAGE2,FBIMAGE3,FBIMAGE4,FBIMAGE5,FBREALIMAGE1,FBREALIMAGE2,FBREALIMAGE3,FBREALIMAGE4,FBREALIMAGE5,FBLOOKCOUNT,FBIMAGECOUNT,FBREGDATE) values (438,385,'[자유글]2222','2222','site02.jpg',null,null,null,null,'527c11c2.jpg',null,null,null,null,15,1,to_date('21/10/05','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.FREELIKELY
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREELIKELY (FBNUM,MEMBERNUM) values (430,435);
Insert into SPRINGWEFIT.FREELIKELY (FBNUM,MEMBERNUM) values (418,435);
REM INSERTING into SPRINGWEFIT.FREEREPLY
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (1,377,'테스트 댓글입니다. 1',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (2,377,'테스트 댓글입니다. 2',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (3,377,'수정 테스트입니다.',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (4,377,'테스트 댓글입니다. 4',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (5,377,'테스트 댓글입니다. 5',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (6,377,'테스트 댓글입니다. 6',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (7,377,'테스트 댓글입니다. 7',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (8,377,'테스트 댓글입니다. 8',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (9,377,'테스트 댓글입니다. 9',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (10,377,'테스트 댓글입니다. 10',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (11,377,'테스트 댓글입니다. 11',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (12,377,'테스트 댓글입니다. 12',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (13,377,'테스트 댓글입니다. 13',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (14,377,'테스트 댓글입니다. 14',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (15,377,'테스트 댓글입니다. 15',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (16,377,'테스트 댓글입니다. 16',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (17,377,'테스트 댓글입니다. 17',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (18,377,'테스트 댓글입니다. 18',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (19,377,'테스트 댓글입니다. 19',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (20,377,'테스트 댓글입니다. 20',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (21,377,'테스트 댓글입니다. 21',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (22,377,'테스트 댓글입니다. 22',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (23,377,'테스트 댓글입니다. 23',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (24,377,'테스트 댓글입니다. 24',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (25,377,'테스트 댓글입니다. 25',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (26,377,'테스트 댓글입니다. 26',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (27,377,'테스트 댓글입니다. 27',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (136,378,'ㅈㄷㄱ',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (29,377,'테스트 댓글입니다. 29',364,to_date('21/09/22','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (137,378,'ㅂㅈㄷ',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (150,415,'ㅁㄴㅇ',385,to_date('21/10/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (151,415,'ㅁㄴㅇ',385,to_date('21/10/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (152,415,'ㅂㅈㄷ',385,to_date('21/10/30','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (153,412,'zzzz',385,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (154,428,'1년기준으로 얼마예요?',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (155,428,'헐 리즈 갱신',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (156,425,'와 가성비 어나더레벨',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (165,432,'ds',385,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (158,428,'와 요요방지 혜택이 뭐에요? 노유민 못알아볼뻔 ㅋㅋㅋㅋㅋ',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (159,429,'저도 맨날 배고파요',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (160,430,'와... 위핏에서 이제품으로 이벤트 해줬으면 좋겠어요',492,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (163,431,'<script>alert(''test'');</script>',385,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (167,438,'호',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (166,432,'dfdf',514,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (170,438,'gkgk',385,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (169,438,'2',392,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (132,396,'cccc',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (130,396,'zzzz',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (131,396,'xxxx',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (133,378,'삭제',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (134,378,'하하하',365,to_date('21/09/28','RR/MM/DD'));
Insert into SPRINGWEFIT.FREEREPLY (FRNUM,FBNUM,FRCONTENT,MEMBERNUM,FRREGDATE) values (135,378,'ㄴㅇㄹ',365,to_date('21/09/28','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.FREEREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (408,385);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (396,385);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (403,385);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (408,391);
Insert into SPRINGWEFIT.FREEREPORT (FBNUM,MEMBERNUM) values (47,385);
REM INSERTING into SPRINGWEFIT.MARKETBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (41,385,'sell','테스ㅡㅔㅌ스',6000,'소','basic.jpg','hobak.jpg','jebi.jpg','sky.jpg',null,null,null,null,null,null,'7ae2c177.jpg','dc8e9117.jpg','66842111.jpg','3f5465b0.jpg',null,null,null,null,null,null,'서울 마포구 신촌로 지하 90',37.555442,126.936119,19,4,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (42,397,'sell','qwer',123,'qwer',null,'sky.jpg','sunflower.jpg','tulip.jpg',null,null,null,null,null,null,'0df5b068.jpg','56529eb8.jpg','874e1e8d.jpg','c8d8cb2f.jpg',null,null,null,null,null,null,'서울 관악구 낙성대역3길 3',37.476316,126.961871,4,4,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (43,385,'buy','그립 스펀지 팔아요 사진 수정예정',1000000,'사진 수정 예정',null,null,null,null,null,null,null,null,null,null,'07b8356b.jfif',null,null,null,null,null,null,null,null,null,'서울 마포구 신촌로 6',37.558338,126.926837,31,1,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (44,397,'sell','sttesttesttesttesttes',3000,'ㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇㅁㄹㅇㄴㄹㅇㄹㅇㄴㅁㄹㅇ','item01.png','item02.png','item03.png','side03.png','side04.png',null,null,null,null,null,'82dd8e8b.png','e35a4d68.png','d52e1b91.png','eb6e9864.png','ce437617.png',null,null,null,null,null,'서울 관악구 낙성대역길 8',37.4772,126.961985,44,3,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (47,397,'buy','야구용품 팝니다',3000,null,null,'baseball-gd53e62220_1920.jpg',null,null,null,null,null,null,null,null,'8fcb8c21.jpg','84a3914d.jpg',null,null,null,null,null,null,null,null,'서울 관악구 남부순환로 1924',37.476908,126.962878,5,2,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (48,397,'sell','축구용품 삽니다',5000,'삽니다',null,null,null,null,null,null,null,null,null,null,'0482ff55.jpg',null,null,null,null,null,null,null,null,null,'서울 강남구 남부순환로 2613',37.485049,127.035498,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (49,397,'buy','수영모자 팝니다',3000,'팝니다 라텍스',null,null,null,null,null,null,null,null,null,null,'fc58dd94.jpg',null,null,null,null,null,null,null,null,null,'서울 관악구 남부순환로 1357',37.479694,126.901508,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (50,510,'buy','자전거 팝니다',30000,'자전거 팝니다 레트로스타일',null,null,null,null,null,null,null,null,null,null,'bd63aa36.png',null,null,null,null,null,null,null,null,null,'서울 관악구 남부순환로 1500',37.482044,126.917252,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (51,510,'share','테니스라켓',0,'가져가세요',null,null,null,null,null,null,null,null,null,null,'20db4aa2.jpg',null,null,null,null,null,null,null,null,null,'서울 구로구 남부순환로 946',37.492507,126.862033,7,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (52,510,'share','탁구채 나눠요',0,'쉐이크핸드 그립이에요',null,null,null,null,null,null,null,null,null,null,'b435f233.jpg',null,null,null,null,null,null,null,null,null,'서울 강남구 남부순환로 2609',37.484963,127.035096,1,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (53,510,'buy','도복 팝니다',50000,'사이즈미스여서 팔아요',null,null,null,null,null,null,null,null,null,null,'7b2b2c20.jpg',null,null,null,null,null,null,null,null,null,'서울 강남구 강남대로 238-2',37.484787,127.034571,0,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (54,510,'buy','팝니다',10000,'팝니다 테스트',null,null,null,null,null,null,null,null,null,null,'cf0de42b.jpg',null,null,null,null,null,null,null,null,null,'서울 강남구 남부순환로 2611',37.484989,127.035354,4,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (55,510,'sell','사요 삽니다',3000,'사요삽니다',null,null,null,null,null,null,null,null,null,null,'aead3a77.jpg',null,null,null,null,null,null,null,null,null,'서울 강남구 남부순환로 2609',37.484963,127.035096,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (56,510,'buy','삽니다로 나오나 팔아요 선택인데',300,'삽니다로 나오나 팔아요 선택인데',null,null,null,null,null,null,null,null,null,null,'ebf00638.jpg',null,null,null,null,null,null,null,null,null,'서울 강남구 남부순환로 2611',37.484989,127.035354,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (57,512,'share','무나할게요',0,'선착순입니다',null,null,null,null,null,null,null,null,null,null,'a76c7318.png',null,null,null,null,null,null,null,null,null,'서울 강남구 가로수길 5',37.518211,127.02315,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (58,512,'sell','볼링신발팝니다',5000,'사이즈270 이거신고 우승했어요',null,null,null,null,null,null,null,null,null,null,'93921b52.jpg',null,null,null,null,null,null,null,null,null,'서울 관악구 남부순환로 1375',37.480108,126.903514,5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (59,512,'sell','도복팔아요',50000,'팝니다
사이즈 
a2',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,'서울 관악구 낙성대역길 15',37.47674,126.961992,10,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (60,512,'sell','가방팝니다',3000,'가방팔아요
43리터
',null,null,null,null,null,null,null,null,null,null,'b5f97a77.png',null,null,null,null,null,null,null,null,null,'서울 관악구 낙성대역길 27',37.476262,126.961692,14,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (61,512,'sell','당구 큐대 팝니다',6000,'몇번 안썼어요
직거래만','billiard-ga6fb4e9ee_1280.png','backpack-gdfa3867d0_1280.png',null,null,null,null,null,null,null,null,'c43c529a.png','72d0b517.png',null,null,null,null,null,null,null,null,'서울 관악구 낙성대역길 37-4',37.475965,126.961681,46,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (62,428,'share','꽁짜루 드립니다',0,'아디다스 니삭스 24cm에요 
',null,null,null,null,null,null,null,null,null,null,'ecba1901.jpg',null,null,null,null,null,null,null,null,null,'서울 마포구 양화로 지하 45',37.549123,126.913545,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (63,512,'sell','팝니다',300,'팝니다팝니다',null,null,null,null,null,null,null,null,null,null,'cae6d500.jpg',null,null,null,null,null,null,null,null,null,'서울 마포구 고산길 105',37.55516,126.942718,77,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (78,398,'sell','안쓰는 운동기구 팝니다.',100000,'뻥입니다.',null,null,null,null,null,null,null,null,null,null,'4f41303e.jpg',null,null,null,null,null,null,null,null,null,'서울 강동구 천호대로 지하 997',37.538579,127.123742,22,1,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETBOARD (MBNUM,MEMBERNUM,MBTYPE,MBTITLE,MBPRICE,MBCONTENT,MBIMAGE1,MBIMAGE2,MBIMAGE3,MBIMAGE4,MBIMAGE5,MBIMAGE6,MBIMAGE7,MBIMAGE8,MBIMAGE9,MBIMAGE10,MBREALIMAGE1,MBREALIMAGE2,MBREALIMAGE3,MBREALIMAGE4,MBREALIMAGE5,MBREALIMAGE6,MBREALIMAGE7,MBREALIMAGE8,MBREALIMAGE9,MBREALIMAGE10,MBADDRBASIC,MBLATITUDE,MBLONGITUDE,MBLOOKCOUNT,MBIMAGECOUNT,MBREGDATE) values (80,397,'sell','12345',3000,'12344',null,'spain2.jpg',null,null,null,null,null,null,null,null,'293b3d04.jpg','2190485b.jpg',null,null,null,null,null,null,null,null,'서울 관악구 낙성대역길 15',37.47674,126.961992,16,2,to_date('21/10/05','RR/MM/DD'));
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
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (54,75,'ㅈㄱㄶ오로ㅜㅡㄱㄷㅈㅎㄴㅇ',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (52,75,'댓글댓글',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (53,75,'댓디ㅏ룽ㄴㅁㅎㅇㄴ',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (55,76,'ㅈㄱㄷㅅ교셔ㅗㅓ',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (56,76,'ㅂㅈㄷㄱㅇㅅ료허ㅗ',435,null,to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (57,78,'예약중입니다',398,null,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (58,78,'판매 완료',398,null,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (60,78,'dd',385,null,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (12,41,'ㄹㅇㄴㅁ',385,null,to_date('21/09/30','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (17,41,'와!  한우!   6000원!  가성비!',387,null,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (18,41,'테스트',387,null,to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (19,44,'asd',385,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (20,44,'asdfasd',385,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (21,44,'sdf',385,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (22,44,'메인페이지 보고 왔습니다.',410,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (23,47,'산다는거에요 판다는거에요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (24,49,'네고 되나요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (25,48,'산다는거에요 판다는 거에요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (26,44,'댓글댓글',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (27,47,'네고되나요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (28,47,'낱개판매하나요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (29,48,'사이즈 몇이에요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (30,48,'스터드 얼마나 닳았나요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (31,49,'실착횟수 몇번인가요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (32,50,'택배가능한가요',510,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (33,50,'네고되나요',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (34,55,'판다는거에요 산다는거에요',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (35,55,'네고되나요',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (36,55,'직거래만 하나요',512,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (37,61,'네고됩니까? 집앞까지 갈수있습니다',428,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (38,58,'275인데 맞을런지요',428,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (40,59,'무슨 도복 이에요? 도복 사진이 안보여요.',423,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (41,59,'유도도복이면 관심 있어요~',423,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (42,60,'헐 지금 이거 허위매물인가요?',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (48,59,'사진안올리신거보니 사기 아닐까요?',492,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (44,57,'와 새거같은데 진짜 무나예요?',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (45,54,'뒷면 사진도 보여주세요',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (46,54,'관심 있어요',435,null,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MARKETREPLY (MRNUM,MBNUM,MRCONTENT,MEMBERNUM,STARSCORE,MRREGDATE) values (47,63,'송아지를 파시려구여?',509,null,to_date('21/10/02','RR/MM/DD'));
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
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (385,'admin','관리자','$2a$10$LjQ7xElXZyMbQhvoVXUFKeAPqR1Ps9A8Poy4MjWgn6cbHuFahxLK.','01011111111',to_date('21/10/05','RR/MM/DD'),to_date('21/10/05','RR/MM/DD'),'N',37.560567,126.943349,'Y','ee0206d5','YES',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (364,'test@test.com','test','$2a$10$UD.0v9JdgYqyAQg9zXHnUOmsZFyzM0i5IYEIWt3kYWIOAJFbGbZra','123094858',to_date('21/09/17','RR/MM/DD'),to_date('21/09/17','RR/MM/DD'),'Y',null,null,'N','7a15e820','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (365,'hwanseo3747@gmail.com','hwanseo','$2a$10$YFj59qoOlaCcEIAnrxBWqeQa4Emuqi.83.OK/IyzP7D88TrtRH3c.','01092937575',to_date('21/09/25','RR/MM/DD'),to_date('21/09/25','RR/MM/DD'),'N',37.48147,126.648931,'Y','2ca9ab94','NO',null,'none',to_date('21/09/29','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (2,'yeriyerimoon@gmail.com','홍길도','$2a$10$2weMyRrJiocdAW.1spjTtemaEUrEkEx1piFzexYn2d78KwMtL/xJ.','01026421128',to_date('21/09/24','RR/MM/DD'),to_date('21/09/24','RR/MM/DD'),'Y',null,null,'N','d6a70ba2','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (389,'abcd1234@gmail.com','abcd','$2a$10$rD5qdOAPZ033Zh0pCICqyep8aUaunmh2z5OpPdz7/.EvrrJc9MVwi','0101111111',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','690c7884','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (386,'hwanseo3747@naver.com','테스트1','$2a$10$1RPvT.n37HlYaOGld5mKYOS3hSLpRNyL7pCpiRFaNXVcsxtOmVMxi','0123904857',to_date('21/09/28','RR/MM/DD'),to_date('21/09/28','RR/MM/DD'),'N',37.484536,126.641767,'Y','ecd3546c','NO',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (387,'dkssyd7358@gmail.com','눈코딱지','$2a$10$ks5EPhp6IBSeBAtU91csq.tF4TByRqHMVIKSPfuNMqCgJTysbsyG.','01011111111',to_date('21/09/29','RR/MM/DD'),to_date('21/09/29','RR/MM/DD'),'N',37.483315,126.645043,'Y','0fe0b201','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (400,'dkssyd7358@naver.com','qweqwe','$2a$10$5bAZeEw9aTwioKTtLDUpcOO1943ZdVod4nY.WZh104zuavDrynzoC','0103333333',to_date('21/10/01','RR/MM/DD'),to_date('21/10/01','RR/MM/DD'),'N',null,null,'Y','54a9b3f0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (391,'funigency@hanmail.net','hihihihi','$2a$10$Whr558vwEH577h3EKC3IyesYQcfuAaFeC5eRwUDJsp6GfhBIHsmRW','01098233272',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555571,126.932732,'Y','f80967e7','NO',null,'none',to_date('21/10/01','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (392,'minho117811@gmail.com','호미호미','$2a$10$/LsCj.IvdxXOKBz9A/GPMucqHJogdf2Y6H0eLu12iQp7tmJzyoEYO','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.5761,126.9344,'Y','53ad04db','NO',null,'none',to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (393,'magnifique1128@gmail.com','뽀로로','$2a$10$Oz1c2ziAvKNtablnR0AaZOUSr4o1hk2Aj8EtD81Ik2FmeB/beRz3C','0101111111',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.531046,126.907079,'Y','7920af50','NO',null,'none',to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (397,'lhj8514@daum.net','수정수정','$2a$10$DFduWYuNsmcj0r5y7Eulx.addyp7.VoKODB.SaqeC43AlBzMjRaDG','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.478856,126.964843,'Y','650f4b9d','NO',null,'C52FF5207BC8006E93D453A3B5025811',to_date('21/10/07','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (395,'lyj8514@naver.com','heej','$2a$10$x1TDPYigtoF95OccTB7jLuaNkTTDsBHtnLRbpPKPB5qHo.47BgM6G','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','bffba24e','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (398,'stephen4951@naver.com','메롱메롱','$2a$10$4GL1Pn7toTZwO75S11kRjOCPqMp6ACcJ/PMgFrizMKZhaL7Pk6S2G','01047428917',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.560567,126.943349,'Y','4e0f1350','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (401,'sally@wefit.com','샐리SALLY','$2a$10$cEjEWAgGqmhb5XS/qx2PZOS2KU5zs/Ll6aghkqd.1o00XhXW/9ZKe','01086835085',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e8bba666','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (402,'latte@wefit.com','라떼처럼','$2a$10$8LJeceJ.cjqc6iQNn8YCJOSJmcStOJpRZQOcAi8SB1eOD2hTPO5o.','01062881814',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','ebe16a16','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (403,'test1@test.com','test1','$2a$10$ybuxbF4.b5iT7TYP1YjjReos2Du0EvFaAbvB7pGKoQfDr3X30ZdK2','01029394857',to_date('21/09/16','RR/MM/DD'),to_date('21/09/16','RR/MM/DD'),'N',null,null,'Y','5d187484','N',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (404,'test2@test.com','test2','$2a$10$ywLq.plckBS4QGCyb39ssOK.TBWDAKl7I9lQRDyjQjFJ/pdm1zXAe','01029387575',to_date('21/09/16','RR/MM/DD'),to_date('21/09/16','RR/MM/DD'),'N',null,null,'Y','ce0be4e3','N',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (405,'test3@test.com','test3','$2a$10$UD.0v9JdgYqyAQg9zXHnUOmsZFyzM0i5IYEIWt3kYWIOAJFbGbZra','123094858',to_date('21/09/17','RR/MM/DD'),to_date('21/09/17','RR/MM/DD'),'N',null,null,'Y','7a15e820','N',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (406,'auth@wefit.com','관리자1','$2a$10$DJKHCGQzK1LeNzjTH.uPH.8MtnDAOSK7h5EWkwe.Bup/WzmyXMPKK','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','0c7099fb','YES',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (407,'auth2@wefit.com','관리자2','$2a$10$AbHtIXeV8zwDrbAaN6O8duUjVXKARDjIK.zg9FCmWENo5W3IYvv9u','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b4b5820d','YES',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (408,'auth3@wefit.com','관리자3','$2a$10$9IbYTLYko5.FXFr2/pZ2Qex892LlKHYIqWe3AYLrUKd2mW1Uk9cYq','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','833c65b7','YES',null,'none',to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (409,'auth4@wefit.com','관리자4','$2a$10$Q9hPuSsz43UmKft0SHfp5eSXutmR4wlgWgBZW0BbPd3fJ3VHV9WY.','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','99e4c1a8','YES',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (410,'auth5@wefit.com','운영자다','$2a$10$98P5k04NaJJ8bCQOCAikHOwQohLfiT/bAHQpcPHsDJOgu8rVz.GFu','01000000000',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555553,126.93272,'Y','8c4bd945','YES',null,'none',to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (411,'meow123@wefit.com','야옹이','$2a$10$2NjcvZvpMJ/q4IXyThonmuuvsnP3rJ4p3sN1DfS4eZxpoRiTeQwIG','01012345678',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2b938666','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (412,'cristiano@wefit.com','호날두','$2a$10$YKIr36ZNOWlonOnWpjcPtOjkr8.VicKvxhFmEmvhrmaN63Z5fJF8m','01007298172',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','7df1bcf7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (413,'ddoddo@wefit.com','또또','$2a$10$MKQFURbSHXRVqpXtn65o8ufCnrlcNyR//57OSkKNEAzLYW6pK66y.','01048583222',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','513ea3cd','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (414,'hongGrami@wefit.com','홍그라미','$2a$10$9zX3nmkBh7Bb08ICv9cLlOzwDyDdP9C27bBfO7WMpDd1M5TRv44wS','01090725210',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','bdeef31b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (415,'ryan@wefit.com','RYAN랸랸','$2a$10$buI0jo6fRp2sJB9sePuum.Nku6oqzKuhej2QPpX6KMxXXUL5Wy3pm','01001601768',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','831d2664','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (416,'carol@wefit.com','Christmas','$2a$10$sHRrkneuFZGyvQwQ/DKbTO8Dz.hPyY6R1UM7eq/D0HyPgGABFyE2i','01024771889',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','811850e3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (417,'lwm@wefit.com','lwmsxena','$2a$10$N53ozGR0ricjCO3MRrw79.yX6YPo8Gwd2YJcpbUtB0DLoS.glXZM2','01078638742',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a8ffde4c','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (418,'hana@wefit.com','김하나','$2a$10$3SwOLqeF3wdUQyYTQ2DxY.nt2AbBAqtvQZNsffmGA4yMRux9SZb2G','01059653254',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a21d3aed','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (419,'fifaon9@wefit.com','FIFAon9','$2a$10$WsQBXhSPdQgNwp5PPfRNSelrVIdeCO0MViU3BEJaYUBI1oxcnFpEG','01067917971',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c8ffa181','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (420,'melon-park@wefit.com','melon p','$2a$10$pndX2kh60Qq0zm80cL06PeSro5aANMFLDqHqRfctdVV.dEGAksJ86','01004153844',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c6bcd906','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (421,'bliss@wefit.com','블리스Bliss','$2a$10$f/ZLGo2Dqd7TLU3BOYNTeOHctBbmMSOFeg3lGX3UqQpK8chWeRKMu','01086747674',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','29b47997','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (422,'waiting@wefit.com','박대기','$2a$10$xbskSf9cDwb98E.lNZP.Gua3ZGQ4isdXzzygF5b51I9IfP.q1pgP2','01059600383',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','207049f9','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (423,'gogildong@wefit.com','고길동','$2a$10$SlRLwB8hjokNIfDnM6QLveAfnyjx7usNcqd7Jph/NLT729p9JGyXi','01054906540',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555568,126.932714,'Y','bb5253bd','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (424,'dooley@wefit.com','둘리','$2a$10$/mfxHFzl2LbjBGoYEAjRB.a66V1uX5hKnbFNtaPZvrPppikCljG2W','01097603646',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.555566,126.932724,'Y','7dfaca90','NO',null,'none',to_date('21/10/04','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (425,'lilyjeon@wefit.com','Lily Jeo','$2a$10$dIZntpZLyjzXzmNDG7CBMuhUMQwS2Qcn1XyTPltpefzGlYDJxoDYe','01099307130',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9469443b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (426,'newboat@wefit.com','newboat','$2a$10$eOU9sPOmTOo.rY9gQ.XHbOwXCAyLBqZ5aJww3neVvwqxYVbFIzt2G','01037806395',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','567cf0fa','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (427,'knowing@wefit.com','안알랴줌 ','$2a$10$txIXloFpF1uotgRQQA85h./zwN.Zieci/AEvUve2ziRoDK//ZUJ52','01038524602',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','e56b26ed','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (428,'milkbread@wefit.com','우유빵','$2a$10$1zliuq3zqSeS316SKZOSwuNwu8oT5QqRPyb2wYw9.TSbhUSZtMQoi','01026030228',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b35cd94c','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (429,'lovinglg@wefit.com','Life is G','$2a$10$Sm9mBNZl2q9Yj/TfuJdeKuYtWvsAf1g5n9QIK3Hxk4pRdImzmCzry','01089323051',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','f4fa8b30','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (430,'ade@wefit.com','자몽에이드','$2a$10$epTZhUGRHYR66RKhhOm6p.37Git.cICQS.k1OHpcYy7PB.GsNXlGa','01089876447',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c56d3263','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (431,'lotte0@wefit.com','노태영','$2a$10$jP91CdPzQpYuS4guTD6POOGyJ8DN6654Hi73S6zPodPgX1Kk2PPfC','01031652551',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e4eada03','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (480,'sg@wefit.com','sg오이도','$2a$10$cx5Kyea32/qm3PIE4LI7fulLHnyZ0oqCbLB2kcwNQqrGVVaR9gjze','01087234280',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','04d7d9f3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (481,'cheese@wefit.com','치즈케익','$2a$10$kE0wYXC2oGPNyB0hjEbZJO6dKmiqIRPODKecbapzwsX8RIzguCcKy','01062910610',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9cc88c86','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (482,'neo@wefit.com','너구리','$2a$10$OPJz2lrBYhbE5Vk.I9BVU.HObFu.sGYb09T3XIdHtIuxrJF1tV2N2','01096479275',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2ad953e5','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (483,'sseri@wefit.com','happyss','$2a$10$StVJ0V/vJgFn1Ij414lKOO6HMAguzN8qvtvVSEhVy6f5pa./Jx7Gm','01005576242',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','7543ce86','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (484,'card@wefit.com','카드값줘체리','$2a$10$LSpsBcOW2XtrxhnOX3r/fub2rctnQjPpNoATch6lm29bS5Hqn7Apm','01030924104',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e487b686','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (485,'bluesky@wefit.com','blue sky','$2a$10$yfE1iAJdjwkPvPnIZJ1BVO/1mEPticnz.vVfo26srj4Pad18P3Mr6','01066592641',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','88aba7fe','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (486,'jyyy@wefit.com','jyyy Lee','$2a$10$HCMdMtybs8aMA9hYUsyqRuB/S4d4Yscdr1kQF/0Jl8ivNBb3GCbme','01063734767',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','62fc7515','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (487,'thanks@wefit.com','고맙Day','$2a$10$xfPMbeEWI5RpDJ7Vi3Kk.ueQ1ahSjknjWY.0FbTbvBg7IZ2ay.5Ym','01008158624',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','466a192e','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (488,'sally@wefit.com','샐리SALLY','$2a$10$cEjEWAgGqmhb5XS/qx2PZOS2KU5zs/Ll6aghkqd.1o00XhXW/9ZKe','01086835085',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e8bba666','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (489,'latte@wefit.com','라떼처럼','$2a$10$8LJeceJ.cjqc6iQNn8YCJOSJmcStOJpRZQOcAi8SB1eOD2hTPO5o.','01062881814',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','ebe16a16','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (490,'kwon@wefit.com','권별하','$2a$10$8V4pZVXPb69B8ApOxzjOL.mve2cfg0zjv7YuxpGIA.JLwPdQS9AlO','01090345264',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1e070fb4','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (491,'scentplus@wefit.com','scentplus','$2a$10$iFdOPpsELB/ckaxrXkRdQOaI680r1ibzJw3G5p1nkrKbIH4ruxNem','01041520520',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c6f844cb','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (492,'jyun@wefit.com','쥰','$2a$10$03GEgtMg4jvqu881ct2T1OopEvcKxHkoiuGBYabyFS9a2TA44plcG','01084097682',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5547cf4e','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (493,'kim@wefit.com','kim여니','$2a$10$BxFXPuCzn1zI5CWCOoJcw.shZ2Zz.4BBr3wFgkIpUrHRrFSVPiVAa','01039561097',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','aacd9eb8','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (494,'jeong@wefit.com','Jeong','$2a$10$3bQp/Vl2r8ZHHzRBZXQq7uD57Thx2Nn9TvtaHD1vVk4xTHLZBBB0G','01004881898',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b9c7966d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (495,'libera@wefit.com','Edity Libera','$2a$10$F96hs7/p3iOlJ42Y4j/mhOpq23/u9TlYyPUuXil8O2ELLUU/WX3fa','01008615951',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','53b8cd9f','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (496,'nothanks@wefit.com','안묵을래','$2a$10$IL7gMxOZFyRyJZmg33vzJe4bMbgCKK5PokYFhWKzCd.IDfvPDjC2m','01036321725',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1e5b5916','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (497,'ava@wefit.com','Ava Ford','$2a$10$JNoFdemgcPT7s5FdTEOlyO8MRZQHG5HlD7FGkw6lU0RU5kbCLLM..','01046576408',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','be04d567','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (498,'slow@wefit.com','느림보','$2a$10$Z1qUbbTsJrVxSvYI3U/1B.r6aO.W2bwNhAeFQVsAHhvRpHaQ/M3xy','01075474498',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b97bfc09','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (499,'i9@wefit.com','i 9','$2a$10$oxewtu20e3fUeo67uLzoJOJzoy.MRcAVBHfHfFafZvKZa7qTycyx2','01070432047',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','3fe08d36','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (500,'leaume@wefit.com','Leaume','$2a$10$FDQix3ozme5OPojAqdX1l.Wht/GylzhYx8wA4LCGBr75/h8NckUzi','01097350728',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','fe10a44b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (501,'gogooma2@wefit.com','고9마9웠어','$2a$10$nchGRZoxgvPAY6o1whXWgu9ooC.5ytEP5b43QMWR5Mg.vx5m28.lu','01092649691',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.478856,126.964843,'Y','77527683','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (502,'dana@wefit.com','kim다나한','$2a$10$TW5JxkpohlXdVycVGLU0Q.VpdIakDK4AwAzLUmihDGMtoygdgVsWG','01067260338',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','90bd60d7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (503,'sunflower@wefit.com','Sunflower You','$2a$10$AknySGly0.mzNDSnhpw5aOo9o1yyThcSpL5c0YWIFVBOomPnwnGf6','01083986853',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','263244ac','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (504,'nagne@wefit.com','나그네','$2a$10$GIHSIDBWzWx4KZeFhkP6neb01mihCWUrG6X50GRORvYYcwMyra4Pi','01035883184',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','067bac8f','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (505,'sook@wefit.com','쑥쑥','$2a$10$7QJr54m6v/ELlHi5B2Of/uID5sZVl6.5KebgOCFoKesOa9cGZIHBC','01018340232',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','75e9c45b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (506,'choco@wefit.com','Choco Lee','$2a$10$GYwKqFVltkz5IdvgzSZcVumsSSm456C2ecm45niHtSvcJv/ygfPta','01011702520',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','33d065bf','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (507,'jjinine@wefit.com','jjinine','$2a$10$8D5J8wEtHHc4qhQD0OwtHu5S.4hN5eFBr62J5lQMV5bFQYpfFByuq','01044034562',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','8db4da27','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (508,'hdmr@wefit.com','HDMR2^3','$2a$10$KcL0rqW/uijta1sef3hDTuN.ZRga3A8RrCrPYkQo.YYCW7VYGf8bS','01074779432',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1b853743','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (509,'bell@wefit.com','방울이','$2a$10$v2V6bfO0JvGFh5y/HZ3EYOGbDZzrpSNUFYXTZLf.616TZALQiGN8K','01023973764',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','90d33371','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (510,'lee_hj8514@naver.com','hihi','$2a$10$1lsW2r5Selo5Fe2vPdElV.yELqFiD13WrnCou5GHKpB3cwfCr..Qy','01012345678',to_date('21/10/02','RR/MM/DD'),to_date('21/10/02','RR/MM/DD'),'N',37.478856,126.964843,'Y','f8c10ce6','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (511,'minho0324@naver.com','마이노','$2a$10$Jhm6m6xgpOeIQbyb.i7kQuEXrmELj.z6dWGH8OkH4Fwg.w8xDE8om','01012345678',to_date('21/10/02','RR/MM/DD'),to_date('21/10/02','RR/MM/DD'),'N',null,null,'Y','29f485a3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (512,'lyj8514@gmail.com','다른아이디1','$2a$10$4JwKX7rzsvEvLD1kkLl1quVoGPkmzuIAqRbb7SLXC6t9fvT9xRJR2','01012345678',to_date('21/10/02','RR/MM/DD'),to_date('21/10/02','RR/MM/DD'),'N',37.5682,126.9977,'Y','04be8263','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (514,'2subtanker@gmail.com','서브탱','$2a$10$kIuKLikRY4PJAPYODAcHseZvCYAu7aVBYbXn.r5jveVf.ioWpTGDS','01095467835',to_date('21/10/05','RR/MM/DD'),to_date('21/10/05','RR/MM/DD'),'N',37.484536,126.641767,'Y','68cd9925','NO',null,'none',to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (432,'eunpark@wefit.com','Eungyeong Park','$2a$10$QEuQlmEkZR.Xgr3Gyh3Gz.vDek0.EZqE/1qjEfhzCNgT0QPE/kc.i','01086319123',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','fbd63b7a','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (433,'poyoyo@wefit.com','poyoyo','$2a$10$s8akLiQy2S5hPI3j0MwBsOa5CTQ4wdDe6R5k6g5YrsosiioODofE.','01002150592',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','8a7ad5a6','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (434,'yulee@wefit.com','율리yulee','$2a$10$R4kCypT0SFGaR.AaggUEqu5aPUr4AR1SFB3V5fMj/rJASgAgHNrNi','01018257246',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','cce53628','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (435,'haribo@wefit.com','하리보젤리','$2a$10$bPwGkz8jbIxcnyzGdNXASefOJYiThI5fvqBrV4.lrO6YiLLqgy/Vm','01000094328',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',37.55576,126.932679,'Y','a4779a40','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (436,'wchoi@wefit.com','W CHOI','$2a$10$qzS9qwVZylJ5Vq7ldErblu3pkoQBJDkA8n80jpNV/yUrN/ipY6nla','01003600832',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','6fcc26e7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (437,'twitterienne@wefit.com','twitterienne','$2a$10$El0haxE75F6qtZXouzK9BeUiSpJMQAJ4DNx47Zr0Coj1Rnk/cB9Ye','01026827138',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e80bed34','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (438,'yuyoung@wefit.com','김유영','$2a$10$ZnDnO.sKYoXZelMONTq8Mu.9BIWCr5WiBlUrwLBI5lx.vws0LeGZS','01087800452',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','8dc7f558','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (439,'nyom@wefit.com','옴뇸뇸','$2a$10$1ji3JXw6GGdxK3BNoDvDleFPtx9rYVr93JAUDF6vqgB0EnpdCdmRW','01054922883',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5bd8ebd7','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (440,'smithers03@wefit.com','Smithers03','$2a$10$GXUqa9Gh061diLmn5ew8KOTRuT2hK.d6705BN1y7eR7OrNc/1ytqu','01074016778',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','b32208d0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (441,'kimkyle@wefit.com','Kim Kyle','$2a$10$UK4HC4YmnuDpAsK3lmZZRe.ZtqTd.qcmoX5ZNRhMA2.0rBMpzp6Y2','01070290512',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9b1255c0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (442,'springday@wefit.com','Springday_mj','$2a$10$RbfUZOi.Xyzos9l9BcIDMu6odH2ul0YKGe15fkkw5hPO4FIfeMeFG','01029131602',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','16c4e47a','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (443,'zzing@wefit.com','찡이','$2a$10$gItvWvx0NVVjyci6kY1Y5.YHzXzV3u/0FvblBgHK4dClTdWNN2Jom','01022505317',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','fb370a86','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (444,'soomin@wefit.com','강수민','$2a$10$gwf9e8o0kg37PAqQrgGpaOvHAO1tuexSFHKeJMNF2nXkAv5FRHimy','01094400412',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2bd84fe1','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (445,'dooboo@wefit.com','두부','$2a$10$TH42TQitTpaANUBKu47I.OqjVViA5Q1Kw.k8RQJil67XTRz/t7.m2','01038561272',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e816e3ad','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (446,'hjee@wefit.com','HJ ee','$2a$10$wwPknIyLd21/RYlAJLLUnuHi4xCG.vM5ehG2DV1EHzq2MyrgQeJQu','01084219119',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','d9858e5b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (447,'ddangkong@wefit.com','땅콩','$2a$10$.5g5hNOV5ANE42rBniQ8ke5nkJoL6QzW8o7IVHdt7tRs1z8lNh/GG','01004208563',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','4b18f50d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (448,'yeonie@wefit.com','Yeonie','$2a$10$ojPri0Ype2nzkty4pzFd8eRDs9hsQevPeylEKl1Bnh5HAYfb1Gf3G','01054468301',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','aa554052','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (449,'cho@wefit.com','*’ 0’*조니','$2a$10$HHl1PPVUbnuVa5gk.RPCPebtGkj94BTOt3RBsxVXYevlQP.PmKnV2','01093571755',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','64480cce','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (450,'eunsoo@wefit.com','은수','$2a$10$bpE22sR81pbt1i4jbnMguuvhqhNhexjuL/yU/snugR.zwz6MUP6.K','01089402961',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e7865a81','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (451,'ashlee@wefit.com','Ashlee LEE','$2a$10$Wjq7r/Khe/IvuDFE5/eLXOqfAXiFTsoidkEFC5bvskZ0lFeqrT3aS','01027614063',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','95e98074','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (452,'amoogae@wefit.com','아무개','$2a$10$kq49vY7wwfOARJazPdxSB.e1bgwNpfMBcLO8JT6BTVrQhtCP3fMbq','01014803392',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','c1f73aa9','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (453,'kitty99@wefit.com','키티99','$2a$10$.Tb.uJkSWNb.go9qlmOOd.AfQKv.MgRcVv1OjAk8glHmZ9ZVpmQzC','01048714706',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','319d822d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (454,'ym02@wefit.com','YM','$2a$10$bgFNpd2Pvmv4Tt.xAOOhzO5gY9S/ujsZEzhdMqRkZEwiK2sGli6EK','01075482257',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','10f2e7f1','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (455,'mungnyang@wefit.com','멍냥','$2a$10$rUnI4YASoRVzZU6cjiBEuuZpkF2K6N9mMnn0Rgv6Jz0ehWpt2iF.2','01095702318',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','0a80f141','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (456,'hhh@wefit.com','ㅎ ㅡㅎ','$2a$10$P46rfxZ3pVBgX/..UhKi2.sChYfgAYbjM/tKs3MPPZbCBpmZ.jWze','01005503441',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','f9fe7358','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (457,'lse@wefit.com','이승은','$2a$10$v48ZV5wuzGBo25/hCwVsouFY7Cw8cJm.jBEvkhJhflrYB18XUS4US','01030374599',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a01de431','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (458,'gogooma@wefit.com','고구마','$2a$10$yBHYC.40qo8Onib4Qy8JVOUqUyx2MglziSUmYiPeKNnGpPcaglUAS','01003542447',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','63643a64','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (459,'nina@wefit.com','Nina J','$2a$10$mlkkI9cttdPPmxQI.pwUXehkAKgbhynOg6mUOXWgLHyHkvNwezwJm','01093869719',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','e9181144','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (460,'yeong@wefit.com','Yeong .Y','$2a$10$XGqqwXQWzNObrweFrwD7KOSMOIVMZE7EL6YYhkSy5JOfLNhRTqAx2','01088067249',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1452f813','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (461,'je@wefit.com','재은','$2a$10$OtDFpGr0kUYTQP6MaiWvGOMZaHUUaIzad.wAh4wKUHJXepYdOXcfe','01044406212',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','357b31c0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (462,'vitamin@wefit.com','비타민','$2a$10$T3/duijb2WQpH.ZbhMgEn.jjk3IHvieZi4DNvVwpeYnq4UEeWzJXS','01019834035',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5265e35d','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (463,'ar@wefit.com','김아름','$2a$10$Hmk/AaCE6Yog5yjvxcwuF.1sOY6luh3txRu.KZ1q3Gqf2hGbI7TES','01076789785',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','79919aa0','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (464,'bodybank@wefit.com','바디뱅크-bodybank','$2a$10$N6pMdluf01KdIwsjowzLBuoADzA4Fx98eV3ur87cqSuCcev/uS5BW','01066204114',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','2f424b74','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (465,'secret@wefit.com','비밀의숲','$2a$10$4qe2ew4TJ7EfqjPaUFOuUe0SRU9mDw6cpGlBK2.PhiPx1DeTDweba','01007338320',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','532906bb','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (466,'seraph1982@wefit.com','123Seraph1982','$2a$10$EZ.5YhR2MP9CB/RBMkOLJOxJePTxTN1rPBYqxMIXF3domcctCcjK.','01011934269',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9c4726e8','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (467,'creamsoda@wefit.com','크림소다','$2a$10$eTaX3SW6FdFF0j5JIT0JSu6sAVpRAZLiooCglRrvWmdVS.pFnQZl2','01047500854',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'N','5f330eca','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (468,'silverstar@wefit.com','silver star','$2a$10$hjTNzTSoGY.T8M20LvDMH.1V0clab/F.NxFvyAzuNEEuwOiMqMG72','01053973572',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','3ebcdb17','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (469,'eunchae@wefit.com','고은채','$2a$10$Fx2EHGAgmTXUjZuofUNyU.jW872lHXIGtslIJahsia.S51m7PcGbG','01070074188',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','57b4f5e3','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (470,'ppeumi@wefit.com','ppeumi','$2a$10$GhR4jbhQ44KKiIdcmYZ2MuBwPE7QoxrOf701Z0Y/KqCgWAP0q94na','01029257314',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','7596e169','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (471,'oo1n@wefit.com','oo1n','$2a$10$tIij7pkklMV9j2Zoez0kk.yPSVMD66DPO.R1LNKQLGUcjW8gRG11W','01034905767',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','09a3db30','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (472,'simplist@wefit.com','Simplist','$2a$10$/GXFa32j0YVUWF6SifXNQ.fBxtdS1IWLzL26fmzEXB8/urlSNbV0C','01060220729',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','a213cab2','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (473,'ten@wefit.com','Ten','$2a$10$o4oTuOUgvpWT3L8jyFg.I.stbWXJlNWkpkOAot75ET96kBEr9srf.','01079600408',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','79800937','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (474,'suna@wefit.com','최선아','$2a$10$JEnUgAQfKHRkvA5bbBYZ5uFCcvmYUpTB5tc4Qse9NuzihSWm6YQCS','01019925212',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','1ddf916b','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (475,'sohee@wefit.com','유소희','$2a$10$QuIXEsmcu.FomLAP2Y/RpekQwHq9IObUhZk7ShQdSjGL4A9rA04tK','01072747690',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','56718f7f','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (476,'shine@wefit.com','Shine Hong 샤인','$2a$10$nfpSRo7vgjmoGPixgpAAb.1nhJqMjbt4deykpSjpENCi3ap8h.7gu','01051525264',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','971daf85','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (477,'outdoor@wefit.com','야외운동~?신~ 나게','$2a$10$RS9sxp7Zm1r58TOvMJN35eKRlT8Xxvq2sG3xI.zQYRWRQx1OcpI4W','01013756664',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','9eb27bf5','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (478,'lucy@wefit.com','Lucy Yoo','$2a$10$QZQGFLrW8UpVkfI4ge.19uBkEDTeAZTlnciUl648O3QbHQ1m3nrLO','01050227724',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','6fe5152a','NO',null,'none',null);
Insert into SPRINGWEFIT.MEMBER (MEMBERNUM,MEMBEREMAIL,MEMBERNICK,MEMBERPASSWD,MEMBERPHONE,MEMBERREGISTDATE,MEMBERCONNDATE,MEMBERHUMANYN,MEMBERLATITUDE,MEMBERLONGITUDE,MEMBEREMAILYN,MEMBERCODE,MEMBERMANAGERYN,MEMBERDELDATE,SESSIONID,AUTOLOGINLIMIT) values (479,'grace@wefit.com','그레이스티나','$2a$10$P6BL1rNJRI5DpvzjCXObsuQqV8QCGcgOtP.MW7.ZjJFHKuoejguDW','01067725735',to_date('21/09/30','RR/MM/DD'),to_date('21/09/30','RR/MM/DD'),'N',null,null,'Y','5de3ba4b','NO',null,'none',null);
REM INSERTING into SPRINGWEFIT.NOTICEBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (226,407,'개천절 대체공휴일 배송 일정 안내','
개천절 대체공휴일로 인한 배송일정 안내드려요.
상품, 배송 유형에 따라 배송 일정이 다를 수 있으니
상품 페이지에서 자세한 배송일정을 참고해 주세요.

 

새벽배송:
 ▶ 정상 운영 (정기 휴일 토요일 제외)

 

택배배송: 
▶ 10월 1일 출고 마감
▶ 10월 4일 출고 재개
     10월 1일 (금) 17시 이후 ~ 10월 4일 (월) 17시
     결제건까지 10/4(월) 배송

 

 

 


개별배송
- 업체에서 직접 생산 또는 출고하는 상품
    10/5(화) 부터 순차 출고


※유의사항※

1. 원활한 배송 및 상품 제작을 위해 연휴 기간에도
    배송 준비 & 상품 제작 준비가 될 수 있어요. 
    [배송준비중] 단계에는 주문 취소가 불가한 점 안내드려요.
    
2. 제주도 지역의 경우 하루 일찍
   배송 마감될 수 있는 점 안내드려요. 
   주말 수령 가능 여부에 따라 배송일정이 달라 질 수 있어요. 
   결제 전 장바구니에서 상품별 배송일정을 꼭! 확인해주세요, 

 

최상의 품질의 상품을 전달드리기 위한 
위핏의 노력은 연중무휴 ?',null,null,7,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (227,407,'[이벤트안내] 차이페이 9월 (9.1~9.30) 혜택 안내','안녕하세요, 위핏 입니다.
간편 결제 시스템 ''차이페이'' 9월 혜택을 안내드려요 :)

9월 한 달간 진행되니 꼭 놓치지 마세요!

 

[이벤트 기간]
2021. 9. 1(일) 00시 ~ 2021. 8. 30(목) 자정까지

 

[할인 대상]
''차이페이 간편결제''를 이용하는 모든 고객 대상

 

(1) 혜택 1:  생애 첫 결제 고객
- 차이페이 생애 첫 결제 시 3,000원 즉시 할인
▶ 20,000원 이상 결제 시 적용

 

(2) 혜택 2:  재결제 고객  
a) 50,000원 이상 결제 시 2,000원 즉시 할인
b) 70,000원 이상 결제 시 3,000원 즉시 할인

▶ 기간 내 1회 / 중복 적용 불가 
▶ 기간 내 a번, b번 중 하나만 적용 가능 

 

 

[유의사항]
- 생애 첫 결제 할인 대상은 ''차이 전체 가맹점''에서
  결제 이력이 없는 고객에 한하며, ID당 1회 제공 됩니다.
  (다른 가맹점에서 한 번이라도 차이페이를 이용해봤다면 적용 대상 제외)
- 생애 첫 결제 할인 조건은 상시 변경될 수 있습니다.
- 할인은 차이페이 결제 단계에서 적용됩니다.
- 부분 취소 시 할인 조건에 맞지 않으면 적용된 할인 금액은 환불 금액에서 차감됩니다.',null,null,2,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (228,407,'[중요공지] WeFit 이용약관 개정 되었습니다.','제1조(목적)
이 약관은 (주)위핏(전자상거래 사업자)가 운영하는 위핏샵 (이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로 합니다.

※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」

제2조(정의)
① “몰”이란 (주)위핏가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ ‘회원’이라 함은 “몰”에 (삭제) 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.

④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관 등의 명시와 설명 및 개정)
① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호?모사전송번호?전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.


',null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (229,407,'WeFit 개인정보처리방침 개정 안내 (2021/2/10 이후~)','
안녕하세요, 위핏입니다.

 

2021년 2월 10일부터 위핏는

고객님께 보다 원활한 서비스 제공을 위해

아래와 같이 당사의 개인정보처리방침을 개정할 예정입니다.

 

 

<개정 사유>

- 고객 개인정보 보안 강화 및 서비스 이용 정보 수집

 

<개정 내용>

- 수집한 개인정보의 위탁

- 온라인 맞춤형 광고 서비스 제공

1) 행태정보를 수집 및 처리하는 광고 사업자
페이스북, 구글, Amplitude, 크리테오, 네이버, 카카오, 모비온, 스마트솔루션, 애피어

2) 행태정보 수집 방법
이용자가 회사의 웹사이트를 방문하거나 앱을 실행할 때 자동 수집

 

*본 개정에 동의하지 않으시는 경우
거부의사 표시(회원탈퇴)를 하실 수 있으며,
거부의사를 표시하지 않으신 경우 개정에 동의하신 것으로 간주됩니다.

 

위핏은 ‘고객 개인정보’가 무엇보다 안전하게 지켜져야 할
소중한 가치임에 깊이 공감합니다.

저희를 믿고 이용해주시는 고객분들께,
신뢰할 수 있는 모습으로 보답하겠습니다.

 

고맙습니다!

 ',null,null,4,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (230,407,'WeFit 장터 BEST 후기 선정 기준 안내',' 안녕하세요, 위핏입니다.
위핏에 소중한 후기를 남겨주시는
여러분들께 진심으로 감사드려요!

 

21년 4월부터 매월 최대 10개의 BEST 후기를 선정하여
포인트 1,000점을 지급해드려요.

 

이에 BEST 후기 선정 기준에 대해
아래와 같이 안내드려요.

 

[BEST 후기 선정 기준]
- 제품을 활용한 레시피가 소개 된 경우
- 사진 첨부 1장 이상 / 글자수 200자 이상
- 자신만의 맛있는! 꿀조합이 녹아있을 경우
- 매월 1일부터 말일까지 등록된 후기 중 선정
- 제품의 맛/식감/향 등을 생생하게 표현하신 경우
- 재치 있는 문장들로 톡톡! 튀는 후기를 작성해주신 경우

 

* 위 조건에 해당 될 경우 BEST 후기에 선정 될 확률 UP!
* 후기 내용/사진에 따라 운영자의 판단 하에 선정됩니다.

 

시간내어 정성 가득한 후기를 올려주시는
모든 분들께 다시 한 번 감사드리며,
BEST 후기 선정은 앞으로도 계속 됩니다!',null,null,5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (219,408,'2021년 10월 2일 업데이트 공지','안녕하세요! 위핏 매니저 입니다.

아래 개선 사항이 반영된 신규 버전의 페이지를 다시 열게 되었습니다.
아마 빠르면 내일 중으로 아래 사항이 개선된 버전을 사용하실 수 있어요!

-운동 기록 저장/삭제/수정 기능 추가
-탈퇴 기능 추가
-운동 등록 오류 사항 수정
-프로필 변경 오류 수정

이번 업데이트는 홈페이지 개편 후 수정 우선순위가 가장 높은 오류 및 사용자 불편사항을 일부 수정 개선한 것 입니다.

앞으로도 지속적으로 개선 일정을 진행하여 부족한 부분들은 지속적으로 업데이트 진행하고 공유 드릴게요.

감사합니다!',null,null,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (220,408,'[공동구매] 앵콜 공구! ''더 착한 저탄수 쭈꾸미 볶음'' No설탕! No첨가물! (~ 10/11)','공구제품

저탄수 쭈꾸미 볶음(300g)

공구기간 : 9/27(월) ~ 10/11(월) 2주간

?

공구가격

더 착한 쭈꾸미 

1팩 7,500원 

3팩 이상 구매시 팩 당 7,000원 (판매가 9,900원)



더 착한 쭈꾸미 공구 바로가기(클릭)

안녕하세요!

건강해지는 약속을 배송하는 케이에프푸드 인사드립니다 ^^

?

회원님들께 소개드릴 제품은 오직 천연 재료로만 만든 무설탕 무첨가물 쭈꾸미 볶음입니다.

?

3개 이상 복수 구매시 개별 할인금액이 적용되는 복수 구매 할인 이벤트가 있는 상품 입니다.



無설탕 無첨가물

더 착한 쭈꾸미

별미로 남녀 노소가 즐기는 쭈꾸미 볶음은 매콤하며 너무 맛있지만 재료로 들어간 엄청난 설탕과 화학첨가물 때문에 다이어트와 건강에는 치명적이라 피하시고 계신분들이 많으셨죠?

저희 케이에프푸드에서 연구 개발한 더 착한 쭈꾸미 볶음은 그런 걱정은 멀리 던져 버리시고 맛있게 즐기 실 수 있게 모든 가공 과정에서 설탕과 조미료 화학첨가물을 배재 하였습니다.


한입 사이즈에 쫄깃함을 느낄 수 있는 쭈꾸미를 느껴 보세요~


순탄수 100g당 0.86g


공구제품

저탄수 쭈꾸미 볶음(300g)

공구기간 : 9/27(월) ~ 10/11(월) 2주간

?

공구가격

더 착한 쭈꾸미 

1팩 7,500원 

3팩 이상 구매시 팩 당 7,000원 (판매가 9,900원)


-업체정보-

주식회사 케이에프

507-86-02181

제 2020-인천서구-2242호

070-4150-0084

본 공동구매의 교환 환불 등의 책임은 위 업체에 있습니다
','쭈꾸미확대샷.png','972e71a5.png',8,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (221,408,'[방송예고] MBC 스페셜 - 2019 지방의 누명, 2부 예고편','2019 지방의 누명 1부, 재밌게 보셨나요?

2부에서는 위핏 회원분들이 직접 실제 대사질환과 비만을 겪고있는 분들을 대상으로, 10주간 저탄고지 식단 멘토링을 진행합니다! 다음 주 목요일 밤, <MBC 스페셜 - 2019 지방의 누명 2부>에서 확인하세요! 


2부 방송시간 : 2019. 11.7  목요일 밤 10시 5분',null,null,12,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (222,408,'인스타 유저들을 위한 인스타그램 계정 및 해시태그 안내','식단을 다른 사람들과 공유하고 싶으신 분들은 키토 음식 사진을 올리실 때
#WeFit 을 해시태그하시고, 카페 계정을 함께 태그해서 사진을 올려주시기 바랍니다.

공식 인스타그램 계정은 @wefit.com 입니다.
여러분들이 해시태그에 올려주시는 사진과 자료를 리포스트해 드리고 있습니다.

사진 올리실 때 사용권장 해시태그 리스트
#다이어트 #유지어터 #식단 #운동 #피트니스 #식단일기 #저탄고지 #건강
#위핏 #피티 #WEFIT #wefit #FITI #FITUS

',null,null,7,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (223,408,'[이벤트] 다이어트 수기 공모전 개최 (~11.30)','분량 : A4 기준 2장 이상

형식 : 제한없음

기간 : 11월 1일 ~ 11월 30일 

심사 : 12월 7일 까지의 총 좋아요 수 합산 (일찍 올릴 수록 유리합니다.)

여러개의 수기를 올리신 경우 좋아요 수가 더 높은 게시물 하나로 심사합니다.



참여방법 : 수기공모전 게시판에 수기를 올려주세요. 

게시판은 11월 1일에 열릴 예정이니, 미리 글을 준비하셔도 좋습니다!

기존 글 게시글 이동은 반칙이며, 11월 1일 이후 새로올라오는 글만 참여 가능합니다. 





상품



1등 (10만원 이마트/신세계 상품권)

2등 (5만원 이마트/신세계 상품권)

3등 (3만원 이마트/신세계 상품권)

우수상 (위핏 기념품 세트, 좋아요 순위 10등까지)



기념품 세트 구성품

 : 방탄커피용 디자인 머그컵 + 미니 덤벨 세트 + 위핏 로고 물병



기념품 세트는 운영진이 직접 디자인해 제작 될 예정입니다. (세상에 단 10개뿐인 디자인!) 1등에서 3등까지 드리는 이마트/신세계 상품권은 공급 사정에 따라 다른 마트 상품권으로 교체될 수 있습니다. ',null,null,13,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (224,408,'아이허브 및 쿠팡 추천인코드가 금지됩니다.',' 최근 적립금을 노린 무분별한 제품 홍보 및 추천으로 인해, 회원들이 위핏의 취지에 맞지 않는 상품을 추천받아 구매하는 일이 있었습니다. 또, 추천인코드를 정보공유의 목적이 아닌, 본격적인 상업활동에 이용한 사례도 발각이 되었습니다. (조직적으로 아이디를 여러개 만들어 공통된 하나의 코드를 홍보) 이런 부득이한 이유로 인해, 오늘자로 모든 추천인 링크게시글은 삭제가 될 예정입니다. 다만, 오래 전부터 올라와있던, 회원들의 제품 추천 게시판의 글들은 그대로 유지가 될 예정입니다. 소수로 인해 다수가 피해받는 상황을 방지하기 위한 조치이니, 양해 바랍니다. 감사합니다. ',null,null,6,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (225,408,'[해외직구] 슬림패스트 신상 입고 기념 최대 20% 할인? (~10/3)',' 슬림패스트 인기 신상 입고 기념! 

 슬림패스트 팻밤, 키토바 할인전

?

대기업이 갖춘 R&D 능력으로 가성비 좋은 상품을 제공하고있는 슬림패스트! 슬림패스트 키토라인의 야심작이 드디어 키토몰에 입고되었습니다. 

?

시나몬 번 위에 달콤한 프로스팅이 떠오르는 시나몬 번 키토바 부터 스트로베리 치즈케이크 팻밤, 부드럽고 상큼한 아이스 레몬 팻밤까지! 

?

상상만했던 간식을 이제 부담없이 즐기세요.  

?

지금 위핏 장터에서는 슬림패스트 신상 입고 기념 슬림패스트 팻밤, 키토바 전품목을 최대 20% 할인된 가격으로 만날 수 있습니다. 

?

?

정상가 14,900

할인가 11,920~13,410


?','instagram.jpg','505754b1.jpg',12,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (231,407,'[배송안내] 택배 노조 파업으로 인한 배송 불가 안내','안녕하세요, 위핏입니다.

현재 택배 노조 파업이 확산되면서,
전국적으로 배송 불가한 지역들이 계속해서 늘어나고 있습니다.

이로 인해 불가피하게 주문이 불가하신 고객분들께,
사과와 양해의 말씀을 전합니다.

이번 프로모션은
위핏에서도 심혈을 기울여 준비한 프로모션인데,
예상치 못한 불편을 드리게 되어
저희 또한 난처하고 죄송한 마음입니다.

기다려주신만큼
얼마나 답답하고 속상하실지 진심으로 공감이 됩니다.

현재 물류센터에서는 배송불가지역 뿐 만 아니라
일반 배송이 가능한 지역마저도
[반송/지연/분실]등의 문제가 반복되고 있습니다.

미리 주문하고 나중에 받아보실 수 있는 방법도 고심하였으나
혼란이 큰 상황에서 기약없이 상품을 기다리시게 하거나,
혹여나 발송이 되더라도
배송 문제로 또 다른 불편을 겪으실까 염려되었습니다.

무엇보다도 ''좋은 식품을 안전하게 배송''
해드리는 것이 가장 중요하다고 판단,
배송 불가 지역의 경우
부득이하게 [주문 불가] 조치를 시행하게 되었습니다.

현 상황이 원만히 해결되는대로, 
불편을 겪으신 고객 모두 [위핏절] 프로모션과 
동일한 혜택을 누리실 수 있는 방법도 준비 중에 있으니
너른 양해 부탁드립니다. 


감사합니다.


 주문 불가 안내 
■ 배송 불가 지역에 해당 할 경우
[주문서 > 결제하기] 클릭 시 [주문 불가] 메시지가 등장해요.

■ 상품 별로 배송 불가 지역이 다를 수 있어요.',null,null,5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (232,407,'[공지] 로그인/회원가입 불가 오류 해결 안내','
안녕하세요, 위핏입니다.


2021.07.22 오후 4:25분경부터 4:58분경까지
로그인 및 회원가입이 불가한 현상이 있었어요.


위핏에서 사용하는 외부 네트워크의 일시적인
오류로 확인했으며 현재는 모두 정상화되었어요.


아울러 불편을 겪으셨던 고객님들께 사과의 말씀드리며
동일한 문제가 발생하지 않도록 최선을 다하겠습니다.


감사합니다.',null,null,3,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (233,407,'WeFit 회원가입 혜택 안내 (210405 ver)','안녕하세요,
위핏에 오신 걸 환영해요.


신규 가입 시, [위핏 10% 할인 쿠폰] 을 드려요.
가입 다음 날 자정에 사라지니 꼭! 놓치지 마세요.

 

위핏과 함께 건강하고
지속 가능한 습관을 만들어 가시길 응원해요!


이용하시면서 궁금하거나 불편한 점이 있으시다면,
언제든지 고객센터로 문의 남겨주세요!


감사합니다.


 

[쿠폰 사용 안내]

● 가입 다음 날 자정까지 사용 가능합니다.
● 위핏 상품 구매 시 즉시 사용 가능합니다.
● 포인트와 중복 사용이 불가합니다.
● 배송비를 제외한 결제 금액의 10% 할인이 적용됩니다.
   (최대 1만원까지 할인 가능)
● 지급된 쿠폰은 [마이페이지 >쿠폰]에서 확인 가능합니다.
 

 

[유의사항]

● 신규 회원 전용 혜택입니다.
● 가입 시 이메일, SMS 모두 수신 동의 시 쿠폰이 지급됩니다.
   (가입 이후 회원 정보 변경 시 포인트 지급이 불가합니다.)
● 탈퇴 후 재가입 시에는 쿠폰지급이 불가합니다.
',null,null,6,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (234,407,'[공동구매] 곡물을 뺀 그래놀라! 7가지 씨앗과 견과류로 만든 엉파 ''순수 넛츠 그래놀라'' (~ 10/12)','공구제품

순수 넛츠 그래놀라 300g

?

공구기간

09월 29일 (수) ~ 10월 12일 (화) 2주간

?

공구가격

8,900원 (판매가 11,900원) 

<대량구매 추가할인>

3개 이상 구매 시 7,900원

?

?

유통기한 2022-05-23 까지

?

?

?

-업체정보-

주식회사 테드스토리

113-86-72731

제 2019-서울구로-0916호

02-2615-2320

본 공동구매의 교환 환불 등의 책임은 위 업체에 있습니다','그래놀라.png','8fe81861.png',5,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (235,407,'[체험단이벤트] 올바른 방탄커피의 기준! 곰팡이독소 없는 건강한 원두, ''더클린커피'' 체험단 모집 (~ 10/11)','[체험단 모집 안내]

1. 모집 인원 : 20명 (세트 구성 중 택 1)

- SET 1 : 콜롬비아 수프레모 나리뇨 200g + 에티오피아 예가체프 아리차 200g 

- SET 2 : 콜롬비아 수프레모 나리뇨 200g + 과테말라 안티구아 디카페인 200g 

2. 모집 기간 : 10/1(금)~10/11(월)

3. 체험단 발표: 10/12(화)

4. 제품 발송일 : 10/13(수)

?

[참여 방법]

1. 하단의 체험단 신청서 작성

2. 댓글로 기대평 작성과 함께 신청 완료

?

?

[체험단 선정 후 후기 작성 미션]

1. (필수) 카페 이벤트 후기 1건

2. (필수) 개인 SNS 후기 1건 : 블로그 or 인스타그램 중 택1

- 제품 수령 후 1주일 내 작성

- 필수 해시태그(키워드) : #더클린커피 #곰팡이독소없는원두 #키토제닉식단 #방탄커피원두 #저탄고지다이어트



?

더클린커피 구매하기



최근 더클린커피는 맛과 품질을 인정받아 

국내 유명 호텔 ‘워커힐 호텔앤리조트’에

원두 공급을 시작하였습니다.

더클린커피를 사랑해주시는 많은 분들께 보답하고자,

키토카페에서도 회원님들께 특별 이벤트를 진행합니다!

?

<더클린커피 체험단 우수후기 이벤트>

체험단 발표 후 후기를 작성해주신 분들 중

우수후기를 선별하여 3분께

자연유래 건조효모 사용, 첨가물 부형제 무첨가

키토인을 위한 종합 멀티미네랄

“바이오 밸런스” 를 제공합니다!


- 개별 안내 문자를 통해 발표, 체험단 신청 시 입력한 연락처 및 주소로 발송 예정 ','커피.png','3c1ac677.png',12,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (236,410,'[필독] ‘위핏보고 연락드렸습니다.’ 바이럴 업체 주의보!','

안녕하세요, 최근 카카오톡을 통해 <안*훈>이라는 사람으로부터 ‘위핏보고 연락드렸습니다’ 라는 메세지를 받으신 회원님들이 여럿 있는 것으로 확인됩니다. 해당 업체는 인터넷에 가짜후기를 전문으로 남기는 ‘바이럴 업체’로 위핏과는 관련이 없습니다. 그러므로 절대 아이디를 빌려주거나, 게시글을 대신 올려달라는 요청에 응하지 마시기 바랍니다. 앞으로도 그런 제안을 받으시는 경우 꼭 신고해주세요. (신고하기 전 제안에 동의하는 척 어떤 상품/브랜드의 게시글을 올려달라는 것인지 파악해주시면 이런 악질 업체들의 활동을 방지하는데에 도움이 됩니다.) 







어떻게 이런일이 일어난걸까요?



이런 바이럴 업체들은 프로그램을 통해 홍보하길 원하는 아이디들을 수집하고, 그 수집한 아이디들의 중고나라 거래글, 구글링 검색결과등을 매칭하여 통해 연락처를 수집합니다. 카페의 보안취약 등의 문제로 연락처가 노출된 것이 아니니 안심하시기 바랍니다.









어떻게 방지할 수 있을까요?



이런 개인정보 유출을 방지하기 위해서는, 거래가 완료된 중고나라 거래글 등에 연락처가 남지 않도록 게시글을 삭제하고, 개인적인 연락처, 카카오톡 등을 게시글에 언급하지 않기를 권장합니다.





세줄요약

‘위핏보고 연락드렸습니다.’ 는 바이럴 광고업체의 수작입니다.

게시글 대리 업로드 혹은 아이디 공유시 강퇴의 위험이 있으니 절대 현혹되지 마세요.

동의하는 척 어떤 업체를 홍보하고 싶어하는 것인지 확인해주실 수 있다면 사이트운영에 더욱 도움이 됩니다.',null,null,11,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (237,410,'[공동구매] 단 일주일간! 제로베이커리의 최초공개 신제품과 인기제품을 모두 맛볼 수 있는 기획전! (~ 10/6)','안녕하세요

제로베이커리 기획전 공구를 시작합니다!

위핏에 최초로 공개되는 크럼블 스콘!

그리고 다양한 인기제품들까지 총망라했어요~

?

이전 공구에서 회원님들의 피드백을 받아

회원님들이 다양한 제품들을 더 맛보실 수 있도록

제품 당 5개 묶음 세트로 구성해 주셨답니다 ^^

?

여러 제품을 한번에 드시고 싶을 때는 올인원세트!

내가 좋아하는 제품만 드시고 싶을 때는 5개 세트!

선물용으로 딱인 홀 타르트까지!

위핏 회원님들을 위해 제로베이커리에서

아주 특별한 기획전을 열어주셨어요~

?

총 15종의 제품들로 구성된 위핏 단독 공구!!

댓글 이벤트도 진행하고 있으니

회원님들의 많은 성원 부탁드립니다 :)

?','03_제로베이커리.png','5c1cea1f.png',10,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (238,410,'[공동구매] 헬스 스트랩외 2종 출시기념 할인이벤트 10월 13일까지 연장 진행합니다.','헬스 패드리프팅 스트랩/헤비 리프팅 스트랩/손목보호 리스트랩 출시



2차 수입물량 방출



스트랩,손목보호대라고 다 같은 제품이 아닙니다.

뛰어난 가성비와 품질을 경험해 보세요.



많은 분들이 언제 출시되냐고 문의를 주셨는데 보다 완변한 제품 출시를 위해

여러번의 샘플테스트와 보완을 통해 드디어 출시되었습니다.



저렴한 중국산 제품이 아닌 유명 해외 브랜드를 생산하는 파키스탄 현지에서 생산

수입되었습니다.제품의 소재 및 스펙을 꼭 확인하세요.



(알고 계신가요?유럽에 많은 유명 스포츠 브랜드는 파키스탄에서 생산됩니다.) 



품질과 가성비 모두 현존하는 제품과 비교해도 후회하지 않는 선택이실꺼아 봅니다.

앞으로도 가성비 뛰어난 다양한 헬스용품을 추가할 예정입니다.



많이 이용해 주시기 바랍니다. 



① 헬스 패드 리프팅 스트랩

2개한세트 소비자가격 17,000원 ==>출시기념 할인가격 11,800원

두세트이상 구매시 추가 할인 됩니다.

','straps_360x360.jpg','8fde3ebc.jpg',10,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (239,410,'WeFit 프로틴 출시되었습니다. 가성비 최고의 단백질보충제','
드디어 출시가 되었습니다.약 한달넘게 시간이 걸린듯 한대 아직 보완할게 많습니다.

많은 분들이 출시를 기다리는 만큼 우선 첫 물량 생산되었습니다.



부족한 부분은 좀더 개선하여 나은제품이 될수 있도록 개선및 보완하여 회원여러분의

만족도를 높이는 제품으로 거듭날수 있도록 노력하겠습니다.



구매는 장터를 이용하시면 됩니다.

많은 관심과 이용 부탁 드립니다.','헬스매니아.jpg','6065a2eb.jpg',27,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (240,410,'10월 장터후기 이벤트 당첨자 발표','
아직 많은 분들이 이벤트를 실시하는지 모르시는듯 합니다.

10월 이벤트는 2분말고는 이벤트 조건에 충족하신분이 없네요.

11월에는 더 많은 분들이 이벤트에 참여하셔서 사은품 받아 가세요.^^



자세한 사항은 꼭 카페이벤트 당첨방법을 숙지하시고 참여해 주시기 바랍니다.

카페에 등록후 꼭 블로그나 sns에 공유해 주셔야 합니다.



혹시라도 제가 확인하지 못한분을 덧글 남겨 주시면 확인후 처리해 드리겠습니다.

11월에는 더 많은 참가자가 생겼으면 하는 바램입니다.



발표후 2주동안 회신이 없는 경우 당첨자에서 제외됩니다.개별적으로 일단

쪽지 안내 드립니다.^^



*사은품은 착불로 발송됩니다.



당첨자는 아래 내용을 작성하셔서 댓글 주세요.

성함-

주소-

우편번호-

전화번호-

전달사항-
',null,null,76,1,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEBOARD (NBNUM,MEMBERNUM,NBTITLE,NBCONTENT,NBIMAGE1,NBREALIMAGE1,NBLOOKCOUNT,NBIMAGECOUNT,NBREGDATE) values (247,410,'test 수정수정','test','1633437049809.jpg','18415d19.jpg',48,1,to_date('21/10/05','RR/MM/DD'));
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
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (72,219,'식단 사진 없어진 거 맞아요? 3일까지만 저장되고 이전 내용들이 하나도 안보여요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (73,219,'항상 사용자 의견 잘 반영해주셔서 감사드립니당 ㅎㅎ',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (74,225,'ㅋㅋㅋㅋ 이름 잘 지었네요',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (75,225,'팻밤 8가지 파워구매!!!!',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (76,225,'다이어트 성공하고 인증샷 올릴게요 ㅋㅋㅋ',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (77,224,'금지 잘 하신 거 같아요. 솔직히 요즘 너무 지나쳤어요;;',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (78,224,'특히 쿠팡 추천인코드 ㅋㅋㅋ 아닌 척 하면서 올린게 진짜 보기 싫더라구요',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (79,223,'사진 필수 인가요?',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (80,223,'1등 내꺼 ㅋㅋㅋ',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (84,221,'아직 저탄고지 모르는 사람 너무 많은 거 같아요. 이거 방송되면 많이들 아시게 되겠죠?ㅎㅎ',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (82,222,'올릴 때 위핏 꼭 태그 할게요~',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (83,221,'저 이거 완전 기대중이에요 ㅋㅋㅋ 이거 많이들 좀 봤으면..',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (85,220,'사진 ㅁㅊㅋㅋㅋㅋㅋ 오늘 저녁은 쭈꾸미',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (86,220,'와 근데 설탕없이 맛이 나려나요? 탄수양 완전 괜찮네요 ㅋㅋㅋ',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (87,219,'여기 일 젤 열심히 하는 듯 ㅋㅋㅋㅋ',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (88,219,'운동 등록시 운동 리스트에서 즐겨찾기 별표 누르면 예전처럼 부위별로 순서대로 뜨게 해주세요',435,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (89,235,'저 참여신청 할게요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (90,235,'후기 작성만 하면 되나요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (91,234,'단맛이 어느 정도 인지 궁금해요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (92,234,'한개당 당질양이 어떻게 돼요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (93,233,'헐 이미 가입했는데ㅜㅜ',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (94,233,'기존 회원도 쿠폰 주세요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (95,232,'빠르게 해결해주셔서 감사합니다',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (96,231,'다음에 프로모션 다시 진행해주세요 아쉬워요ㅜㅜ',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (97,230,'언제까지 하는거예요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (98,229,'저 탈퇴하고 싶은데 계정 어떻게 하는건가요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (99,229,'개인정보 지워주세요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (100,227,'차이페이 완전 꿀인듯 ㅋㅋㅋ',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (101,227,'차이카드 다들 발급받으세요 ㅋㅋㅋㅋ',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (102,228,'약관 전문은 어디있나요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (103,226,'저 5시 직전에 주문했는데 출고 됐을까요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (104,226,'배송 일정 좀 확인해주세요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (105,225,'쿠팡이나 아이허브 직구 보다 저렴하네요~',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (106,225,'직구 이벤트 자주 해주세요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (107,220,'와 오늘 저녁은 쭈꾸미다',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (108,221,'근데 저탄고지에 반대하는 의사들도 많던데 그런 의견들도 다 반영돼서 나오나요?',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (109,223,'자게에 비포애프터 올렸어요ㅋㅋ 좋아요 많이 눌러주세요',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (110,240,'랸랸/서울시마포구/23242/010-2342-3333/감사합니다~',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (111,239,'가성비 보소 ㅋㅋㅋ 지금 주문 하러 갑니다',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (112,238,'이거 진짜 좋아요 ㅋㅋㅋ 무게 막 쳐집니다',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (113,237,'와 이거면 맘놓고 빵 먹어도 되네요 ㅋㅋ',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (114,237,'빵순이한테 최고예요',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (115,236,'헐 ㅋㅋ 저도 이거 받았어요',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (116,236,'다들 조심하세요',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (117,240,'나당첨/서울시서대문구/2432/010-2343-3432/예스',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (121,238,'이거 진짜 최고',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (119,240,'흑흑 다음 기회를 노릴게요ㅜ',428,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (128,247,'쭈꾸미',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (122,234,'이거 JMT.. 또 주문하러 가야겠다',423,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (123,237,'와...진짜맛잇겠다',492,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (126,244,'2) 글 수정',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (127,244,'sfdvdsfv',410,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (129,247,'꾸미',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (130,248,'와 이제 편하겠네',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (131,248,'음 잘되네',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (132,247,'닉변하면 다 바뀌네;',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (133,248,'다 바뀌네',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (134,248,'이 선은 왜 또 짧니',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (135,239,'근데 이거 노맛',410,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (136,247,'음하하하하핳',514,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (70,219,'운동 소모 칼로리는 왜 안뜨는 거예요? 뜨게 해주세요ㅜㅜ',415,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.NOTICEREPLY (NRNUM,NBNUM,NRCONTENT,MEMBERNUM,NRREGDATE) values (71,219,'운동 기록 분석이랑 그래프도 다시 살려주시면 감사합니다~',415,to_date('21/10/02','RR/MM/DD'));
REM INSERTING into SPRINGWEFIT.NOTICEREPORT
SET DEFINE OFF;
Insert into SPRINGWEFIT.NOTICEREPORT (NBNUM,MEMBERNUM) values (241,408);
REM INSERTING into SPRINGWEFIT.PLACEBOARD
SET DEFINE OFF;
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (76,410,'마포구민체육센터','여기 좋아요
근데 코로나 이후로는 이용제한이 많이 돼서 아쉬워요','마포구민체육센터.jfif',null,null,null,null,'f0e343ef.jfif',null,null,null,null,'배드민턴','서울 마포구 월드컵로 29',37.552013,126.912133,9,1,to_date('21/10/02','RR/MM/DD'),'마포구민체육센터');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (72,512,'관악구 수영장','관악구민종합체육센터','다운로드.jpg',null,null,null,null,'e8ff6eff.jpg',null,null,null,null,'수영','서울 관악구 낙성대로3길 37',37.473067,126.960315,6,1,to_date('21/10/02','RR/MM/DD'),'1');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (74,423,'스포애니','지하인게 좀 그래요
등록은 했는데 홀딩만 계속 연장 하는 중','스포애니.jfif',null,null,null,null,'7944c6da.jfif',null,null,null,null,'기타','서울 마포구 대흥로 164',37.553771,126.946269,6,1,to_date('21/10/02','RR/MM/DD'),'스포애니');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (75,423,'마포 아트 센터 수영장','마포 아트 센터 수영장
','수영장.png',null,null,null,null,'cd641d22.png',null,null,null,null,'수영','서울 마포구 대흥동 810',37.555153,126.94272,16,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (77,410,'서대문구 안산','가볍게 오를 만 합니다.
그래도 특정 루트는 등산화 신으시는게 안전할 것 같아요.','서대문구 안산.jfif',null,null,null,null,'5bf9e7af.jfif',null,null,null,null,'등산','서울 서대문구 봉원동 산 2-1',37.573121,126.945976,12,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (78,410,'경의선 숲길','달리기 좋은데
코로나 이후로 사람이 너무 많아졌어요.','경의선 숲길.jpg',null,null,null,null,'98a95439.jpg',null,null,null,null,'달리기','서울 마포구 동교동 190-1',37.559411,126.924879,9,1,to_date('21/10/02','RR/MM/DD'),'경의선숲길');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (79,410,'롯데 아이스 링크','사람이 너무 많아요.','롯데월드_아이스링크_2.png',null,null,null,null,'a4db9a5c.png',null,null,null,null,'스케이트','서울 송파구 올림픽로 240',37.51131,127.098142,6,1,to_date('21/10/02','RR/MM/DD'),'롯데 아이스 링크');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (80,392,'수영 같이해요','수영 ㄱㄱ',null,null,null,null,null,null,null,null,null,null,'수영','대전 동구 판교1길 3',36.318414,127.452549,10,0,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (81,393,'영등포 제2스포츠센터 수영장 엄청 좋네요 ','영등포구에서 공립 수영장 중 젤 괜찮은거같아요 
추천합니다 ','영1.png','영2.jpg',null,null,null,'3befaa87.png','3636e9e8.jpg',null,null,null,'수영','서울 영등포구 국회대로 615',37.526692,126.902731,27,2,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (82,393,'김연아 선수도 이용하던 목동 아이스링크가 최고죠','서울에서 목동 빙상장이 최고 아닌가요 비교불가','목1.jpg',null,null,null,null,'66dbda16.jpg',null,null,null,null,'스케이트','서울 양천구 안양천로 939',37.530728,126.879233,12,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (83,393,'여의도 한강공원에서 같이 러닝하실분','러닝크루 모집합니다

카톡 오픈 채팅방 입장해주세요
http://.kakao.com/3243902df30423/',null,null,null,null,null,null,null,null,null,null,'달리기','서울 영등포구 여의동로 330',37.526348,126.933595,8,0,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (84,415,'자전거는 여의도 한강 공원 이죠','주말 나들이 가세요','여의도 한강.jfif','여의도 한강2.jfif',null,null,null,'4e7a0ece.jfif','8e2abe4f.jfif',null,null,null,'자전거','서울 영등포구 여의도동 83',37.533661,126.925399,10,2,to_date('21/10/02','RR/MM/DD'),'여의도 한강 공원');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (85,438,'당산에서 요가 젤 좋은곳 추천합니다 ㅋㅋㅋ','지인 dc 10% 도 있따고 합니다
댓글 달면 제 이름 알려드려요',null,null,null,null,null,null,null,null,null,null,'기타','서울 영등포구 국회대로53길 24-4',37.527491,126.906666,14,0,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (107,514,'ㄷㄷ','ㄷㄷ','site04.jpg',null,null,null,null,'66118d5d.jpg',null,null,null,null,'등산','서울 강남구 남부순환로 2907',37.491961,127.057095,5,1,to_date('21/10/05','RR/MM/DD'),'사사사');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (87,438,'서울에서 최고 가까운 컨츄리클럽','비싸서 그렇지 한양만한데가 없죠 ㅋㅋ',null,null,null,null,null,null,null,null,null,null,'골프','경기 고양시 덕양구 고양대로1643번길 164',37.657494,126.863513,127,1,to_date('21/10/02','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (102,1,'북악산 1시간 코스로 딱 좋네요','1시간에 하산까지 딱 좋네요 ~~',null,null,null,null,null,null,null,null,null,null,'등산','서울 종로구 북악산로 48',37.59517,126.970171,25,1,to_date('21/10/05','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (105,514,'test','ette','site01.jpg','site02.jpg',null,null,null,'a920a542.jpg','f49e8fcd.jpg',null,null,null,'배드민턴','서울 강남구 강남대로 708',37.52444,127.015933,11,3,to_date('21/10/05','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (110,509,'^^','^^','main (1).png',null,null,null,null,'8dab0748.png',null,null,null,null,'배드민턴','서울 강남구 가로수길 5',37.518211,127.02315,4,1,to_date('21/10/05','RR/MM/DD'),'111');
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (109,1,'당산 애플짐 ','애플짐 오픈 할인도 하더라구요~
','gym2.jpg',null,null,null,null,'6a3e7291.jpg',null,null,null,null,'홈트짐트','서울 영등포구 국회대로 595',37.527024,126.900516,5,1,to_date('21/10/05','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (111,392,'테스트','테스트',null,null,null,null,null,null,null,null,null,null,'등산','서울 서대문구 거북골로 3',37.581144,126.926638,3,0,to_date('21/10/06','RR/MM/DD'),null);
Insert into SPRINGWEFIT.PLACEBOARD (PBNUM,MEMBERNUM,PBTITLE,PBCONTENT,PBIMAGE1,PBIMAGE2,PBIMAGE3,PBIMAGE4,PBIMAGE5,PBREALIMAGE1,PBREALIMAGE2,PBREALIMAGE3,PBREALIMAGE4,PBREALIMAGE5,PBCATEGORY,PBADDRBASIC,PBLATITUDE,PBLONGITUDE,PBLOOKCOUNT,PBIMAGECOUNT,PBREGDATE,PBADDRDETAIL) values (112,392,'ㅎㅎ','ㅎㅎ',null,null,null,null,null,null,null,null,null,null,'달리기','서울 서대문구 모래내로 430',37.583617,126.942253,7,0,to_date('21/10/06','RR/MM/DD'),null);
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
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (60,78,'여기 산책로 너무 좋죠 ㅋㅋㅋㅋ 강아지랑 자주갑니다',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (61,75,'마포구에도 공립 수영장이 있었네요 ',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (62,77,'안산 너무 좋죠 ㅋㅋㅋㅋㅋ 봄에 벚꽃길도 쩔..',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (63,84,'주말 오전에 같이 타실래요? ',438,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (64,82,'서울에서 최고죠 ㅋㅋㅋㅋ 말해뭣해..',438,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (65,83,'고등학생도 가능한가요? 여의도여고 육상부학생입니다',438,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (66,82,'어렸을때 많이 갔었는데.. 또가고싶네요',509,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (67,87,'라운딩 같이 가실분 안계십니꽈...',428,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (68,85,'어머 같이 할인받아요 저도 요가원 결제해야하는데',428,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (69,84,'오 저 내일 오전에 타기로 했는데 합류하실래요?',423,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (70,81,'엇 저 여기 660버스 타고 지나가다가 봤는데.. 가보고싶네요',411,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (71,85,'저두 알려주세요ㅋㅋ',423,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (89,87,'저용',398,0,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (73,75,'그럼 학원이랑도 가깝겟다..',418,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (74,81,'건물이 좋아보이네여',492,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (75,78,'가고싶다..',492,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (87,95,'ㅇㄹㄴㅇㄹㄴㅇ',435,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (77,92,'안녕하세요',385,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (88,95,'ㄴㄹㅇㄴㄹㅇㄴㄹㅇㅈㄹㄴ',435,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (86,81,'^^',406,0,to_date('21/10/03','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (107,110,'^^',392,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (108,110,'^^^',392,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (106,102,'인왕산 같이 가도 좋죠~',1,0,to_date('21/10/05','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (109,105,'$#',392,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (110,87,'dd',385,0,to_date('21/10/06','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (58,80,'수영장 이름이 뭔가요? 가고싶네요~',393,0,to_date('21/10/02','RR/MM/DD'));
Insert into SPRINGWEFIT.PLACEREPLY (PRNUM,PBNUM,PRCONTENT,MEMBERNUM,STARSCORE,PRREGDATE) values (59,79,'우와우와',393,0,to_date('21/10/02','RR/MM/DD'));
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
