DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;
DROP TABLE campaign;


CREATE TABLE category (
	category_id VARCHAR NOT NULL,
	category_name VARCHAR NOT NULL,
	PRIMARY KEY(category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR NOT NULL,
	subcategory_name VARCHAR NOT NULL,
	PRIMARY KEY(subcategory_id)
);

CREATE TABLE contacts (
	contact_id INTEGER NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	PRIMARY KEY(contact_id)
);

CREATE TABLE campaign (
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal VARCHAR NOT NULL,
	pledged VARCHAR NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id)
);


SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;