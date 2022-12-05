INSERT INTO contact_person (name, phone, email)
VALUES
  ('Hope Hanson', '(03857) 6955614', 'semper.rutrum.fusce@protonmail.couk'), 
  ('Rhonda Key', '(0578) 52474558', 'cras.interdum@hotmail.ca'), 
  ('Rhiannon Mayer', '(032921) 634491', 'lacus.mauris@hotmail.net'), 
  ('Halla Moses', '(060) 14574839', 'duis.sit@hotmail.ca'), 
  ('Lucian Dyer', '(058) 40467426', 'ac.eleifend@protonmail.org');

INSERT INTO family (family_id) VALUES (0);
INSERT INTO family (family_id) VALUES (1);
INSERT INTO family (family_id) VALUES (2);
INSERT INTO family (family_id) VALUES (3);
INSERT INTO family (family_id) VALUES (4);

INSERT INTO student (name, phone, email, adress, person_number, contact_person_id, family_id)
VALUES
  ('Martena Barnett', '(04552) 8115514', 'metus.in@hotmail.couk', '876-108 In Ave', '702325371029', 4, 3), 
  ('Minerva Soto', '(033446) 858798', 'venenatis.a@yahoo.org', 'P.O. Box 685, 4952 Donec Road', '351267455763', 2, 4), 
  ('Liberty Holland', '(033358) 594821', 'luctus@protonmail.net', 'Ap #336-2798 Curae Street', '858666868577', 1, 0), 
  ('Oleg Barrera', '(01862) 1752700', 'elit.sed.consequat@yahoo.com', '383-4165 Proin Road', '543678622197', 3, 2), 
  ('Price Sellers', '(01435) 1574916', 'velit.cras.lorem@icloud.org', '545-5215 Sem Av.', '763545610846', 1, 0);

INSERT INTO instrument (name, brand)
VALUES
  ('Cras', 'Ac Mattis'), 
  ('Vitae', 'Sed Dolor'), 
  ('Cras', 'Leo Vivamus'), 
  ('Odio.', 'Nulla Aliquet'), 
  ('Feugiat', 'Iaculis'), 
  ('Sed', 'Sed Industries'), 
  ('Sed', 'Occupare'), 
  ('Luctus', 'Nam Tempor'), 
  ('Cursus', 'Vel Cum PC'), 
  ('Libero', 'Augue PC');

INSERT INTO room (name)
VALUES
  ('O3H 2X8'), 
  ('L5Y 3K5'), 
  ('E0V 8X0'), 
  ('J1J 0W9'), 
  ('E1D 7X1'), 
  ('R3A 4T6'), 
  ('N9P 7M1'), 
  ('B3E 1U4'), 
  ('C3K 2R5'), 
  ('M9D 6H3');

INSERT INTO instructor (name, person_number, address, phone, email)
VALUES
  ('Hu Hayden', '792823664811', '699-2881 Pede. Street', '(0658) 27715046', 'lectus.quis.massa@hotmail.couk'), 
  ('Tatyana Vasquez', '575044244277', 'P.O. Box 670, 5905 Integer Avenue', '(053) 72830215', 'id.mollis.nec@hotmail.com'), 
  ('Echo Hoover', '731626611733', '2082 Faucibus Rd.', '(045) 10523513', 'a@hotmail.couk'), 
  ('Fulton Chavez', '744638705379', 'Ap #581-3569 Ultricies Street', '(011) 82825038', 'molestie.sodales@outlook.org'), 
  ('Ulla Ware', '683102586358', 'Ap #944-1225 Nec Avenue', '(0914) 40166234', 'eget.ipsum.donec@google.net');

INSERT INTO lesson (level, instructor_id)
VALUES
  (0, 4), 
  (4, 1), 
  (4, 3), 
  (3, 2), 
  (3, 3), 
  (2, 3), 
  (4, 3), 
  (4, 1), 
  (4, 2), 
  (0, 3);


INSERT INTO booking (time, date, instrument_id, room_id, student_id, lesson_id)
VALUES
  ('14:23:02', '2022-03-11', 6, 3, 1, 5), 
  ('02:42:16', '2022-07-07', 9, 2, 3, 4), 
  ('02:07:29', '2022-02-13', 6, 6, 1, 6), 
  ('01:05:41', '2022-12-03', 2, 3, 2, 9), 
  ('16:23:06', '2023-07-11', 4, 4, 4, 3);

INSERT INTO ensemble (lesson_id, genre, price, max_students, min_students, amount_students)
VALUES
  (1, Convallis in, 340, 10, 3, 6), 
  (2, Nunc mauris, 408, 10, 3, 6), 
  (3, Fusce, 463, 8, 3, 4);

INSERT INTO group_lesson (lesson_id, price, max_students, min_students, amount_students)
VALUES
  (4, 340, 10, 3, 6), 
  (5, 408, 10, 3, 6), 
  (6, 463, 8, 3, 4);

INSERT INTO private_lesson (lesson_id, price)
VALUES
  (7, 340), 
  (8, 408), 
  (9, 463), 
  (10, 327);

INSERT INTO rental (rented, returned, price, instrument_id, student_id)
VALUES
  ('Aug 9, 2022', NULL , 209, 8, 2), 
  ('Sep 21, 2022', 'Dec 2, 2022', 164, 1, 3), 
  ('Jan 1, 2022', NULL , 142, 4, 1), 
  ('Apr 10, 2022', 'Mar 13, 2022', 118, 2, 1);