USE INTERVIEW_QUESTIONS;


CREATE TABLE Company_user (
    Company_Id VARCHAR(512),
    User_Id INT,
    Language VARCHAR(512)
);

INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '1', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '1', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '2', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '3', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '3', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '4', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '5', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '5', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '5', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '6', 'Spanish');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '6', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '7', 'English');

-- FIND THE COMPANY WHO HAVE ATLEAST 2 USER  WHO SPEAKS BOTH ENGLISH AND GERMAN
SELECT Company_ID,USER_ID
FROM company_user
WHERE Language="English" OR Language="German"
GROUP BY company_ID,USER_ID
HAVING COUNT(User_ID)>=2;

SELECT *  FROM company_user;

