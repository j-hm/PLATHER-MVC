# tbl_board
create table tbl_board(
b_code	bigint	auto_increment	PRIMARY KEY, 
b_title	VARCHAR(125)		,
b_content	VARCHAR(4000)	,	
b_date	timestamp default now(),
b_moddate timestamp default current_timestamp on update now(), 
b_id	VARCHAR(125)		, 
b_nick varchar(20),
b_hit	INT default 0,
b_like	INT default 0	);

# tbl_song
create table tbl_song(
s_seq bigint auto_increment primary key,
s_bcode bigint not null,
s_title varchar(125),
s_singer varchar(125));


# tbl_notice
CREATE table tbl_notice (
	n_code	CHAR(5)		PRIMARY KEY,
	n_title	VARCHAR(125)	NOT NULL,	
	n_content	VARCHAR(4000)	NOT NULL,	
	n_date	CHAR(10)	NOT NULL,	
	n_time	CHAR(8)	NOT NULL,	
	n_mcode	CHAR(5)	NOT NULL default 'MMMM1',	
	n_hit	INT	
);

# tbl_member
CREATE table tbl_member(
	m_id	VARCHAR(125) primary key,	
	m_pw	VARCHAR(50)	NOT NULL,	
	m_nickname	VARCHAR(20)	NOT NULL,	
	m_birth	CHAR(10),		
	m_name	VARCHAR(125),		
	m_gender	CHAR(1),		
	m_level	INT	NOT NULL default 0,	
	m_profile	INT		
);

# tbl_comment
CREATE TABLE tbl_comment(
	c_seq	BIGINT	AUTO_INCREMENT	PRIMARY KEY,
	c_bcode	CHAR(5),
	c_id	VARCHAR(125)	NOT NULL,	
	c_comment	VARCHAR(500),
  c_date CHAR(10)
);

# tbl_like
create table tbl_like(
	l_seq bigint auto_increment primary key,
	l_id VARCHAR(125)	,
	l_bcode bigint,
	l_likecheck int default 0
);
