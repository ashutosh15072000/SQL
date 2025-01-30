
USE INTERVIEW_QUESTIONS;
CREATE TABLE Amazon_data (
    A INT,
    B INT
);

INSERT INTO Amazon_data (A, B) VALUES ('1', '2');
INSERT INTO Amazon_data (A, B) VALUES ('3', '2');
INSERT INTO Amazon_data (A, B) VALUES ('2', '4');
INSERT INTO Amazon_data (A, B) VALUES ('2', '1');
INSERT INTO Amazon_data (A, B) VALUES ('5', '6');
INSERT INTO Amazon_data (A, B) VALUES ('4', '2');

-- WRITE SQL query to remove the reversed pair and keep only one pair
SELECT a1.* FROM Amazon_data a1 
LEFT JOIN Amazon_data a2
ON a1.A =a2.B AND a1.B=a2.A
WHERE a1.A<a2.A OR a2.B IS NULL;