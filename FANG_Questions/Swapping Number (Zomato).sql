USE INTERVIEW_QUESTIONS;

CREATE TABLE count_orders(
order_id INT,
order_value VARCHAR(512)
);

INSERT INTO count_orders
VALUES('1',"A"),
('2','B'),
('3','C'),
('4','D'),
('5','E'),
('6','F'),
('7','G'),
('8','H'),
('9',"I");

SELECT *,
		## CHECK IF ID IS LAST AND  ODD
		CASE WHEN order_id=(SELECT MAX(order_id) FROM count_orders) AND order_id%2!=0 THEN order_id
		## CHECK THE FOR EVEN NUMBER IDS
        WHEN order_id%2=0 THEN order_id-1
        ## CHECK FOR THE ODD NUMBER IDS
		ELSE order_id+1
        END AS New_ids
 FROM count_orders;