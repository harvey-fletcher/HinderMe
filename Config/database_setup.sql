DROP DATABASE IF EXISTS hinder;
CREATE DATABASE hinder;

USE hinder;

CREATE TABLE names(
    id INT(10) AUTO_INCREMENT,
    forename VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified VARCHAR(19) NOT NULL,
    blacklist_reason INT(4) DEFAULT 1,
    PRIMARY KEY(id)
);

CREATE TABLE pictures(
    id INT(10) AUTO_INCREMENT,
    location VARCHAR(100) NOT NULL,
    suspect_id INT(10) NOT NULL,
    is_real CHAR(1) DEFAULT 0,
    PRIMARY KEY(id)
);

CREATE TABLE aliases(
    id INT(10) AUTO_INCREMENT,
    suspect_id INT(10) NOT NULL,
    alias VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE phone_numbers(
    id INT(10) AUTO_INCREMENT,
    suspect_id INT(10) NOT NULL,
    number CHAR(11),
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

CREATE TABLE email_addresses(
    id INT(10) AUTO_INCREMENT,
    suspect_id INT(10) NOT NULL,
    address VARCHAR(75),
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

CREATE TABLE notes(
    id INT(10) AUTO_INCREMENT,
    suspect_id INT(10) NOT NULL,
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

CREATE TABLE blacklist_reasons(
    id INT(10) AUTO_INCREMENT,
    value VARCHAR(75) NOT NULL,
    PRIMARY KEY(id)
);
