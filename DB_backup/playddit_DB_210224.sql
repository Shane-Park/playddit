--------------------------------------------------------
--  파일이 생성됨 - 수요일-2월-24-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALARM
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."ALARM" 
   (	"ALARM_NO" NUMBER, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"ALARM_CONT" VARCHAR2(200 BYTE), 
	"ALARM_TYPE" NUMBER, 
	"ALARM_DATE" DATE, 
	"ALARM_CHK" NUMBER, 
	"ALARM_CHK_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."ALARM"."ALARM_NO" IS '알림번호';
   COMMENT ON COLUMN "TEAM3_202011M"."ALARM"."USER_ID" IS '이메일아이디';
   COMMENT ON COLUMN "TEAM3_202011M"."ALARM"."ALARM_CONT" IS '알림내용';
   COMMENT ON COLUMN "TEAM3_202011M"."ALARM"."ALARM_TYPE" IS '알림유형';
   COMMENT ON COLUMN "TEAM3_202011M"."ALARM"."ALARM_DATE" IS '알림시간';
   COMMENT ON COLUMN "TEAM3_202011M"."ALARM"."ALARM_CHK" IS '알림확인여부';
   COMMENT ON COLUMN "TEAM3_202011M"."ALARM"."ALARM_CHK_DATE" IS '알림확인시간';
   COMMENT ON TABLE "TEAM3_202011M"."ALARM"  IS '알림';
--------------------------------------------------------
--  DDL for Table BLAME
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."BLAME" 
   (	"BLAME_NO" NUMBER, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"TARGET_ID" VARCHAR2(200 BYTE), 
	"FEED_NO" NUMBER, 
	"TARGET_TYPE" NUMBER, 
	"BLAME_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."BLAME"."BLAME_NO" IS '신고번호';
   COMMENT ON COLUMN "TEAM3_202011M"."BLAME"."USER_ID" IS '신고한 회원';
   COMMENT ON COLUMN "TEAM3_202011M"."BLAME"."TARGET_ID" IS '신고당한회원';
   COMMENT ON COLUMN "TEAM3_202011M"."BLAME"."FEED_NO" IS '피드번호';
   COMMENT ON COLUMN "TEAM3_202011M"."BLAME"."TARGET_TYPE" IS '신고종류';
   COMMENT ON COLUMN "TEAM3_202011M"."BLAME"."BLAME_DATE" IS '신고일시';
   COMMENT ON TABLE "TEAM3_202011M"."BLAME"  IS '신고피드';
--------------------------------------------------------
--  DDL for Table CLASS
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."CLASS" 
   (	"CLASS_ID" VARCHAR2(200 BYTE), 
	"CLASS_START" DATE, 
	"CLASS_END" DATE, 
	"CLASS_TITLE" VARCHAR2(200 BYTE), 
	"CLASS_NUM" VARCHAR2(100 BYTE), 
	"CLASS_ROOM" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."CLASS"."CLASS_ID" IS '학급번호';
   COMMENT ON COLUMN "TEAM3_202011M"."CLASS"."CLASS_START" IS '학급시작일';
   COMMENT ON COLUMN "TEAM3_202011M"."CLASS"."CLASS_END" IS '학급종료일';
   COMMENT ON COLUMN "TEAM3_202011M"."CLASS"."CLASS_TITLE" IS '학급강좌명';
   COMMENT ON COLUMN "TEAM3_202011M"."CLASS"."CLASS_NUM" IS '학급기수';
   COMMENT ON COLUMN "TEAM3_202011M"."CLASS"."CLASS_ROOM" IS '학급강의실';
   COMMENT ON TABLE "TEAM3_202011M"."CLASS"  IS '학급';
--------------------------------------------------------
--  DDL for Table EMAIL_CHECK
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."EMAIL_CHECK" 
   (	"EMAIL_CHK_NO" NUMBER, 
	"EMAIL_CHK_DATE" DATE, 
	"EMAIL_CHK_CONT" VARCHAR2(200 BYTE), 
	"EMAIL_CHK_ADDR" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."EMAIL_CHECK"."EMAIL_CHK_NO" IS '이메일인증번호';
   COMMENT ON COLUMN "TEAM3_202011M"."EMAIL_CHECK"."EMAIL_CHK_DATE" IS '인증번호발송시간';
   COMMENT ON COLUMN "TEAM3_202011M"."EMAIL_CHECK"."EMAIL_CHK_CONT" IS '인증번호내용';
   COMMENT ON COLUMN "TEAM3_202011M"."EMAIL_CHECK"."EMAIL_CHK_ADDR" IS '이메일주소';
   COMMENT ON TABLE "TEAM3_202011M"."EMAIL_CHECK"  IS '이메일인증';
--------------------------------------------------------
--  DDL for Table FEED
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."FEED" 
   (	"FEED_NO" NUMBER, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"FEED_CONT" VARCHAR2(2000 BYTE), 
	"FEED_PIC" BLOB, 
	"FEED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" 
 LOB ("FEED_PIC") STORE AS BASICFILE (
  TABLESPACE "TS_202011M" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "TEAM3_202011M"."FEED"."FEED_NO" IS '피드번호';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED"."USER_ID" IS '이메일아이디';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED"."FEED_CONT" IS '피드내용';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED"."FEED_PIC" IS '피드사진';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED"."FEED_DATE" IS '피드작성일';
   COMMENT ON TABLE "TEAM3_202011M"."FEED"  IS '피드';
--------------------------------------------------------
--  DDL for Table FEED_COMMENT
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."FEED_COMMENT" 
   (	"FEED_COM_NO" NUMBER, 
	"FEED_NO" NUMBER, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"FEED_COM_CONT" VARCHAR2(1000 BYTE), 
	"FEED_COM_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."FEED_COMMENT"."FEED_COM_NO" IS '피드댓글번호';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED_COMMENT"."FEED_NO" IS '피드번호';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED_COMMENT"."USER_ID" IS '이메일아이디';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED_COMMENT"."FEED_COM_CONT" IS '피드댓글내용';
   COMMENT ON COLUMN "TEAM3_202011M"."FEED_COMMENT"."FEED_COM_DATE" IS '피드댓글시간';
   COMMENT ON TABLE "TEAM3_202011M"."FEED_COMMENT"  IS '피드 댓글';
--------------------------------------------------------
--  DDL for Table FOLLOW
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."FOLLOW" 
   (	"FOLLOW_NO" NUMBER, 
	"FOLLOWER" VARCHAR2(200 BYTE), 
	"FOLLOWEE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."FOLLOW"."FOLLOW_NO" IS '팔로우번호';
   COMMENT ON COLUMN "TEAM3_202011M"."FOLLOW"."FOLLOWER" IS '팔로워';
   COMMENT ON COLUMN "TEAM3_202011M"."FOLLOW"."FOLLOWEE" IS '팔로위';
   COMMENT ON TABLE "TEAM3_202011M"."FOLLOW"  IS '팔로우';
--------------------------------------------------------
--  DDL for Table TERMS
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."TERMS" 
   (	"TERMS_NO" NUMBER, 
	"TERMS_TITLE" VARCHAR2(100 BYTE) DEFAULT 'DEFAULT', 
	"TERMS_CONT" VARCHAR2(2000 BYTE) DEFAULT 'DEFAULT', 
	"TERMS_ESSEN" NUMBER DEFAULT 0, 
	"TERMS_SEQ" NUMBER DEFAULT 0, 
	"TERMS_USE" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."TERMS"."TERMS_NO" IS '약관번호';
   COMMENT ON COLUMN "TEAM3_202011M"."TERMS"."TERMS_TITLE" IS '약관이름';
   COMMENT ON COLUMN "TEAM3_202011M"."TERMS"."TERMS_CONT" IS '약관내용';
   COMMENT ON COLUMN "TEAM3_202011M"."TERMS"."TERMS_ESSEN" IS '필수여부';
   COMMENT ON COLUMN "TEAM3_202011M"."TERMS"."TERMS_SEQ" IS '약관순서';
   COMMENT ON COLUMN "TEAM3_202011M"."TERMS"."TERMS_USE" IS '약관사용여부';
   COMMENT ON TABLE "TEAM3_202011M"."TERMS"  IS '회원약관';
--------------------------------------------------------
--  DDL for Table TERMS_HIS
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."TERMS_HIS" 
   (	"TERMS_NO" NUMBER, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"TERMS_AGREE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;

   COMMENT ON COLUMN "TEAM3_202011M"."TERMS_HIS"."TERMS_NO" IS '약관번호';
   COMMENT ON COLUMN "TEAM3_202011M"."TERMS_HIS"."USER_ID" IS '이메일아이디';
   COMMENT ON COLUMN "TEAM3_202011M"."TERMS_HIS"."TERMS_AGREE" IS '동의여부';
   COMMENT ON TABLE "TEAM3_202011M"."TERMS_HIS"  IS '약관동의이력';
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "TEAM3_202011M"."USERS" 
   (	"USER_ID" VARCHAR2(200 BYTE), 
	"CLASS_ID" VARCHAR2(200 BYTE) DEFAULT 'DEFAULT', 
	"USER_NICKNAME" VARCHAR2(100 BYTE), 
	"USER_PASSWORD" VARCHAR2(100 BYTE), 
	"USER_NAME" VARCHAR2(100 BYTE), 
	"USER_TEL" VARCHAR2(100 BYTE), 
	"USER_BIRTH" DATE, 
	"USER_RATING" NUMBER DEFAULT 0, 
	"USER_THEME" NUMBER DEFAULT 0, 
	"USER_SIGN_DATE" DATE, 
	"USER_PIC" BLOB, 
	"USER_BIO" VARCHAR2(1000 BYTE) DEFAULT 'DEFAULT'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" 
 LOB ("USER_PIC") STORE AS BASICFILE (
  TABLESPACE "TS_202011M" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_ID" IS '이메일아이디';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."CLASS_ID" IS '학급번호';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_NICKNAME" IS '닉네임';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_PASSWORD" IS '비밀번호';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_NAME" IS '이름';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_TEL" IS '전화번호';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_BIRTH" IS '생일';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_RATING" IS '등급';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_THEME" IS '테마';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_SIGN_DATE" IS '가입일자';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_PIC" IS '회원사진';
   COMMENT ON COLUMN "TEAM3_202011M"."USERS"."USER_BIO" IS '회원자기소개';
   COMMENT ON TABLE "TEAM3_202011M"."USERS"  IS '회원';
REM INSERTING into TEAM3_202011M.ALARM
SET DEFINE OFF;
REM INSERTING into TEAM3_202011M.BLAME
SET DEFINE OFF;
Insert into TEAM3_202011M.BLAME (BLAME_NO,USER_ID,TARGET_ID,FEED_NO,TARGET_TYPE,BLAME_DATE) values (1,'a003','a001',4,null,to_date('2021/02/24','RRRR/MM/DD'));
REM INSERTING into TEAM3_202011M.CLASS
SET DEFINE OFF;
Insert into TEAM3_202011M.CLASS (CLASS_ID,CLASS_START,CLASS_END,CLASS_TITLE,CLASS_NUM,CLASS_ROOM) values ('DEFAULT',to_date('2020/11/11','RRRR/MM/DD'),to_date('2021/12/12','RRRR/MM/DD'),'소속학급없음',' ',' ');
Insert into TEAM3_202011M.CLASS (CLASS_ID,CLASS_START,CLASS_END,CLASS_TITLE,CLASS_NUM,CLASS_ROOM) values ('C202011302',to_date('2020/11/16','RRRR/MM/DD'),to_date('2021/06/29','RRRR/MM/DD'),'풀스택 개발자 양성과정','6기','302호');
REM INSERTING into TEAM3_202011M.EMAIL_CHECK
SET DEFINE OFF;
Insert into TEAM3_202011M.EMAIL_CHECK (EMAIL_CHK_NO,EMAIL_CHK_DATE,EMAIL_CHK_CONT,EMAIL_CHK_ADDR) values (1,to_date('2021/02/24','RRRR/MM/DD'),'HCUCVLUIAF','expedition1205@gmail.com');
REM INSERTING into TEAM3_202011M.FEED
SET DEFINE OFF;
Insert into TEAM3_202011M.FEED (FEED_NO,USER_ID,FEED_CONT,FEED_DATE) values (1,'psh40963@naver.com','즐거운 수업시간',to_date('2021/02/24','RRRR/MM/DD'));
Insert into TEAM3_202011M.FEED (FEED_NO,USER_ID,FEED_CONT,FEED_DATE) values (2,'a002','즐거운 점심 시간',to_date('2021/02/24','RRRR/MM/DD'));
Insert into TEAM3_202011M.FEED (FEED_NO,USER_ID,FEED_CONT,FEED_DATE) values (3,'a003','즐거운 야자 시간',to_date('2021/02/24','RRRR/MM/DD'));
Insert into TEAM3_202011M.FEED (FEED_NO,USER_ID,FEED_CONT,FEED_DATE) values (4,'a001','신고당한피드',to_date('2021/02/24','RRRR/MM/DD'));
REM INSERTING into TEAM3_202011M.FEED_COMMENT
SET DEFINE OFF;
Insert into TEAM3_202011M.FEED_COMMENT (FEED_COM_NO,FEED_NO,USER_ID,FEED_COM_CONT,FEED_COM_DATE) values (1,1,'a002','재미있다',to_date('2021/02/24','RRRR/MM/DD'));
Insert into TEAM3_202011M.FEED_COMMENT (FEED_COM_NO,FEED_NO,USER_ID,FEED_COM_CONT,FEED_COM_DATE) values (3,2,'a003','피드댓글입니다.',to_date('2021/02/24','RRRR/MM/DD'));
Insert into TEAM3_202011M.FEED_COMMENT (FEED_COM_NO,FEED_NO,USER_ID,FEED_COM_CONT,FEED_COM_DATE) values (2,3,'a001','재미있어요',to_date('2021/02/24','RRRR/MM/DD'));
REM INSERTING into TEAM3_202011M.FOLLOW
SET DEFINE OFF;
Insert into TEAM3_202011M.FOLLOW (FOLLOW_NO,FOLLOWER,FOLLOWEE) values (4,'expedition1205@gmail.com','psh40963@naver.com');
Insert into TEAM3_202011M.FOLLOW (FOLLOW_NO,FOLLOWER,FOLLOWEE) values (5,'psh40963@naver.com','expedition1205@gmail.com');
Insert into TEAM3_202011M.FOLLOW (FOLLOW_NO,FOLLOWER,FOLLOWEE) values (1,'chdnjs7610@gmail.com','psh40963@naver.com');
Insert into TEAM3_202011M.FOLLOW (FOLLOW_NO,FOLLOWER,FOLLOWEE) values (2,'psh40963@naver.com','chdnjs7610@gmail.com');
Insert into TEAM3_202011M.FOLLOW (FOLLOW_NO,FOLLOWER,FOLLOWEE) values (3,'psh40963@naver.com','expedition1205@gmail.com');
REM INSERTING into TEAM3_202011M.TERMS
SET DEFINE OFF;
REM INSERTING into TEAM3_202011M.TERMS_HIS
SET DEFINE OFF;
REM INSERTING into TEAM3_202011M.USERS
SET DEFINE OFF;
Insert into TEAM3_202011M.USERS (USER_ID,CLASS_ID,USER_NICKNAME,USER_PASSWORD,USER_NAME,USER_TEL,USER_BIRTH,USER_RATING,USER_THEME,USER_SIGN_DATE,USER_BIO) values ('ggg@naver.com','DEFAULT','thelove','accC!345',null,null,to_date('2021/02/10','RRRR/MM/DD'),0,0,to_date('2021/02/24','RRRR/MM/DD'),'DEFAULT');
Insert into TEAM3_202011M.USERS (USER_ID,CLASS_ID,USER_NICKNAME,USER_PASSWORD,USER_NAME,USER_TEL,USER_BIRTH,USER_RATING,USER_THEME,USER_SIGN_DATE,USER_BIO) values ('psh40963@naver.com','C202011302','테스터쉐인','7mofKfVgkpHr4bWRXQs8IA==','박세현','1234',to_date('2005/01/01','RRRR/MM/DD'),0,0,to_date('2021/02/16','RRRR/MM/DD'),'자기 소개 입니다 !! 세줄 까지 됩니다 !!! ㅎㅎ');
Insert into TEAM3_202011M.USERS (USER_ID,CLASS_ID,USER_NICKNAME,USER_PASSWORD,USER_NAME,USER_TEL,USER_BIRTH,USER_RATING,USER_THEME,USER_SIGN_DATE,USER_BIO) values ('chdnjs7610@gmail.com','DEFAULT','테스터스칼릿','D63dx0pwD8m458qy5Bx0lg==','박초원','1234',to_date('2005/01/01','RRRR/MM/DD'),0,0,to_date('2021/02/16','RRRR/MM/DD'),null);
Insert into TEAM3_202011M.USERS (USER_ID,CLASS_ID,USER_NICKNAME,USER_PASSWORD,USER_NAME,USER_TEL,USER_BIRTH,USER_RATING,USER_THEME,USER_SIGN_DATE,USER_BIO) values ('a001','DEFAULT','지존쉐인','sa/6l8wdhncpYzkFD168Yw==','shane','010-1234-1234',to_date('2001/01/01','RRRR/MM/DD'),0,0,to_date('2021/02/16','RRRR/MM/DD'),null);
Insert into TEAM3_202011M.USERS (USER_ID,CLASS_ID,USER_NICKNAME,USER_PASSWORD,USER_NAME,USER_TEL,USER_BIRTH,USER_RATING,USER_THEME,USER_SIGN_DATE,USER_BIO) values ('a002','DEFAULT','나는써머','1234','summer','010-1111-1111',to_date('2002/02/02','RRRR/MM/DD'),0,0,to_date('2021/02/16','RRRR/MM/DD'),null);
Insert into TEAM3_202011M.USERS (USER_ID,CLASS_ID,USER_NICKNAME,USER_PASSWORD,USER_NAME,USER_TEL,USER_BIRTH,USER_RATING,USER_THEME,USER_SIGN_DATE,USER_BIO) values ('a003','DEFAULT','최강스칼릿','1234','scarlett','010-2222-2222',to_date('2003/03/03','RRRR/MM/DD'),0,0,to_date('2021/02/16','RRRR/MM/DD'),null);
Insert into TEAM3_202011M.USERS (USER_ID,CLASS_ID,USER_NICKNAME,USER_PASSWORD,USER_NAME,USER_TEL,USER_BIRTH,USER_RATING,USER_THEME,USER_SIGN_DATE,USER_BIO) values ('expedition1205@gmail.com','DEFAULT','조씨','nzB+fToUb4enHnJ0c+9hFA==','원정훈','1234',to_date('2005/01/01','RRRR/MM/DD'),0,0,to_date('2021/02/16','RRRR/MM/DD'),'뭐라도 써야되는데[ 3줄 써야되니까 길게 씁니다 아아아하하하하ㅏ가가가가가');
--------------------------------------------------------
--  DDL for Index PK_FOLLOW
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_FOLLOW" ON "TEAM3_202011M"."FOLLOW" ("FOLLOW_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_ALARM
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_ALARM" ON "TEAM3_202011M"."ALARM" ("ALARM_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_USERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_USERS" ON "TEAM3_202011M"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_EMAIL_CHECK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_EMAIL_CHECK" ON "TEAM3_202011M"."EMAIL_CHECK" ("EMAIL_CHK_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_CLASS
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_CLASS" ON "TEAM3_202011M"."CLASS" ("CLASS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_FEED
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_FEED" ON "TEAM3_202011M"."FEED" ("FEED_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_TERMS_HIS
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_TERMS_HIS" ON "TEAM3_202011M"."TERMS_HIS" ("TERMS_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_FEED_COMMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_FEED_COMMENT" ON "TEAM3_202011M"."FEED_COMMENT" ("FEED_COM_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  DDL for Index PK_BLAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM3_202011M"."PK_BLAME" ON "TEAM3_202011M"."BLAME" ("BLAME_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M" ;
--------------------------------------------------------
--  Constraints for Table EMAIL_CHECK
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."EMAIL_CHECK" ADD CONSTRAINT "PK_EMAIL_CHECK" PRIMARY KEY ("EMAIL_CHK_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."EMAIL_CHECK" MODIFY ("EMAIL_CHK_ADDR" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."EMAIL_CHECK" MODIFY ("EMAIL_CHK_CONT" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."EMAIL_CHECK" MODIFY ("EMAIL_CHK_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."EMAIL_CHECK" MODIFY ("EMAIL_CHK_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."USERS" ADD CONSTRAINT "PK_USERS" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."USERS" MODIFY ("USER_SIGN_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."USERS" MODIFY ("USER_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."USERS" MODIFY ("USER_NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."USERS" MODIFY ("CLASS_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TERMS_HIS
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."TERMS_HIS" ADD CONSTRAINT "PK_TERMS_HIS" PRIMARY KEY ("TERMS_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."TERMS_HIS" MODIFY ("TERMS_AGREE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."TERMS_HIS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."TERMS_HIS" MODIFY ("TERMS_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEED
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."FEED" ADD CONSTRAINT "PK_FEED" PRIMARY KEY ("FEED_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."FEED" MODIFY ("FEED_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FEED" MODIFY ("FEED_CONT" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FEED" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FEED" MODIFY ("FEED_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TERMS
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."TERMS" MODIFY ("TERMS_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLASS
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."CLASS" ADD CONSTRAINT "PK_CLASS" PRIMARY KEY ("CLASS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."CLASS" MODIFY ("CLASS_ROOM" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."CLASS" MODIFY ("CLASS_NUM" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."CLASS" MODIFY ("CLASS_TITLE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."CLASS" MODIFY ("CLASS_END" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."CLASS" MODIFY ("CLASS_START" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."CLASS" MODIFY ("CLASS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOLLOW
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."FOLLOW" ADD CONSTRAINT "PK_FOLLOW" PRIMARY KEY ("FOLLOW_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."FOLLOW" MODIFY ("FOLLOWEE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FOLLOW" MODIFY ("FOLLOWER" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FOLLOW" MODIFY ("FOLLOW_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BLAME
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."BLAME" ADD CONSTRAINT "PK_BLAME" PRIMARY KEY ("BLAME_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."BLAME" MODIFY ("BLAME_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."BLAME" MODIFY ("FEED_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."BLAME" MODIFY ("TARGET_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."BLAME" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."BLAME" MODIFY ("BLAME_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEED_COMMENT
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" ADD CONSTRAINT "PK_FEED_COMMENT" PRIMARY KEY ("FEED_COM_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" MODIFY ("FEED_COM_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" MODIFY ("FEED_COM_CONT" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" MODIFY ("FEED_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" MODIFY ("FEED_COM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALARM
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."ALARM" ADD CONSTRAINT "PK_ALARM" PRIMARY KEY ("ALARM_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011M"  ENABLE;
  ALTER TABLE "TEAM3_202011M"."ALARM" MODIFY ("ALARM_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."ALARM" MODIFY ("ALARM_TYPE" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."ALARM" MODIFY ("ALARM_CONT" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."ALARM" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM3_202011M"."ALARM" MODIFY ("ALARM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ALARM
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."ALARM" ADD CONSTRAINT "FK_USERS_TO_ALARM" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BLAME
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."BLAME" ADD CONSTRAINT "FK_FEED_TO_BLAME" FOREIGN KEY ("FEED_NO")
	  REFERENCES "TEAM3_202011M"."FEED" ("FEED_NO") ENABLE;
  ALTER TABLE "TEAM3_202011M"."BLAME" ADD CONSTRAINT "FK_USERS_TO_BLAME" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "TEAM3_202011M"."BLAME" ADD CONSTRAINT "FK_USERS_TO_BLAME2" FOREIGN KEY ("TARGET_ID")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FEED
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."FEED" ADD CONSTRAINT "FK_USERS_TO_FEED" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FEED_COMMENT
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" ADD CONSTRAINT "FK_FEED_TO_FEED_COMMENT" FOREIGN KEY ("FEED_NO")
	  REFERENCES "TEAM3_202011M"."FEED" ("FEED_NO") ENABLE;
  ALTER TABLE "TEAM3_202011M"."FEED_COMMENT" ADD CONSTRAINT "FK_USERS_TO_FEED_COMMENT" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FOLLOW
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."FOLLOW" ADD CONSTRAINT "FK_USERS_TO_FOLLOW" FOREIGN KEY ("FOLLOWER")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "TEAM3_202011M"."FOLLOW" ADD CONSTRAINT "FK_USERS_TO_FOLLOW2" FOREIGN KEY ("FOLLOWEE")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TERMS
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."TERMS" ADD CONSTRAINT "FK_TERMS_HIS_TO_TERMS" FOREIGN KEY ("TERMS_NO")
	  REFERENCES "TEAM3_202011M"."TERMS_HIS" ("TERMS_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TERMS_HIS
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."TERMS_HIS" ADD CONSTRAINT "FK_USERS_TO_TERMS_HIS" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEAM3_202011M"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "TEAM3_202011M"."USERS" ADD CONSTRAINT "FK_CLASS_TO_USERS" FOREIGN KEY ("CLASS_ID")
	  REFERENCES "TEAM3_202011M"."CLASS" ("CLASS_ID") ENABLE;
