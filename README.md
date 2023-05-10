# Event Management Database

This is a database schema for an event management system. It stores information about events, their categories, locations, and organizers.

## Entity-Relationship Diagram

 [![model.png](https://i.postimg.cc/HL19Sh7s/model.png)](https://postimg.cc/xXgm8gRW)

## Tables

### tbl_categories

Stores information about the categories of events.

| Column Name | Data Type | Constraints | Description |
|-------------|----------|-------------|-------------|
| id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for the category |
| name | VARCHAR(60) | NOT NULL | Name of the category |
| description | VARCHAR(100) | NOT NULL | Description of the category |

### tbl_locations

Stores information about the locations where events can be held.

| Column Name | Data Type | Constraints | Description |
|-------------|----------|-------------|-------------|
| id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for the location |
| name | VARCHAR(60) | NOT NULL | Name of the location |
| address | VARCHAR(200) | NOT NULL | Address of the location |
| municipality | VARCHAR(100) | NOT NULL | Municipality of the location |
| department | VARCHAR(100) | NOT NULL | Department of the location |

### tbl_organizers

Stores information about the organizers of events.

| Column Name | Data Type | Constraints | Description |
|-------------|----------|-------------|-------------|
| id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for the organizer |
| name | VARCHAR(60) | NOT NULL | Name of the organizer |
| address | VARCHAR(200) | NOT NULL | Address of the organizer |

### tbl_events

Stores information about events.

| Column Name | Data Type | Constraints | Description |
|-------------|----------|-------------|-------------|
| id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for the event |
| name | VARCHAR(60) | NOT NULL | Name of the event |
| description | VARCHAR(200) | | Description of the event |
| date_time | DATETIME | NOT NULL | Date and time of the event |
| duration | DOUBLE | NOT NULL | Duration of the event |
| cost | DOUBLE | NOT NULL | Cost of the event |
| id_location | INT | NOT NULL | Foreign key referencing the location where the event will be held |
| id_category | INT | NOT NULL | Foreign key referencing the category of the event |
| id_main_organizer | INT | NOT NULL | Foreign key referencing the main organizer of the event |

### tbl_event_organizers

Associative table between events and their organizers.

| Column Name | Data Type | Constraints | Description |
|-------------|----------|-------------|-------------|
| id_event | INT | NOT NULL, PRIMARY KEY, FOREIGN KEY | Foreign key referencing the event |
| id_organizer | INT | NOT NULL, PRIMARY KEY, FOREIGN KEY | Foreign key referencing the organizer |

### tbl_organizer_emails

Stores the email addresses of organizers.

| Column Name | Data Type | Constraints | Description |
|-------------|----------|-------------|-------------|
| id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for the email address |
| email | VARCHAR(100) | UNIQUE | Email address of the organizer |
| id_organizer | INT | NOT NULL | Foreign key referencing the organizer |

### tbl_organizer_phones

Stores the phone numbers of organizers.

| Column Name | Data Type | Constraints | Description |
|-------------|----------|-------------|-------------|
| id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique identifier for the phone number |
| phone | VARCHAR(15) | | Phone number of the organizer |
| id_organizer | INT | NOT NULL |
