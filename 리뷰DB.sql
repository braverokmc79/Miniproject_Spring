create table review(
	r_idx       int,
	r_subject   varchar2(1000) not null,
	r_content   varchar2(2000) not null,
	r_regdate   date,
	r_score       int,
	r_count     int,
	m_idx       int,
	c_idx       int	
);

create sequence seq_review_r_idx;

alter table review add constraint pk_review_r_idx primary key(r_idx);
	
alter table review add constraint fk_review_m_idx foreign key(m_idx) references member(m_idx);

alter table review add constraint fk_review_c_idx foreign key(c_idx) references cinema(c_idx);
	
	
ALTER TABLE SEE_INFO ADD CONSTRAINT FK_GRADE
FOREIGN KEY (GRADE) REFERENCES SEE_GRADE(GRADE)
ON DELETE SET NULL;
	
	
	

CREATE TABLE "REVIEW" 
   (	"R_IDX" NUMBER(*,0), 
	"R_SUBJECT" VARCHAR2(1000 BYTE) NOT NULL ENABLE, 
	"R_CONTENT" VARCHAR2(2000 BYTE) NOT NULL ENABLE, 
	"R_REGDATE" DATE, 
	"R_SCORE" NUMBER(*,0), 
	"R_COUNT" NUMBER(*,0), 
	"M_IDX" NUMBER(*,0), 
	"C_IDX" NUMBER(*,0), 
	 CONSTRAINT "PK_REVIEW_R_IDX" PRIMARY KEY ("R_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MINI_MOVIE"  ENABLE, 
	 CONSTRAINT "FK_REVIEW_C_IDX" FOREIGN KEY ("C_IDX")
	  REFERENCES "MINI_MOVIE"."CINEMA" ("C_IDX") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "FK_REVIEW_M_IDX" FOREIGN KEY ("M_IDX")
	  REFERENCES "MINI_MOVIE"."MEMBER" ("M_IDX") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MINI_MOVIE" ;
 	
	
----	
	
insert into review values(seq_review_r_idx.nextVal, '이 영화를 추천합니다',
                    '추천합니다',
                    sysdate,
                    4,
                    1,
                    1,
                    1);
                    
                    
                    
	
select * from review


drop view review_view

drop table review cascade constraints 
drop sequence seq_review_r_idx
	