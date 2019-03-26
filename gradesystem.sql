CREATE DATABASE gradesystem;

use gradesystem;

CREATE TABLE student
(
  sid   int(10) NOT NULL,
  sname char(20),
  gender char(10) ,
  CONSTRAINT sid_pk PRIMARY KEY (sid)
 );


CREATE TABLE course
(
  cid   int(10) NOT NULL,
  cname varchar(20),
  CONSTRAINT cid_pk PRIMARY KEY (cid)
 );

CREATE TABLE mark
(
  mid   int(10) NOT NULL,
  sid int(10),
  cid    int(10),
 score int(10),
  CONSTRAINT mid_pk PRIMARY KEY (mid),
CONSTRAINT sid_fk FOREIGN KEY (sid) REFERENCES student(sid),
CONSTRAINT cid_fk FOREIGN KEY (cid) REFERENCES course(cid)
 );

INSERT INTO student VALUES((1,'Tom','male'),(2,'Jack','male'),(3,'Rose','female'));

INSERT INTO course VALUES((1,'math'),(2,'physics'),(3,'chemistry'));

INSERT INTO course VALUES((1,1,1,80),(2,2,1,85),(3,3,1,90),(4,1,2,60),(5,2,2,90),(6,3,2,75),(7,1,3,95),(8,2,3,75),(9,3,3,85));
