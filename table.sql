
/* Drop Tables */

DROP TABLE evaluation CASCADE CONSTRAINTS;
DROP TABLE event CASCADE CONSTRAINTS;
DROP TABLE inquiry CASCADE CONSTRAINTS;
DROP TABLE investor CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE administrator CASCADE CONSTRAINTS;
DROP TABLE funding CASCADE CONSTRAINTS;
DROP TABLE basket CASCADE CONSTRAINTS;
DROP TABLE investment CASCADE CONSTRAINTS;
DROP TABLE bont CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE like_project CASCADE CONSTRAINTS;
DROP TABLE maker_info CASCADE CONSTRAINTS;
DROP TABLE pro_news CASCADE CONSTRAINTS;
DROP TABLE reward CASCADE CONSTRAINTS;
DROP TABLE project CASCADE CONSTRAINTS;
DROP TABLE Commission CASCADE CONSTRAINTS;
DROP TABLE company_info CASCADE CONSTRAINTS;
DROP TABLE inquiry_category CASCADE CONSTRAINTS;
DROP TABLE meminfo CASCADE CONSTRAINTS;
DROP TABLE userinterest CASCADE CONSTRAINTS;
DROP TABLE interestcategory CASCADE CONSTRAINTS;
DROP TABLE investinfo CASCADE CONSTRAINTS;
DROP TABLE investment_category CASCADE CONSTRAINTS;
DROP TABLE stock CASCADE CONSTRAINTS;
DROP TABLE investment_type CASCADE CONSTRAINTS;
DROP TABLE mailing CASCADE CONSTRAINTS;
DROP TABLE point CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;
DROP TABLE notice_category CASCADE CONSTRAINTS;
DROP TABLE payment CASCADE CONSTRAINTS;
DROP TABLE pro_category CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE administrator
(
	admin_num number NOT NULL,
	admin_id varchar2(20),
	admin_pwd varchar2(20),
	admin_nick varchar2(20),
	admin_pic varchar2(30),
	PRIMARY KEY (admin_num)
);


CREATE TABLE basket
(
	bas_num number NOT NULL,
	cart_num number NOT NULL,
	rew_num number(2,0) NOT NULL,
	pnum number NOT NULL,
	mem_num number NOT NULL,
	ea number,
	bas_option varchar2(100),
	PRIMARY KEY (bas_num)
);


CREATE TABLE bont
(
	bond_num number NOT NULL,
	inv_type_num number NOT NULL,
	inv_interestcycle varchar2(30),
	inv_expiry date,
	PRIMARY KEY (bond_num)
);


CREATE TABLE cart
(
	cart_num number NOT NULL,
	PRIMARY KEY (cart_num)
);


CREATE TABLE Commission
(
	fundingtype number NOT NULL,
	commission number,
	PRIMARY KEY (fundingtype)
);


CREATE TABLE company_info
(
	comp_num number(4,0) NOT NULL,
	comp_state number,
	comp_name varchar2(30),
	comp_email varchar2(30),
	comp_url varchar2(30),
	comp_line varchar2(30),
	comp_addr varchar2(100),
	comp_sns varchar2(50),
	comp_birthday date,
	comp_boss varchar2(20),
	comp_mems number,
	comp_criminal number,
	mem_num number NOT NULL,
	PRIMARY KEY (comp_num)
);


CREATE TABLE evaluation
(
	eva_num number NOT NULL,
	pro_num number(4,0) NOT NULL,
	admin_num number NOT NULL,
	eva_check number,
	eva_status number,
	PRIMARY KEY (eva_num)
);


CREATE TABLE event
(
	evt_num number NOT NULL,
	admin_num number NOT NULL,
	mem_num number NOT NULL,
	evt_title varchar2(50),
	evt_content varchar2(500),
	evt_regdate date,
	PRIMARY KEY (evt_num)
);


CREATE TABLE funding
(
	fund_num number NOT NULL,
	pay_num number NOT NULL,
	bas_num number NOT NULL,
	mem_num number NOT NULL,
	nameflag number,
	payflag number,
	contribution number,
	del_addr varchar2(100),
	del_req varchar2(80),
	-- 배송 받는사람 이름
	receiver nvarchar2(20),
	-- 숫자값에 따라 결제전(예약결제) , 결제완료, 환불 등 상태 나타냄
	fund_status number,
	PRIMARY KEY (fund_num)
);


CREATE TABLE inquiry
(
	inq_num number NOT NULL,
	inq_cat_num number NOT NULL,
	admin_num number NOT NULL,
	mem_num number NOT NULL,
	inq_content varchar2(500),
	inq_check number,
	inq_handling number,
	req_attachment varchar2(50),
	PRIMARY KEY (inq_num)
);


CREATE TABLE inquiry_category
(
	inq_cat_num number NOT NULL,
	inq_cat_name varchar2(20),
	PRIMARY KEY (inq_cat_num)
);


CREATE TABLE interestcategory
(
	inum number(2,0) NOT NULL,
	interest varchar2(20),
	PRIMARY KEY (inum)
);


CREATE TABLE investinfo
(
	inin_num number NOT NULL,
	PRIMARY KEY (inin_num)
);


CREATE TABLE investment
(
	inv_num number(4,0) NOT NULL,
	inv_cat_num number NOT NULL,
	comp_num number(4,0) NOT NULL,
	stock_num number NOT NULL,
	bond_num number NOT NULL,
	inv_goal number(10,0),
	inv_startdate date,
	inv_deadline date,
	ins_instock_date date,
	inv_issue number,
	inv_price number,
	inv_min number,
	PRIMARY KEY (inv_num)
);


CREATE TABLE investment_category
(
	inv_cat_num number NOT NULL,
	inv_cat_name varchar2(20),
	PRIMARY KEY (inv_cat_num)
);


CREATE TABLE investment_type
(
	inv_type_num number NOT NULL,
	inv_type_name varchar2(30),
	PRIMARY KEY (inv_type_num)
);


CREATE TABLE investor
(
	investor_num number(4,0) NOT NULL,
	mem_num number NOT NULL,
	admin_num number NOT NULL,
	investor_state number,
	investor_pic varchar2(30),
	PRIMARY KEY (investor_num)
);


CREATE TABLE like_project
(
	like_num number NOT NULL,
	mem_num number NOT NULL,
	pro_num number(4,0) NOT NULL,
	PRIMARY KEY (like_num)
);


CREATE TABLE mailing
(
	mail_num number NOT NULL,
	mail_from varchar2(30),
	mail_to varchar2(30),
	mail_title varchar2(30),
	mail_content varchar2(500),
	mail_date date,
	PRIMARY KEY (mail_num)
);


CREATE TABLE maker_info
(
	mk_num number NOT NULL,
	pro_num number(4,0) NOT NULL,
	mk_name varchar2(30),
	mk_pic varchar2(50),
	mk_face varchar2(30),
	mk_twit varchar2(30),
	mk_insta varchar2(30),
	mk_url varchar2(30),
	mk_email varchar2(50),
	mk_tel varchar2(30),
	PRIMARY KEY (mk_num)
);


CREATE TABLE members
(
	mem_num number NOT NULL,
	id varchar2(30) NOT NULL,
	nickname varchar2(20),
	pwd varchar2(20),
	jumin varchar2(50),
	PRIMARY KEY (mem_num)
);


CREATE TABLE meminfo
(
	mem_num number NOT NULL,
	introduction varchar2(500),
	company varchar2(50),
	duty varchar2(20),
	school varchar2(30),
	major varchar2(20),
	profilename varchar2(30),
	addr varchar2(50),
	phone number,
	PRIMARY KEY (mem_num)
);


CREATE TABLE notice
(
	not_num number NOT NULL,
	not_cat_num number NOT NULL,
	admin_num number NOT NULL,
	mem_num number NOT NULL,
	not_title nvarchar2(50),
	not_content varchar2(1000),
	not_regdate date,
	PRIMARY KEY (not_num)
);


CREATE TABLE notice_category
(
	not_cat_num number NOT NULL,
	not_cat_name varchar2(20),
	PRIMARY KEY (not_cat_num)
);


CREATE TABLE payment
(
	pay_num number NOT NULL,
	card_num number,
	card_valdate number,
	card_secnum number,
	id_num number(6),
	pay_status number,
	PRIMARY KEY (pay_num)
);


CREATE TABLE point
(
	pnum number NOT NULL,
	mem_num number NOT NULL,
	pay_num number NOT NULL,
	point number,
	PRIMARY KEY (pnum)
);


CREATE TABLE project
(
	pro_num number(4,0) NOT NULL,
	pro_cat_num number(2,0) NOT NULL,
	fundingtype number NOT NULL,
	mem_num number NOT NULL,
	title varchar2(200),
	tag varchar2(30),
	goal number(10,0),
	wrapimhg varchar2(30),
	regdate date,
	startdate date,
	deadline date,
	adult number,
	confirm number,
	pro_status number,
	pro_type number,
	PRIMARY KEY (pro_num)
);


CREATE TABLE pro_category
(
	pro_cat_num number(2,0) NOT NULL,
	pro_cat_name varchar2(50),
	PRIMARY KEY (pro_cat_num)
);


CREATE TABLE pro_news
(
	news_num number NOT NULL,
	pro_num number(4,0) NOT NULL,
	news_title varchar2(50),
	news_content clob,
	news_regdate date,
	PRIMARY KEY (news_num)
);


CREATE TABLE reward
(
	rew_num number(2,0) NOT NULL,
	pro_num number(4,0) NOT NULL,
	rew_name varchar2(100),
	price number(6,0),
	detail varchar2(500),
	del_flag number,
	del_pee number(4,0),
	limit_ea number,
	amount number,
	del_startdate date,
	PRIMARY KEY (rew_num)
);


CREATE TABLE stock
(
	stock_num number NOT NULL,
	inv_type_num number NOT NULL,
	stock_assets number,
	stock_now number,
	stock_stake number,
	PRIMARY KEY (stock_num)
);


CREATE TABLE userinterest
(
	mem_num number NOT NULL,
	inum number(2,0) NOT NULL,
	PRIMARY KEY (mem_num)
);



/* Create Foreign Keys */

ALTER TABLE evaluation
	ADD FOREIGN KEY (admin_num)
	REFERENCES administrator (admin_num)
;


ALTER TABLE event
	ADD FOREIGN KEY (admin_num)
	REFERENCES administrator (admin_num)
;


ALTER TABLE inquiry
	ADD FOREIGN KEY (admin_num)
	REFERENCES administrator (admin_num)
;


ALTER TABLE investor
	ADD FOREIGN KEY (admin_num)
	REFERENCES administrator (admin_num)
;


ALTER TABLE notice
	ADD FOREIGN KEY (admin_num)
	REFERENCES administrator (admin_num)
;


ALTER TABLE funding
	ADD FOREIGN KEY (bas_num)
	REFERENCES basket (bas_num)
;


ALTER TABLE investment
	ADD FOREIGN KEY (bond_num)
	REFERENCES bont (bond_num)
;


ALTER TABLE basket
	ADD FOREIGN KEY (cart_num)
	REFERENCES cart (cart_num)
;


ALTER TABLE project
	ADD FOREIGN KEY (fundingtype)
	REFERENCES Commission (fundingtype)
;


ALTER TABLE investment
	ADD FOREIGN KEY (comp_num)
	REFERENCES company_info (comp_num)
;


ALTER TABLE inquiry
	ADD FOREIGN KEY (inq_cat_num)
	REFERENCES inquiry_category (inq_cat_num)
;


ALTER TABLE userinterest
	ADD FOREIGN KEY (inum)
	REFERENCES interestcategory (inum)
;


ALTER TABLE investment
	ADD FOREIGN KEY (inv_cat_num)
	REFERENCES investment_category (inv_cat_num)
;


ALTER TABLE bont
	ADD FOREIGN KEY (inv_type_num)
	REFERENCES investment_type (inv_type_num)
;


ALTER TABLE stock
	ADD FOREIGN KEY (inv_type_num)
	REFERENCES investment_type (inv_type_num)
;


ALTER TABLE event
	ADD FOREIGN KEY (mem_num)
	REFERENCES members (mem_num)
;


ALTER TABLE inquiry
	ADD FOREIGN KEY (mem_num)
	REFERENCES members (mem_num)
;


ALTER TABLE like_project
	ADD FOREIGN KEY (mem_num)
	REFERENCES members (mem_num)
;


ALTER TABLE notice
	ADD FOREIGN KEY (mem_num)
	REFERENCES members (mem_num)
;


ALTER TABLE point
	ADD FOREIGN KEY (mem_num)
	REFERENCES members (mem_num)
;


ALTER TABLE userinterest
	ADD FOREIGN KEY (mem_num)
	REFERENCES members (mem_num)
;


ALTER TABLE basket
	ADD FOREIGN KEY (mem_num)
	REFERENCES meminfo (mem_num)
;


ALTER TABLE company_info
	ADD FOREIGN KEY (mem_num)
	REFERENCES meminfo (mem_num)
;


ALTER TABLE funding
	ADD FOREIGN KEY (mem_num)
	REFERENCES meminfo (mem_num)
;


ALTER TABLE investor
	ADD FOREIGN KEY (mem_num)
	REFERENCES meminfo (mem_num)
;


ALTER TABLE notice
	ADD FOREIGN KEY (not_cat_num)
	REFERENCES notice_category (not_cat_num)
;


ALTER TABLE funding
	ADD FOREIGN KEY (pay_num)
	REFERENCES payment (pay_num)
;


ALTER TABLE point
	ADD FOREIGN KEY (pay_num)
	REFERENCES payment (pay_num)
;


ALTER TABLE basket
	ADD FOREIGN KEY (pnum)
	REFERENCES point (pnum)
;


ALTER TABLE evaluation
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE like_project
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE maker_info
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE pro_news
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE reward
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE project
	ADD FOREIGN KEY (pro_cat_num)
	REFERENCES pro_category (pro_cat_num)
;


ALTER TABLE basket
	ADD FOREIGN KEY (rew_num)
	REFERENCES reward (rew_num)
;


ALTER TABLE investment
	ADD FOREIGN KEY (stock_num)
	REFERENCES stock (stock_num)
;


ALTER TABLE meminfo
	ADD FOREIGN KEY (mem_num)
	REFERENCES userinterest (mem_num)
;


ALTER TABLE project
	ADD FOREIGN KEY (mem_num)
	REFERENCES userinterest (mem_num)
;



/* Comments */

COMMENT ON COLUMN funding.receiver IS '배송 받는사람 이름';
COMMENT ON COLUMN funding.fund_status IS '숫자값에 따라 결제전(예약결제) , 결제완료, 환불 등 상태 나타냄';



