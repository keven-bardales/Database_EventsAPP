use db_event_agenda;

INSERT INTO tbl_categories (name, description) VALUES ('Music', 'Concerts, festivals, and other music events');
INSERT INTO tbl_categories (name, description) VALUES ('Sports', 'Sporting events like football, basketball, and baseball games');
INSERT INTO tbl_categories (name, description) VALUES ('Art', 'Exhibitions, galleries, and other art-related events');

INSERT INTO tbl_locations (name, address, municipality, department) VALUES ('Madison Square Garden', '4 Pennsylvania Plaza', 'New York', 'New York');
INSERT INTO tbl_locations (name, address, municipality, department) VALUES ('Staples Center', '1111 S Figueroa St', 'Los Angeles', 'California');
INSERT INTO tbl_locations (name, address, municipality, department) VALUES ('O2 Arena', 'Peninsula Square', 'London', 'England');

INSERT INTO tbl_organizers (name, address) VALUES ('Live Nation', '9348 Civic Center Drive, Beverly Hills, CA 90210');
INSERT INTO tbl_organizers (name, address) VALUES ('AEG Presents', '800 W Olympic Blvd #305, Los Angeles, CA 90015');
INSERT INTO tbl_organizers (name, address) VALUES ('SJM Concerts', '40 Water Lane, Manchester M3 4LY, United Kingdom');

INSERT INTO tbl_events (name, description, date_time, duration, cost, id_location, id_category, id_main_organizer) VALUES ('Coachella', 'Annual music festival featuring various genres of music', '2023-04-14 00:00:00', 3, 399.99, 1, 1, 1);
INSERT INTO tbl_events (name, description, date_time, duration, cost, id_location, id_category, id_main_organizer) VALUES ('Super Bowl LVI', 'Annual championship game of the National Football League', '2023-02-12 18:30:00', 4, 2000.00, 2, 2, 2);
INSERT INTO tbl_events (name, description, date_time, duration, cost, id_location, id_category, id_main_organizer) VALUES ('Harry Styles Live', 'Concert featuring Harry Styles and special guests', '2023-07-20 20:00:00', 2, 99.99, 3, 1, 3);

INSERT INTO tbl_event_organizers (id_event, id_organizer) VALUES (1, 1);
INSERT INTO tbl_event_organizers (id_event, id_organizer) VALUES (2, 2);
INSERT INTO tbl_event_organizers (id_event, id_organizer) VALUES (3, 3);

INSERT INTO tbl_organizer_emails (email, id_organizer) VALUES ('info@livenation.com', 1);
INSERT INTO tbl_organizer_emails (email, id_organizer) VALUES ('contact@aegpresents.com', 2);
INSERT INTO tbl_organizer_emails (email, id_organizer) VALUES ('info@sjmconcerts.com', 3);

INSERT INTO tbl_organizer_phones (phone, id_organizer) VALUES ('1234567890', 1);
INSERT INTO tbl_organizer_phones (phone, id_organizer) VALUES ('0987654321', 2);
INSERT INTO tbl_organizer_phones (phone, id_organizer) VALUES ('5555555555', 3);

INSERT INTO tbl_users (name, email, password) VALUES ('John Doe', 'johndoe@example.com', 'password123');
INSERT INTO tbl_users (name, email, password) VALUES ('Jane Smith', 'janesmith@example.com', 'abc123');
INSERT INTO tbl_users (name, email, password) VALUES ('Bob Johnson', 'bjohnson@example.com', 'def456');

INSERT INTO tbl_event_users (id_event, id_user, confirmed)
VALUES (1, 1, 1), (1, 2, 0), (2, 2, 1);

