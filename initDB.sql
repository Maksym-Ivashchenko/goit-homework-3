{\rtf1\ansi\ansicpg1251\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 .SFNSMono-Regular;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww16220\viewh15800\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\sl336\slmult1\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE developers(\
	id INT NOT NULL AUTO_INCREMENT,\
	developer_name VARCHAR(45) NOT NULL,\
	age INT NOT NULL,\
    gender VARCHAR(45) NOT NULL,\
	different VARCHAR(200),\
	CONSTRAINT PK_developers PRIMARY KEY(id)\
);\
\
CREATE TABLE skills(\
	id INT NOT NULL AUTO_INCREMENT,\
	branch VARCHAR(45) NOT NULL,\
	skill_level VARCHAR(45) NOT NULL,\
	CONSTRAINT PK_skills PRIMARY KEY(id)\
);\
\
CREATE TABLE projects(\
	id INT NOT NULL AUTO_INCREMENT,\
	project_name VARCHAR(45) NOT NULL,\
	project_type VARCHAR(45) NOT NULL,\
	comments VARCHAR(45) NOT NULL,\
	CONSTRAINT PK_projects PRIMARY KEY(id)\
);\
\
CREATE TABLE companies(\
	id INT NOT NULL AUTO_INCREMENT,\
	company_name VARCHAR(45) NOT NULL,\
	city VARCHAR(45) NOT NULL,\
	email VARCHAR(45) NOT NULL,\
	CONSTRAINT PK_companies PRIMARY KEY(id)\
);\
\
CREATE TABLE customers(\
	id INT NOT NULL AUTO_INCREMENT,\
	customer_name VARCHAR(45) NOT NULL,\
	country VARCHAR(45) NOT NULL,\
	email VARCHAR(45) NOT NULL,\
	CONSTRAINT PK_customers PRIMARY KEY(id)\
);\
\
CREATE TABLE companies_projects(\
	company_id INT NOT NULL,\
    project_id INT NOT NULL,\
    FOREIGN KEY (company_id) REFERENCES companies (id),\
    FOREIGN KEY (project_id) REFERENCES projects (id)\
);\
\
CREATE TABLE customers_projects(\
	customer_id INT NOT NULL,\
    project_id INT NOT NULL,\
    FOREIGN KEY (customer_id) REFERENCES customers (id),\
    FOREIGN KEY (project_id) REFERENCES projects (id)\
);\
\
CREATE TABLE developers_skills(\
	developer_id INT NOT NULL,\
    skill_id INT NOT NULL,\
    FOREIGN KEY (developer_id) REFERENCES developers (id),\
    FOREIGN KEY (skill_id) REFERENCES skills (id)\
);\
\
CREATE TABLE developers_projects(\
	developer_id INT NOT NULL,\
    project_id INT NOT NULL,\
    FOREIGN KEY (developer_id) REFERENCES developers (id),\
    FOREIGN KEY (project_id) REFERENCES projects (id)\
);\
}