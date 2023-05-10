CREATE DATABASE db_event_agenda;
USE db_event_agenda;

CREATE TABLE tbl_categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  description VARCHAR(100) NOT NULL
);

CREATE TABLE tbl_locations (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  address VARCHAR(200) NOT NULL,
  municipality VARCHAR(100) NOT NULL,
  department VARCHAR(100) NOT NULL
);

CREATE TABLE tbl_organizers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  address VARCHAR(200) NOT NULL
);

CREATE TABLE tbl_events (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  description VARCHAR(200) NULL,
  date_time DATETIME NOT NULL,
  duration DOUBLE NOT NULL,
  cost DOUBLE NOT NULL,
  id_location INT NOT NULL,
  id_category INT NOT NULL,
  id_main_organizer INT NOT NULL,
  CONSTRAINT fk_location_event FOREIGN KEY (id_location) REFERENCES tbl_locations(id),
  CONSTRAINT fk_category_event FOREIGN KEY (id_category) REFERENCES tbl_categories(id),
  CONSTRAINT fk_mainOrganizer_event FOREIGN KEY (id_main_organizer) REFERENCES tbl_organizers(id)
);

CREATE TABLE tbl_event_organizers (
  id_event INT NOT NULL,
  id_organizer INT NOT NULL,
  PRIMARY KEY (id_event, id_organizer),
  CONSTRAINT fk_event_organizer FOREIGN KEY (id_event) REFERENCES tbl_events(id),
  CONSTRAINT fk_organizer_event FOREIGN KEY (id_organizer) REFERENCES tbl_organizers(id)
);

CREATE TABLE tbl_organizer_emails (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(100) UNIQUE,
  id_organizer INT NOT NULL,
  CONSTRAINT fk_organizer_email FOREIGN KEY (id_organizer) REFERENCES tbl_organizers(id)
);

CREATE TABLE tbl_organizer_phones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  phone VARCHAR(15),
  id_organizer INT NOT NULL,
  CONSTRAINT fk_organizer_phone FOREIGN KEY (id_organizer) REFERENCES tbl_organizers(id)
);

CREATE TABLE tbl_users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tbl_event_users (
  id_event INT NOT NULL,
  id_user INT NOT NULL,
  confirmed TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (id_event, id_user),
  CONSTRAINT fk_event_user FOREIGN KEY (id_event) REFERENCES tbl_events(id),
  CONSTRAINT fk_user_event FOREIGN KEY (id_user) REFERENCES tbl_users(id)
);

DROP DATABASE db_event_agenda;
