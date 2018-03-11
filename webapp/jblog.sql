--------------------------------------------------------
--  파일이 생성됨 - 목요일-2월-22-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BLOG
--------------------------------------------------------

  CREATE TABLE "BLOG" 
   (	"USER_NO" NUMBER, 
	"BLOG_TITLE" VARCHAR2(200 BYTE), 
	"LOGO_FILE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "CATEGORY" 
   (	"CATE_NO" NUMBER, 
	"USER_NO" NUMBER, 
	"CATE_NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(500 BYTE), 
	"REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "COMMENTS" 
   (	"CMT_NO" NUMBER, 
	"POST_NO" NUMBER, 
	"CMT_CONTENT" VARCHAR2(1000 BYTE), 
	"REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "POST" 
   (	"POST_NO" NUMBER, 
	"CATE_NO" NUMBER, 
	"POST_TITLE" VARCHAR2(300 BYTE), 
	"POST_CONTENT" VARCHAR2(4000 BYTE), 
	"REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TOTO
--------------------------------------------------------

  CREATE TABLE "TOTO" 
   (	"USER_NO" NUMBER, 
	"LEVELUP" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"USER_NO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"USER_NAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"JOIN_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CATEGORY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENTS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_COMMENTS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POST_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_POST_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_USERS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 16 NOCACHE  NOORDER  NOCYCLE ;
REM INSERTING into BLOG
SET DEFINE OFF;
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (1,'완성!','1519279430714c124a9b6-b0bb-4444-b927-3c723fd58f66.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (2,'바둑 모임','15191021600191b3f1f94-026f-4b24-aa0d-438b51998fab.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (3,'블로그타이틀 출력','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (4,'블로그타이틀 출력','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (8,'바꿔 확!','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (9,' ','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (15,' ','spring-logo.jpg');
REM INSERTING into CATEGORY
SET DEFINE OFF;
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (41,1,'리뉴얼 목록','신규 제품',to_date('18/02/22','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (12,9,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (45,15,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/22','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (4,1,'게임','모바일 게임',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (7,1,'음악','가사파일',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (8,2,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (9,3,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (10,4,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (11,8,'미분류','기본으로 만들어지는 카테고리 입니다.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (13,1,'개인 공간','사적 공간입니다.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (14,1,'Home','퇴근',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (24,1,'잡동사니','이것저것',to_date('18/02/21','RR/MM/DD'));
REM INSERTING into COMMENTS
SET DEFINE OFF;
REM INSERTING into POST
SET DEFINE OFF;
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (1,4,'그랜등체이스 모바일','심심할 때 하면 재밌다?',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (2,7,'거미-눈꽃','사랑은 눈에 보이지가 않아
어디에 있는지 몰라
더듬거리다 찾아다니다
이제야 손 끝에 닿았나 봐

그때 그대 뒤를 돌아서
내게 짓는 웃음에 난 눈을 떠 

바람에 흩날리는 그대 향기가
낮게 들려오는 그대 목소리가
겨울처럼 차가운 내 맘
그 안에 스며 들어 와
사랑이 눈꽃으로 피어 나

그렁 그렁 눈물이 고여
이 사랑이 언젠가 시들까 봐

바람에 흩날리는 그대 향기가
낮게 들려오는 그대 목소리가
겨울처럼 차가운 내 맘
그 안에 스며 들어 와
사랑으로 피어 나

하루 이틀 사흘 나흘
내 시간을 다 쓸 만큼
그대 하나로 난 행복 해

바람에 흩날리는 그대 향기가
낮게 들려오는 그대 목소리가
겨울처럼 차가운 내 맘
그 안에 스며 들어 와
사랑이 눈꽃으로 피어 나
씨제이이앤엠주식회사에서 제',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (3,7,'폴킴-있잖아','있잖아 좀 늦은 거 아는데
해야 하는 말이 꼭 생겼어
아직 거기 서있다면
잠깐만 내 얘길 들어줄래?

두드리고 계속 두드렸던
너를 왜 몰랐을까
닫힌 내 마음 앞에 앉아
날 기다린 것도 말야

지금 나 하나도 괜찮지가 않아
지금 널 이대로 그냥 잃어버릴까봐
널 보던 내 눈도 
널 떠올리면 웃고 있던 내 입술도
사랑이더라

알잖아 보기엔 참 쉬운데
내가 하면 얘기가 다른 거
겨우 내 맘을 알았고
내겐 아직 많이 어려운데

근데 말야 나는 하고 싶어
너랑 그 연애란 거
사실 난 엄청 신경 쓰여
너에 대한 모든 게 다

지금 나 하나도 괜찮지가 않아
지금 널 이대로 그냥 잃어버릴까봐
널 보던 내 눈도 
널 떠올리면 웃고 있던 내 입술도
사랑이더라
딴 생각은 안 할 거야
이 감정에만 이젠 솔직할게
날 헷갈리게 만들던 
그 이유를 좀 알 것 같아

궁금해 넌 어때 어서 대답해봐
어떻게 생각해 지금 고백하는 거야
널 사랑한다고 
가슴 벅차게 사랑하고 있다고
나, 요즘에 너 땜에 괜찮지가 않아

지금 널 이대로 그냥 잃어버릴까봐
널 보던 내 눈도 
널 떠올리며 웃고 있던 내 입술도 
사랑이더라
씨제이이앤엠주식회사에서 제공했으며, 엠',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (4,7,'Let it go - Idina Menzel','The snow glows white on the mountain tonight 
Not a footprint to be seen 
A kingdom of isolation and it looks like I''m the queen 
The wind is howling like this swirling storm inside 
Couldn''t keep it in, heaven knows I''ve tried 
Don''t let them in, don''t let them see 
Be the good girl you always have to be 
Conceal, don''t feel, don''t let them know 
Well, now they know 

Let it go, let it go 
Can''t hold it back anymore 
Let it go, let it go 
Turn away and slam the door 
I don''t care what they''re going to say 
Let the storm rage on 
The cold never bothered me anyway 

It''s funny how some distance 
makes everything seem small 
And the fears that once controlled me 
can''t get to me at all 
It''s time to see what I can do 
To test the limits and break through 
No right, no wrong, no rules for me 
I''m free 

Let it go, let it go 
I am one with the wind and sky 
Let it go, let it go 
You''ll never see me cry 
Here I stand and here I stay 
Let the storm rage on 

My power flurries through the air into the ground 
My soul is spiraling in frozen fractals all around 
And one thought crystalizes like an icy blast 
I''m never going back 
The past is in the past 

Let it go, let it go 
And I''ll rise like the break of dawn 
Let it go, let it go 
That perfect girl is gone 
Here I stand in light of day 
Let the storm rage on 
The cold never bothered me anyway
가사 등록 : lisa**** 님 / 가사 수정 : mi',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (5,8,'첫 블로그 입니다.','잘부탁드려요',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (6,13,'일기장~','오늘도 맑음 ^ㅡ^',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (7,14,'하이','얼른 가요~',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (21,24,'ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄹㄴㅇㄹ',to_date('18/02/21','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (41,41,'Bootstrap 입문','지치지 않게~',to_date('18/02/22','RR/MM/DD'));
REM INSERTING into TOTO
SET DEFINE OFF;
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (1,'realso0','소한준','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (2,'realso1','소한준','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (3,'sodosk','소한준','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (4,'rost90','이랑주','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (8,'kem1450','소한준','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (9,'realso01','소한준','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (15,'realso2','소한준','thgkswns01!',to_date('18/02/22','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD PRIMARY KEY ("CMT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COMMENTS" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "COMMENTS" MODIFY ("CMT_CONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" ADD PRIMARY KEY ("CATE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CATEGORY" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "CATEGORY" MODIFY ("CATE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOTO
--------------------------------------------------------

  ALTER TABLE "TOTO" ADD PRIMARY KEY ("USER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "POST" ADD PRIMARY KEY ("POST_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "POST" MODIFY ("REG_DATE" NOT NULL ENABLE);
  ALTER TABLE "POST" MODIFY ("POST_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" ADD UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "USERS" ADD PRIMARY KEY ("USER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "USERS" MODIFY ("JOIN_DATE" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "BLOG" ADD PRIMARY KEY ("USER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BLOG" MODIFY ("LOGO_FILE" NOT NULL ENABLE);
  ALTER TABLE "BLOG" MODIFY ("BLOG_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "BLOG" ADD CONSTRAINT "C_BLOG_FK" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" ADD CONSTRAINT "C_CATEGORY_FK" FOREIGN KEY ("USER_NO")
	  REFERENCES "BLOG" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "C_COMMENTS_FK" FOREIGN KEY ("POST_NO")
	  REFERENCES "POST" ("POST_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "POST" ADD CONSTRAINT "C_POST_FK" FOREIGN KEY ("CATE_NO")
	  REFERENCES "CATEGORY" ("CATE_NO") ENABLE;
