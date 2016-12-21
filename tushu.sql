create table administrator(
  id int,
  name varchar(24),
  gender varchar(12),
  age int,
  position varchar(58),
  hobby varchar(56),
  primary key(id,name)
);
insert into administrator(
  id,name,gender,age,position,hobby)
  values(1,'zhuang','nan',46,'guan','qi'),(2,'zhou','nv',40,'fuguan','shu'
),(3,'zhen','nv',33,'yuan','wu'),(4,'wu','nan',36,'yuan','qi'),
(5,'wang','nv',23,'yuan','play'),(6,'li','nan',26,'yuan','pashan');


create table literature(
  id int,
  administrator varchar(12),
  name varchar(24),
  author varchar(12),
  the_number int(12),
  publishers varchar(56),
  Publication_date varchar(12),
  Which_version_of_the varchar(12),
  primary key(id,name)
);
insert into literature values(1,'zhou','piao','Mitchell',8,'xinhua','1936','zhongwen'),
  (2,'zhou','childhood','gorky',24,'xinhua','1913','zhongwen'),
  (3,'zhou','Gadfly','voynich',10,'xinhua','1897','zhongwen'),
  (4,'zhou','zairenjian','gorky',36,'xinhua','1916','zhongwen'),
  (5,'zhou','Vater und Sohn','Plauen',22,'xinhua','1934','zhongwen'),
  (6,'zhou','soledad','marquez',5,'xinhua','1967','zhongwen');

  create table  (
    id int,
    administrator varchar(12),
    name varchar(48),
    author varchar(48),
    the_number int(12),
    publishers varchar(56),
    Publication_date varchar(12),
    Which_version_of_the varchar(12),
    primary key(id,name)
  );
  insert into science values(1,'wu','On the origin of species','Darwin',30,'xinhua','1859','zhongwen'),
    (2,'wu','InSearchofMemory','EricR.Kandel',24,'xinhua','2007','zhongwen'),
    (3,'wu','Gadfly','Caotianyuan',19,'xinhua','2011','zhongwen'),
    (4,'wu','The scientific journey','Ray spanoulis to berg',36,'xinhua','2008','zhongwen'),
    (5,'wu','A Brief History Of Time','hawking ',22,'xinhua','1988','zhongwen'),
    (6,'wu','universe ','Skin larry',9,'xinhua','2003','zhongwen');
literature    science
select l.id,l.name,l.the_number,l.publishers,l.Which_version_of_the
,s.id,s.name,s.the_number,s.publishers,s.Which_version_of_the
from literature l,science s where l.id=s.id;
