--------------------------------------------------------
--  ������ ������ - �����-2��-22-2018   
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
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (1,'�ϼ�!','1519279430714c124a9b6-b0bb-4444-b927-3c723fd58f66.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (2,'�ٵ� ����','15191021600191b3f1f94-026f-4b24-aa0d-438b51998fab.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (3,'��α�Ÿ��Ʋ ���','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (4,'��α�Ÿ��Ʋ ���','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (8,'�ٲ� Ȯ!','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (9,' ','spring-logo.jpg');
Insert into BLOG (USER_NO,BLOG_TITLE,LOGO_FILE) values (15,' ','spring-logo.jpg');
REM INSERTING into CATEGORY
SET DEFINE OFF;
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (41,1,'������ ���','�ű� ��ǰ',to_date('18/02/22','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (12,9,'�̺з�','�⺻���� ��������� ī�װ� �Դϴ�.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (45,15,'�̺з�','�⺻���� ��������� ī�װ� �Դϴ�.',to_date('18/02/22','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (4,1,'����','����� ����',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (7,1,'����','��������',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (8,2,'�̺з�','�⺻���� ��������� ī�װ� �Դϴ�.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (9,3,'�̺з�','�⺻���� ��������� ī�װ� �Դϴ�.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (10,4,'�̺з�','�⺻���� ��������� ī�װ� �Դϴ�.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (11,8,'�̺з�','�⺻���� ��������� ī�װ� �Դϴ�.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (13,1,'���� ����','���� �����Դϴ�.',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (14,1,'Home','���',to_date('18/02/20','RR/MM/DD'));
Insert into CATEGORY (CATE_NO,USER_NO,CATE_NAME,DESCRIPTION,REG_DATE) values (24,1,'�⵿���','�̰�����',to_date('18/02/21','RR/MM/DD'));
REM INSERTING into COMMENTS
SET DEFINE OFF;
REM INSERTING into POST
SET DEFINE OFF;
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (1,4,'�׷���ü�̽� �����','�ɽ��� �� �ϸ� ��մ�?',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (2,7,'�Ź�-����','����� ���� �������� �ʾ�
��� �ִ��� ����
����Ÿ��� ã�ƴٴϴ�
������ �� ���� ��ҳ� ��

�׶� �״� �ڸ� ���Ƽ�
���� ���� ������ �� ���� �� 

�ٶ��� �𳯸��� �״� ��Ⱑ
���� ������� �״� ��Ҹ���
�ܿ�ó�� ������ �� ��
�� �ȿ� ���� ��� ��
����� �������� �Ǿ� ��

�׷� �׷� ������ ��
�� ����� ������ �õ�� ��

�ٶ��� �𳯸��� �״� ��Ⱑ
���� ������� �״� ��Ҹ���
�ܿ�ó�� ������ �� ��
�� �ȿ� ���� ��� ��
������� �Ǿ� ��

�Ϸ� ��Ʋ ���� ����
�� �ð��� �� �� ��ŭ
�״� �ϳ��� �� �ູ ��

�ٶ��� �𳯸��� �״� ��Ⱑ
���� ������� �״� ��Ҹ���
�ܿ�ó�� ������ �� ��
�� �ȿ� ���� ��� ��
����� �������� �Ǿ� ��
�������̾ؿ��ֽ�ȸ�翡�� ��',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (3,7,'��Ŵ-���ݾ�','���ݾ� �� ���� �� �ƴµ�
�ؾ� �ϴ� ���� �� �����
���� �ű� ���ִٸ�
��� �� ��� ����ٷ�?

�ε帮�� ��� �ε�ȴ�
�ʸ� �� ��������
���� �� ���� �տ� �ɾ�
�� ��ٸ� �͵� ����

���� �� �ϳ��� �������� �ʾ�
���� �� �̴�� �׳� �Ҿ�������
�� ���� �� ���� 
�� ���ø��� ���� �ִ� �� �Լ���
����̴���

���ݾ� ���⿣ �� ���
���� �ϸ� ��Ⱑ �ٸ� ��
�ܿ� �� ���� �˾Ұ�
���� ���� ���� ����

�ٵ� ���� ���� �ϰ� �;�
�ʶ� �� ���ֶ� ��
��� �� ��û �Ű� ����
�ʿ� ���� ��� �� ��

���� �� �ϳ��� �������� �ʾ�
���� �� �̴�� �׳� �Ҿ�������
�� ���� �� ���� 
�� ���ø��� ���� �ִ� �� �Լ���
����̴���
�� ������ �� �� �ž�
�� �������� ���� �����Ұ�
�� �򰥸��� ����� 
�� ������ �� �� �� ����

�ñ��� �� � � ����غ�
��� ������ ���� ����ϴ� �ž�
�� ����Ѵٰ� 
���� ������ ����ϰ� �ִٰ�
��, ���� �� ���� �������� �ʾ�

���� �� �̴�� �׳� �Ҿ�������
�� ���� �� ���� 
�� ���ø��� ���� �ִ� �� �Լ��� 
����̴���
�������̾ؿ��ֽ�ȸ�翡�� ����������, ��',to_date('18/02/20','RR/MM/DD'));
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
���� ��� : lisa**** �� / ���� ���� : mi',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (5,8,'ù ��α� �Դϴ�.','�ߺ�Ź�����',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (6,13,'�ϱ���~','���õ� ���� ^��^',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (7,14,'����','�� ����~',to_date('18/02/20','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (21,24,'��������������','��������������',to_date('18/02/21','RR/MM/DD'));
Insert into POST (POST_NO,CATE_NO,POST_TITLE,POST_CONTENT,REG_DATE) values (41,41,'Bootstrap �Թ�','��ġ�� �ʰ�~',to_date('18/02/22','RR/MM/DD'));
REM INSERTING into TOTO
SET DEFINE OFF;
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (1,'realso0','������','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (2,'realso1','������','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (3,'sodosk','������','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (4,'rost90','�̶���','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (8,'kem1450','������','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (9,'realso01','������','thgkswns01!',to_date('18/02/20','RR/MM/DD'));
Insert into USERS (USER_NO,ID,USER_NAME,PASSWORD,JOIN_DATE) values (15,'realso2','������','thgkswns01!',to_date('18/02/22','RR/MM/DD'));
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
