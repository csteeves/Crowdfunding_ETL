CREATE TABLE Category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR   NOT NULL
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR   NOT NULL
);

CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT   NOT NULL,
    company_name VARCHAR   NOT NULL,
    description VARCHAR   NOT NULL,
    goal DOUBLE   NOT NULL,
    pledge DOUBLE   NOT NULL,
    outcome VARCHAR   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR   NOT NULL,
    currency VARCHAR   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR   NOT NULL,
    subcategory_id VARCHAR   NOT NULL,
	FOREIGN KEY category_id REFERENCES Catergory(category_id),
	FOREIGN KEY subcategory_id REFERENCES Subcategory(subcategory_id),
	FOREIGN KEY contact_id REFERENCES Contacts(contact_id)
);

CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    email VARCHAR   NOT NULL,
);



