CREATE TABLE stdTBL 
( stdName   NCHAR(5) NOT NULL PRIMARY KEY,
  addr	    NCHAR(2) NOT NULL
);
CREATE TABLE clubTBL 
( clubName    NCHAR(5) NOT NULL PRIMARY KEY,
  roomNo      NCHAR(4) NOT NULL
);
CREATE SEQUENCE stdclubSEQ;

CREATE TABLE stdclubTBL
(  idNum    NUMBER(5) NOT NULL PRIMARY KEY, 
   stdName  NCHAR(5) NOT NULL,
   clubName NCHAR(5) NOT NULL,
FOREIGN KEY(stdName) REFERENCES stdTBL(stdName),
FOREIGN KEY(clubName) REFERENCES clubTBL(clubName)
);

INSERT INTO stdTBL VALUES('�����','�泲');
INSERT INTO stdTBL VALUES('���ð�','����');
INSERT INTO stdTBL VALUES('������','���');
INSERT INTO stdTBL VALUES('������','���');
INSERT INTO stdTBL VALUES('�ٺ�Ŵ','����');
INSERT INTO clubTBL VALUES('����','101ȣ');
INSERT INTO clubTBL VALUES('�ٵ�','102ȣ');
INSERT INTO clubTBL VALUES('�౸','103ȣ');
INSERT INTO clubTBL VALUES('����','104ȣ');
INSERT INTO stdclubTBL VALUES(stdclubSEQ.NEXTVAL, '�����','�ٵ�');
INSERT INTO stdclubTBL VALUES(stdclubSEQ.NEXTVAL,'�����','�౸');
INSERT INTO stdclubTBL VALUES(stdclubSEQ.NEXTVAL,'������','�౸');
INSERT INTO stdclubTBL VALUES(stdclubSEQ.NEXTVAL,'������','�౸');
INSERT INTO stdclubTBL VALUES(stdclubSEQ.NEXTVAL,'������','����');
INSERT INTO stdclubTBL VALUES(stdclubSEQ.NEXTVAL,'�ٺ�Ŵ','����');

select s.stdname, s.addr, c.clubname, c.roomno
from STDTBL S
inner join stdclubTBL SC
on s.stdname = sc.stdname
inner join clubTBL C
on SC.clubname = c.clubName
order by s.stdname;

