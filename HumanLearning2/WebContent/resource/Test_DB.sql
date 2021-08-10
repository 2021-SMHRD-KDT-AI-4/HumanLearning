DROP table USER2;
DROP table VIDEO2;
DROP table VIDEO_HISTORY2;
DROP table KEYWORD2;
DROP table BOARD2;
DROP table BOARD_POST2;
DROP table COMMENT2;
DROP table MEMBERSHIP2;
DROP table CALENDAR2;
DROP table NOTE_CLASS;
DROP  SEQUENCE SEQ_VIDEO_ID;



SELECT 
    TO_CHAR(UPLOAD_TIME,'YYYY-MM-DD')  
FROM VIDEO2; 


CREATE TABLE USER2 (
	user_id			varchar2(100)		NOT NULL,
	user_pw			varchar2(20)		NOT NULL,
	membership_name	varchar2(20)		NOT NULL,
	user_name		varchar2(100)		NOT NULL,
	age				number				NOT NULL,
	gender			varchar2(100)		NOT NULL
);

CREATE TABLE VIDEO2 (
	video_id	number				NOT NULL,
	user_id		varchar2(100)		NOT NULL,
	class_id    varchar2(100)       NOT NULL,
	file_name	varchar2(100)		NOT NULL,
	play_time	number				NOT NULL,
	upload_time	date				NOT NULL,
	note		VARCHAR2(255)		NOT NULL
);

CREATE TABLE NOTE_CLASS (
	class_id    number       NOT NULL,
	user_id		varchar2(100)		NOT NULL,
	class_name	varchar2(100)		NOT NULL
);

CREATE TABLE VIDEO_HISTORY2 (
	history_id	number				NOT NULL,
	video_id	number				NOT NULL,
	user_id		varchar2(100)		NOT NULL,
	start_time	number				NOT NULL,
	end_time	number				NOT NULL,
	talk		varchar2(300)		NOT NULL,
	bookmark	char(1)				NOT NULL
);

CREATE TABLE KEYWORD2 (
	keyword_id	number				NOT NULL,
	video_id	number				NOT NULL,
	user_id		varchar2(100)		NOT NULL,
	keword		varchar2(20)		NOT NULL,
	count		number				NOT NULL
);

CREATE TABLE BOARD2 (
	board_id	number				NOT NULL,
	board_name	varchar2(20)		NULL
);

CREATE TABLE BOARD_POST2 (
	post_id			number				NOT NULL,
	user_id			varchar2(100)		NOT NULL,
	board_id		number				NOT NULL,
	post_time		date				NOT NULL,
	post_title		varchar2(50)		NOT NULL,
	post_contents	varchar2(500)		NOT NULL
);

CREATE TABLE COMMENT2 (
	comment_id			number			NOT NULL,
	post_id				number			NOT NULL,
	user_id				varchar2(100)	NOT NULL,
	comment1			varchar2(300)	NOT NULL,
	comment_parent_id	number			NULL
);

CREATE TABLE MEMBERSHIP2 (
	membership_id		number			NOT NULL,
	membership_name		varchar2(20)	NOT NULL
);

CREATE TABLE CALENDAR2 (
	cal_id		number			NOT NULL,
	user_id		varchar(100)	NOT NULL,
	cal_date	date			NOT NULL,
	cal_todo1	varchar(200)	NULL,
	cal_todo2	varchar(200)	NULL,
	cal_todo3	varchar(200)	NULL
);

ALTER TABLE USER2 ADD CONSTRAINT PK_USER PRIMARY KEY (user_id);
ALTER TABLE VIDEO2 ADD CONSTRAINT PK_VIDEO PRIMARY KEY (video_id);
ALTER TABLE VIDEO_HISTORY2 ADD CONSTRAINT PK_VIDEO_HISTORY1 PRIMARY KEY (history_id);
ALTER TABLE KEYWORD2 ADD CONSTRAINT PK_KEYWORD1 PRIMARY KEY (keyword_id);
ALTER TABLE BOARD2 ADD CONSTRAINT PK_BOARD PRIMARY KEY (board_id);
ALTER TABLE BOARD_POST2 ADD CONSTRAINT PK_BOARD_POST1 PRIMARY KEY (post_id);
ALTER TABLE COMMENT2 ADD CONSTRAINT PK_COMMENT PRIMARY KEY (comment_id);
ALTER TABLE MEMBERSHIP2 ADD CONSTRAINT PK_MEMBERSHIP PRIMARY KEY (membership_id);
ALTER TABLE CALENDAR2 ADD CONSTRAINT PK_CALENDAR PRIMARY KEY (cal_id);

	
ALTER TABLE USER2 ADD CONSTRAINT FK_USER_MEMBERSHIP FOREIGN KEY (membership_id) REFERENCES MEMBERSHIP2 (membership_id);

ALTER TABLE VIDEO2 ADD CONSTRAINT FK_USER_TO_VIDEO FOREIGN KEY (user_id) REFERENCES USER2(user_id);

ALTER TABLE VIDEO_HISTORY2 ADD CONSTRAINT FK_VIDEO_TO_VIDEO_HISTORY_1 FOREIGN KEY (video_id) REFERENCES VIDEO2(video_id);

ALTER TABLE VIDEO_HISTORY2 ADD CONSTRAINT FK_VIDEO_TO_VIDEO_HISTORY_2 FOREIGN KEY (user_id) REFERENCES USER2 (user_id);

ALTER TABLE KEYWORD2 ADD CONSTRAINT FK_VIDEO_TO_KEYWORD_1 FOREIGN KEY (video_id) REFERENCES VIDEO2 (video_id);

ALTER TABLE KEYWORD2 ADD CONSTRAINT FK_VIDEO_TO_KEYWORD_2 FOREIGN KEY (user_id) REFERENCES USER2 (user_id);

ALTER TABLE BOARD_POST2 ADD CONSTRAINT FK_USER_TO_BOARD_POST_1 FOREIGN KEY (user_id) REFERENCES USER2 (user_id);

ALTER TABLE BOARD_POST2 ADD CONSTRAINT FK_BOARD_TO_BOARD_POST_1 FOREIGN KEY (board_id) REFERENCES BOARD2 (board_id);

ALTER TABLE COMMENT2 ADD CONSTRAINT FK_BOARD_POST_TO_COMMENT_1 FOREIGN KEY (post_id) REFERENCES BOARD_POST2 (post_id);

ALTER TABLE COMMENT2 ADD CONSTRAINT FK_BOARD_POST_TO_COMMENT_2 FOREIGN KEY (user_id) REFERENCES USER2 (user_id);

ALTER TABLE CALENDAR2 ADD CONSTRAINT FK_USER_TO_CALENDAR FOREIGN KEY (user_id) REFERENCES USER2 (user_id);

ALTER TABLE VIDEO2 ADD CONSTRAINT FK_VIDEO_TO_KEYWORD_1 FOREIGN KEY (note) REFERENCES USER2 (note);

ALTER TABLE VIDEO2 ADD CONSTRAINT FK_VIDEO_TO_KEYWORD_1 FOREIGN KEY (note) REFERENCES USER2 (note);

SELECT upload_time(DATE, 'YYYY/MM/DD') FROM VIDEO2;

SELECT 
    upload_time(REGISTDATE,'YYYY-MM-DD') AS REG_DT 
FROM WRITETABLE 
WHERE TOCHAR(REGISTDATE, 'YYYY/MM/DD') = '2017/12/10';

ALTER TABLE VIDEO2 MODIFY (UPLOAD_TIME DEFAULT SYSDATE );

SELECT * FROM VIDEO2 WHERE USER_ID ='a';



CREATE SEQUENCE SEQ_VIDEO_ID
    START WITH 1
    INCREMENT BY 1;

    
CREATE SEQUENCE SEQ_VIDEO_ID
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;


       
CREATE TABLE VIDEO2 (
	video_id	number				NOT NULL,
	user_id		varchar2(100)		NOT NULL,
	note		VARCHAR2(255)		NOT NULL,
	class_id    varchar2(100)       NOT NULL,
	file_name	varchar2(100)		NOT NULL,
	play_time	number				NOT NULL,
	upload_time	date				NOT NULL
	
);


CREATE TABLE NOTE_CATEGORIES
(
    NOTE_ID      INT              NOT NULL, 
    USER_ID      VARCHAR2(100)    NOT NULL, 
    NOTE_NAME    VARCHAR2(300)    NULL, 
     PRIMARY KEY (NOTE_ID)
)
/

CREATE SEQUENCE NOTE_CATEGORIES_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER NOTE_CATEGORIES_AI_TRG
BEFORE INSERT ON NOTE_CATEGORIES 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT NOTE_CATEGORIES_SEQ.NEXTVAL
    INTO :NEW.NOTE_ID
    FROM DUAL;
END;
/

COMMENT ON TABLE NOTE_CATEGORIES IS '노트분류정보'
/

COMMENT ON COLUMN NOTE_CATEGORIES.NOTE_ID IS '노트아이디'
/

COMMENT ON COLUMN NOTE_CATEGORIES.USER_ID IS '회원아이디'
/

COMMENT ON COLUMN NOTE_CATEGORIES.NOTE_NAME IS '노트명'
/

ALTER TABLE NOTE_CATEGORIES
    ADD CONSTRAINT FK_NOTE_CATEGORIES_USER_ID_USE FOREIGN KEY (USER_ID)
        REFERENCES USERS (USER_ID)
/

CREATE TABLE VIDEOS
(
    VIDEO_ID          INT               NOT NULL, 
    USER_ID           VARCHAR2(100)     NOT NULL, 
    NOTE_ID           INT               NOT NULL, 
    VIDEO_FILENAME    VARCHAR2(300)     NULL, 
    PLAY_TIME         INT               NOT NULL, 
    UPLOAD_TIME       DATE              NOT NULL, 
    VIDEO_MEMO        VARCHAR2(3000)    NULL, 
     PRIMARY KEY (VIDEO_ID)
)
/

CREATE SEQUENCE VIDEOS_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER VIDEOS_AI_TRG
BEFORE INSERT ON VIDEOS 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT VIDEOS_SEQ.NEXTVAL
    INTO :NEW.VIDEO_ID
    FROM DUAL;
END;
/

COMMENT ON TABLE VIDEOS IS '영상분석'
/

COMMENT ON COLUMN VIDEOS.VIDEO_ID IS '영상아이디'
/

COMMENT ON COLUMN VIDEOS.USER_ID IS '회원아이디'
/

COMMENT ON COLUMN VIDEOS.NOTE_ID IS '노트아이디'
/

COMMENT ON COLUMN VIDEOS.VIDEO_FILENAME IS '파일명'
/

COMMENT ON COLUMN VIDEOS.PLAY_TIME IS '재생시간'
/

COMMENT ON COLUMN VIDEOS.UPLOAD_TIME IS '업로드시간'
/

COMMENT ON COLUMN VIDEOS.VIDEO_MEMO IS '영상메모'
/

ALTER TABLE VIDEOS
    ADD CONSTRAINT FK_VIDEOS_USER_ID_USERS_USER_I FOREIGN KEY (USER_ID)
        REFERENCES USERS (USER_ID)
/

ALTER TABLE VIDEOS
    ADD CONSTRAINT FK_VIDEOS_NOTE_ID_NOTE_CATEGOR FOREIGN KEY (NOTE_ID)
        REFERENCES NOTE_CATEGORIES (NOTE_ID)
/

CREATE TABLE BOARDS
(
    ARTICLE_ID         INT               NOT NULL, 
    USER_ID            VARCHAR2(100)     NOT NULL, 
    POST_TIME          DATE              NULL, 
    ARTICLE_TITLE      VARCHAR2(300)     NULL, 
    ARTICLE_CONTENT    VARCHAR2(3000)    NULL, 
    IMG_PATH           VARCHAR2(300)     NULL, 
    LIKE_NUM           INT               NULL, 
     PRIMARY KEY (ARTICLE_ID)
)
/

CREATE SEQUENCE BOARDS_SEQ
START WITH 1
INCREMENT BY 1;
/












select * from video2

insert into VIDEO2 values(SEQ_VIDEO_ID.nextval, 'a', '한국사', 'test1',  270, sysdate, '한국사1');
insert into VIDEO2 values(SEQ_VIDEO_ID.nextval, 'a', '한국사', 'test2',  270, sysdate, '조선시대');
insert into VIDEO2 values(SEQ_VIDEO_ID.nextval, 'a', '국어', 'test3',  260, sysdate, '고전시가');
insert into VIDEO2 values(SEQ_VIDEO_ID.nextval, 'a', '영어', 'test4',  270, sysdate, '고려가요');
insert into VIDEO2 values(SEQ_VIDEO_ID.nextval, 'a', '수학', 'test5',  270, sysdate, '미적분');
insert into VIDEO2 values(SEQ_VIDEO_ID.nextval, 'a', '과학', 'test6',  270, sysdate, '생물');



SELECT * FROM VIDEO2 WHERE USER_ID ='a' order by class_id
delete from video2 where class_id = 'test'


SELECT * FROM VIDEO2;

INSERT INTO VIDEO2 VALUES(1,'a',1,'a',10,sysdate,'11');
INSERT INTO VIDEO2 VALUES(2,'a',2,'b',10,sysdate,'22');
INSERT INTO VIDEO2 VALUES(3,'a',1,'c',10,sysdate,'33');
INSERT INTO VIDEO2 VALUES(4,'a',2,'d',10,sysdate,'44');





CREATE TABLE VIDEOS
(
    VIDEO_ID          INT               NOT NULL, 
    USER_ID           VARCHAR2(100)     NOT NULL, 
    NOTE_ID           INT               NOT NULL, 
    VIDEO_FILENAME    VARCHAR2(300)     NULL, 
    PLAY_TIME         INT               NOT NULL, 
    UPLOAD_TIME       DATE              NOT NULL, 
    VIDEO_MEMO        VARCHAR2(3000)    NULL, 
     PRIMARY KEY (VIDEO_ID)
)
/

CREATE SEQUENCE VIDEOS_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER VIDEOS_AI_TRG
BEFORE INSERT ON VIDEOS 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT VIDEOS_SEQ.NEXTVAL
    INTO :NEW.VIDEO_ID
    FROM DUAL;
END;
/

COMMENT ON TABLE VIDEOS IS '영상분석'
/

COMMENT ON COLUMN VIDEOS.VIDEO_ID IS '영상아이디'
/

COMMENT ON COLUMN VIDEOS.USER_ID IS '회원아이디'
/

COMMENT ON COLUMN VIDEOS.NOTE_ID IS '노트아이디'
/

COMMENT ON COLUMN VIDEOS.VIDEO_FILENAME IS '파일명'
/

COMMENT ON COLUMN VIDEOS.PLAY_TIME IS '재생시간'
/

COMMENT ON COLUMN VIDEOS.UPLOAD_TIME IS '업로드시간'
/

COMMENT ON COLUMN VIDEOS.VIDEO_MEMO IS '영상메모'
/

ALTER TABLE VIDEOS
    ADD CONSTRAINT FK_VIDEOS_USER_ID_USERS_USER_I FOREIGN KEY (USER_ID)
        REFERENCES USERS (USER_ID)
/

ALTER TABLE VIDEOS
    ADD CONSTRAINT FK_VIDEOS_NOTE_ID_NOTE_CATEGOR FOREIGN KEY (NOTE_ID)
        REFERENCES NOTE_CATEGORIES (NOTE_ID)
/




CREATE OR REPLACE TRIGGER NOTE_CATEGORIES_AI_TRG 
BEFORE INSERT ON NOTE_CATEGORIES 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT NOTE_CATEGORIES_SEQ.NEXTVAL
    INTO :NEW.NOTE_ID
    FROM DUAL;
END;



SELECT * FROM videos;



