CREATE TABLE developers(
	id INT NOT NULL UNIQUE,
	developer_name VARCHAR(45) NOT NULL,
	age INT NOT NULL,
    	gender VARCHAR(45) NOT NULL,
	different VARCHAR(200),
	CONSTRAINT PK_developers PRIMARY KEY(id)
);

CREATE TABLE skills(
	id INT NOT NULL UNIQUE,
	branch VARCHAR(45) NOT NULL,
	skill_level VARCHAR(45) NOT NULL,
	CONSTRAINT PK_skills PRIMARY KEY(id)
);

CREATE TABLE projects(
	id INT NOT NULL UNIQUE,
	project_name VARCHAR(45) NOT NULL,
	project_type VARCHAR(45) NOT NULL,
	comments VARCHAR(45) NOT NULL,
	CONSTRAINT PK_projects PRIMARY KEY(id)
);

CREATE TABLE companies(
	id INT NOT NULL UNIQUE,
	company_name VARCHAR(45) NOT NULL,
	city VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	CONSTRAINT PK_companies PRIMARY KEY(id)
);

CREATE TABLE customers(
	id INT NOT NULL UNIQUE,
	customer_name VARCHAR(45) NOT NULL,
	country VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	CONSTRAINT PK_customers PRIMARY KEY(id)
);

CREATE TABLE companies_projects(
	company_id INT NOT NULL,
	project_id INT NOT NULL,
    	FOREIGN KEY (company_id) REFERENCES companies (id),
    	FOREIGN KEY (project_id) REFERENCES projects (id)
);

CREATE TABLE customers_projects(
	customer_id INT NOT NULL,
    	project_id INT NOT NULL,
    	FOREIGN KEY (customer_id) REFERENCES customers (id),
    	FOREIGN KEY (project_id) REFERENCES projects (id)
);

CREATE TABLE developers_skills(
	developer_id INT NOT NULL,
    	skill_id INT NOT NULL,
    	FOREIGN KEY (developer_id) REFERENCES developers (id),
    	FOREIGN KEY (skill_id) REFERENCES skills (id)
);

CREATE TABLE developers_projects(
	developer_id INT NOT NULL,
    	project_id INT NOT NULL,
    	FOREIGN KEY (developer_id) REFERENCES developers (id),
    	FOREIGN KEY (project_id) REFERENCES projects (id)
);
