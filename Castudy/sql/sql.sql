USE inotes;

CREATE TABLE note_type(
	idNote_type INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nameNote VARCHAR(100) NOT NULL,
    descriptionNote VARCHAR(200)
);

CREATE TABLE note(
	idNote INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content VARCHAR(500) NOT NULL,
    idNote_type INT(11),
    FOREIGN KEY(idNote_type) REFERENCES note_type(idNote_type)
);
SELECT * FROM  note;
SELECT * FROM  note_type;
SELECT idNote , title, content, note.idNote_type, nameNote, descriptionNote FROM note LEFT JOIN  note_type ON note.idNote = note_type.idNote_type;
INSERT INTO note(title, content, idNote_type) VALUES ("HAIZZZZZ", "HIHIHIHIUHUHUH", 1);
INSERT INTO note_type(nameNote, descriptionNote) VALUES ("lÀM VIỆC","HIIHIHIHIHIH");
INSERT INTO note(title, content) VALUES ("nhan van", "kakakakakakkâk");
SELECT * FROM  note WHERE idNote = 2;


SELECT * FROM  note WHERE title = "nhan van";

DELETE FROM note WHERE idNote = 6;
UPDATE note SET title = "cuc", content = "xu" WHERE idNote = 2;