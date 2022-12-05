CREATE TABLE contact_person (
 contact_person_id SERIAL NOT NULL,
 name VARCHAR(50) NOT NULL,
 phone VARCHAR(16) NOT NULL,
 email VARCHAR(10) NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (contact_person_id);


CREATE TABLE family (
 family_id SERIAL NOT NULL
);

ALTER TABLE family ADD CONSTRAINT PK_family PRIMARY KEY (family_id);


CREATE TABLE instructor (
 instructor_id SERIAL NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 name VARCHAR(50) NOT NULL,
 adress VARCHAR(50) NOT NULL,
 phone VARCHAR(16) NOT NULL,
 email VARCHAR(10) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE instrument (
 instrument_id SERIAL NOT NULL,
 type VARCHAR(20) NOT NULL,
 brand VARCHAR(10)
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE lesson (
 lesson_id SERIAL NOT NULL,
 level INT NOT NULL,
 instructor_id SERIAL NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);


CREATE TABLE private_lesson (
 lesson_id SERIAL NOT NULL,
 price INT NOT NULL
);

ALTER TABLE private_lesson ADD CONSTRAINT PK_private_lesson PRIMARY KEY (lesson_id);


CREATE TABLE room (
 room_id SERIAL NOT NULL,
 name VARCHAR(10) NOT NULL
);

ALTER TABLE room ADD CONSTRAINT PK_room PRIMARY KEY (room_id);


CREATE TABLE student (
 student_id SERIAL NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 name VARCHAR(50) NOT NULL,
 adress VARCHAR(50) NOT NULL,
 phone VARCHAR(16) NOT NULL,
 email VARCHAR(50) NOT NULL,
 family_id SERIAL,
 contact_person_id SERIAL NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE booking (
 booking_id SERIAL NOT NULL,
 time TIME(10) NOT NULL,
 date DATE NOT NULL,
 instrument_id SERIAL NOT NULL,
 room_id SERIAL NOT NULL,
 student_id SERIAL,
 lesson_id SERIAL
);

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (booking_id);


CREATE TABLE ensemble (
 lesson_id SERIAL NOT NULL,
 genre VARCHAR(20) NOT NULL,
 price INT NOT NULL,
 max_students INT NOT NULL,
 min_students INT NOT NULL,
 amount_students INT
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);


CREATE TABLE group_lesson (
 lesson_id SERIAL NOT NULL,
 price INT NOT NULL,
 max_students INT NOT NULL,
 min_students INT NOT NULL,
 amount_students INT
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id);


CREATE TABLE rental (
 rented DATE NOT NULL,
 returned DATE,
 price INT NOT NULL,
 instrument_id SERIAL NOT NULL,
 student_id SERIAL NOT NULL
);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);


ALTER TABLE private_lesson ADD CONSTRAINT FK_private_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (family_id) REFERENCES family (family_id);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (contact_person_id) REFERENCES contact_person (contact_person_id);


ALTER TABLE booking ADD CONSTRAINT FK_booking_0 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_1 FOREIGN KEY (room_id) REFERENCES room (room_id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_2 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_3 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);
ALTER TABLE rental ADD CONSTRAINT FK_rental_1 FOREIGN KEY (student_id) REFERENCES student (student_id);


