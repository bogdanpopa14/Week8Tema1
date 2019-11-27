create table Author
(
	AuthorID int primary key not null,
	FirstName nvarchar(50) null,
	LastName nvarchar(50) null,
	BirthDate date not null,
	);

insert into Author(AuthorID,FirstName,LastName,BirthDate)
values(1,'Lsa','Asa','1975-10-12'),
      (2,'Nsa','Was','1985-03-03'),
	  (3,'Masa','Lsa','1955-05-10');

delete from Author
where BirthDate>='1975-01-01' and BirthDate<='1975-12-31';

create table Book
(
	Title nvarchar(50) primary key not null,
	PublisherName nvarchar(50) null,
	[Year] int null,
	Price int null,
	AuthorID int not null foreign key references Author(AuthorID),
	);	

insert into Book
values('Carte 1','Editura',2010,20,1),
      ('Carte 3','Editura',2011,30,2),
	  ('Carte 2','editura',2019,12,3);


delete from Book
where Price<150;