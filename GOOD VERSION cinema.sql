CREATE TABLE [Theatre] 
(
	[Theatre_Id] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	[TheatreName] VARCHAR(50) NOT NULL,
	[StreetNumber] VARCHAR(50) NOT NULL,
	[Street] VARCHAR(50) NOT NULL,
	[State] VARCHAR(50) NOT NULL,
	[City] VARCHAR(50) NOT NULL,
	[Zip] VARCHAR(50) NOT NULL
); 

CREATE TABLE [Auditorium] 
(
	[Auditorium_No] INT PRIMARY KEY NOT NULL,
	[SeatCount] INT NOT NULL,
	[Theatre_Id] INT NOT NULL,
	FOREIGN KEY ([Theatre_Id]) REFERENCES [Theatre] ([Theatre_Id])
		ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE [Employee] 
(
	[Employee_Id] INT PRIMARY KEY NOT NULL,
	[SSN] VARCHAR(50) NOT NULL,
	[FirstName] VARCHAR(50) NOT NULL,
	[MiddleName] VARCHAR(50),
	[LastName] VARCHAR(50) NOT NULL,
	[DateOfBirth] DATE NOT NULL,
	[DateOfHire] DATE NOT NULL
);

CREATE TABLE [Assigned_To]
(
	[Employee_Id] INT NOT NULL ,
	[Theatre_Id] INT NOT NULL,
	FOREIGN KEY ([Employee_Id]) REFERENCES [Employee] ([Employee_Id])
			ON DELETE NO ACTION ON UPDATE NO ACTION
	FOREIGN KEY (Theatre_Id) REFERENCES [Theatre](Theatre_Id)
			ON DELETE NO ACTION ON UPDATE NO ACTION
	
);
CREATE TABLE [Movie] (
	[Movie_Id] INT PRIMARY KEY NOT NULL,
	[Title] VARCHAR(50) NOT NULL,
	[Genre] VARCHAR(50) NOT NULL,
	[Rating] DECIMAL(3,2) NOT NULL,
	[ReleaseDate] DATE NOT NULL,
	[Director] VARCHAR(50) NOT NULL
);

CREATE TABLE [Showing] (
	[Showing_Id] INT PRIMARY KEY NOT NULL,
	[Date] DATE NOT NULL,
	[StartTime] VARCHAR(50) NOT NULL,
	[Theatre_Id] INT NOT NULL,
	[Movie_Id] INT NOT NULL,
	FOREIGN KEY (Theatre_Id) REFERENCES Theatre(Theatre_Id)
			ON DELETE NO ACTION ON UPDATE NO ACTION
	FOREIGN KEY (Movie_Id) REFERENCES Movie(Movie_Id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION

);

CREATE TABLE [Screens] (
	[Theatre_Id] INT NOT NULL,
	[Showing_Id] INT NOT NULL,
	FOREIGN KEY (Theatre_Id) REFERENCES Theatre(Theatre_Id)
			ON DELETE NO ACTION ON UPDATE NO ACTION
	FOREIGN KEY (Showing_Id) REFERENCES Showing(Showing_Id)	
			ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE [Features] (
	[Movie_Id] INT NOT NULL,
	[Showing_Id] INT NOT NULL,
	FOREIGN KEY (Movie_Id) REFERENCES Movie(Movie_Id)
			ON DELETE NO ACTION ON UPDATE NO ACTION
	FOREIGN KEY (Showing_Id) REFERENCES Showing(Showing_Id)
			ON DELETE NO ACTION ON UPDATE NO ACTION
);


insert into Theatre (TheatreName, StreetNumber, Street, State, City, Zip) values ('Wood Pigeon', '40', 'Talmadge', 'Louisiana', 'Shreveport', '71151');
insert into Theatre (TheatreName, StreetNumber, Street, State, City, Zip) values ('Horned Puffin', '4931', 'Kedzie', 'Florida', 'Jacksonville', '32230');
insert into Theatre (TheatreName, StreetNumber, Street, State, City, Zip) values ('Amazon Parrot (unidentified)', '6799', 'Spohn', 'Massachusetts', 'Boston', '02119');
insert into Theatre (TheatreName, StreetNumber, Street, State, City, Zip) values ('Nigel the Pelican', '4', 'Stuart', 'Rhode Island', 'Providence', '02905');
insert into Theatre (TheatreName, StreetNumber, Street, State, City, Zip) values ('Fairy Penguin', '73301', 'Village', 'Texas', 'Fort Worth', '76134');
insert into Theatre (TheatreName, StreetNumber, Street, State, City, Zip) values ('River Wallaby', '414', 'Kings', 'Washington', 'Tacoma', '98424');


insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (1, 55, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (2, 166, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (3, 192, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (4, 135, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (5, 110, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (6, 177, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (7, 79, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (8, 89, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (9, 136, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (10, 100, 1);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (11, 55, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (12, 166, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (13, 192, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (14, 135, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (15, 110, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (16, 177, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (17, 79, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (18, 89, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (19, 136, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (20, 150, 2);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (21, 150, 3);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (22, 150, 3);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (23, 150, 3);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (24, 150, 3);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (25, 150, 4);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (26, 250, 4);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (27, 100, 4);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (28, 186, 4);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (29, 100, 5);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (30, 186, 5);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (31, 100, 5);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (32, 100, 5);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (33, 186, 6);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (34, 100, 6);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (35, 100, 6);
insert into Auditorium (Auditorium_No, SeatCount, Theatre_Id) values (36, 100, 6);



insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (277, '715-22-0401', 'Dennis', 'Jerald', 'Jerzycowski', '1989', '1999');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (174, '669-29-8783', 'Jereme', 'Ronnica', 'Veregan', '1964', '2019');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (51, '285-32-0679', 'Fanechka', 'Walton', 'Walsh', '1958', '1990');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (67, '387-62-0501', 'Teddy', 'Carlie', 'Shergill', '1963', '1967');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (68, '577-55-2151', 'Alida', 'Hanni', 'Gannan', '1957', '1996');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (110, '575-25-9238', 'Mavis', 'Sloan', 'Tapsell', '1999', '1973');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (17, '246-56-7715', 'Dew', 'Devlin', 'Cavaney', '1962', '2000');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (196, '749-23-7123', 'Niel', 'Alfy', 'Jenney', '1965', '2017');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (253, '230-46-8591', 'Amargo', 'Martin', 'Bibb', '1964', '1987');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (129, '558-65-1395', 'Ronni', 'Cindee', 'Chaffen', '1998', '1965');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (225, '110-91-7751', 'Lin', 'Doralin', 'Rubinshtein', '1998', '1984');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (1, '348-79-2074', 'Bucky', 'Merle', 'Leveritt', '1971', '1963');
insert into Employee (Employee_Id, SSN, FirstName, MiddleName, LastName, BirthYear, YearOfHire) values (87, '578-67-5952', 'Emerson', 'Marjy', 'Delafont', '1955', '1984');


insert into Assigned_To (Employee_Id, Theatre_Id) values (277, 1);
insert into Assigned_To (Employee_Id, Theatre_Id) values (174, 2);
insert into Assigned_To (Employee_Id, Theatre_Id) values (51, 3);
insert into Assigned_To (Employee_Id, Theatre_Id) values (67, 4);
insert into Assigned_To (Employee_Id, Theatre_Id) values (68, 5);
insert into Assigned_To (Employee_Id, Theatre_Id) values (110, 6);
insert into Assigned_To (Employee_Id, Theatre_Id) values (17, 1);
insert into Assigned_To (Employee_Id, Theatre_Id) values (196, 2);
insert into Assigned_To (Employee_Id, Theatre_Id) values (253, 3);
insert into Assigned_To (Employee_Id, Theatre_Id) values (129, 4);
insert into Assigned_To (Employee_Id, Theatre_Id) values (225, 5);
insert into Assigned_To (Employee_Id, Theatre_Id) values (1, 6);
insert into Assigned_To (Employee_Id, Theatre_Id) values (87, 1);

insert into Assigned_To (Employee_Id, Theatre_Id) values (277, 2);
insert into Assigned_To (Employee_Id, Theatre_Id) values (174, 3);
insert into Assigned_To (Employee_Id, Theatre_Id) values (51, 4);
insert into Assigned_To (Employee_Id, Theatre_Id) values (67, 5);
insert into Assigned_To (Employee_Id, Theatre_Id) values (68, 6);
insert into Assigned_To (Employee_Id, Theatre_Id) values (110, 1);
insert into Assigned_To (Employee_Id, Theatre_Id) values (17, 2);
insert into Assigned_To (Employee_Id, Theatre_Id) values (196, 3);
insert into Assigned_To (Employee_Id, Theatre_Id) values (253, 4);
insert into Assigned_To (Employee_Id, Theatre_Id) values (129, 5);
insert into Assigned_To (Employee_Id, Theatre_Id) values (225, 6);


insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (713, 'Beaufort', 'Action|Drama|War', 1.28, '8/8/1997', 'Scarlett Twist');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (679, 'Bullets Over Broadway', 'Comedy', 3.42, '10/15/1987', 'Ethelda Durnford');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (308, 'For the Moment', 'Romance|War', 2.68, '5/31/2019', 'Amelia Hallan');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (53, 'Future by Design', 'Documentary|Sci-Fi', 2.52, '6/18/2022', 'Aldo Alenov');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (451, 'Cruise, The', 'Documentary', 3.32, '2/12/1981', 'Raddie Adame');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (284, 'Just Buried', 'Comedy|Drama|Romance', 3.16, '11/21/1977', 'Rina Horry');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (745, 'Picture Bride (Bijo photo)', 'Drama|Romance', 2.19, '3/17/1986', 'Felizio Scotson');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (435, 'Sitcom', 'Comedy|Drama|Thriller', 4.74, '9/8/2011', 'Newton Minthorpe');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (343, 'Sushi Girl', 'Crime|Mystery|Thriller', 4.29, '11/27/1983', 'Joni Flann');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (626, 'Tenchi: The Samurai Astronomer', 'Drama', 1.79, '8/6/1999', 'Hailee Tuson');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (578, 'Half Life of Timofey Berezin, The (PU-239)', 'Drama', 2.83, '6/8/1985', 'Hollyanne Murison');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (404, 'The Brain', 'Comedy|Crime', 2.37, '1/30/2007', 'Hilario Fogarty');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (434, 'Special Correspondents (Envoyés très spéciaux)', 'Comedy', 1.57, '6/29/2020', 'Elizabeth Surpliss');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (352, 'Will Ferrell: You''re Welcome America - A Final Night with George W Bush', 'Comedy', 4.14, '11/2/2016', 'Yvor Surr');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (613, 'Frankenstein', 'Drama|Horror|Sci-Fi', 1.42, '3/2/1970', 'Yuri Hurcombe');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (3, 'The King and Four Queens', 'Adventure|Comedy|Mystery|Western', 4.91, '3/8/1973', 'Ailsun Andreini');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (50, 'Nowhere to Run', 'Action|Romance', 4.47, '6/10/1978', 'Emera Brightman');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (387, 'They Came Together', 'Comedy|Romance', 3.26, '6/10/1976', 'Deirdre Ornelas');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (395, 'Moomins on the Riviera (Muumit Rivieralla)', 'Animation|Children|Comedy', 1.99, '2/18/2001', 'Torrin McNaught');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (112, 'Chhoti Si Baat', 'Comedy|Romance', 1.63, '6/20/2011', 'Delila Deftie');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (201, 'Black Room, The', 'Crime|Horror|Thriller', 4.96, '4/8/1989', 'Krishnah Absolom');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (373, 'Day I Became a Woman, The (Roozi khe zan shodam)', 'Drama', 4.09, '6/23/1985', 'Dolli Saul');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (458, 'Wallace & Gromit: A Close Shave', 'Animation|Children|Comedy', 3.71, '11/11/2005', 'Wally Pratty');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (669, 'Red Dwarf, The (Nain rouge, Le)', 'Comedy|Drama', 1.39, '2/4/2004', 'Kati Samworth');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (60, 'Harriet Craig', 'Drama', 3.34, '8/21/2022', 'Kalvin Krzyzaniak');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (736, 'Jerk, The', 'Comedy', 3.76, '4/2/1976', 'Bealle Leamon');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (321, 'Forbidden', 'Drama|Romance', 2.35, '4/19/2003', 'Brenna Smallcomb');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (276, 'Vacation from Marriage', 'Drama|Romance', 1.3, '1/21/1975', 'Granny Morsom');
insert into Movie (Movie_Id, Title, Genre, Rating, ReleaseDate, Director) values (135, 'Rebellion (L''ordre et la morale)', 'Action|Drama', 1.29, '9/22/2021', 'Shanna Stratley');


insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (831, '12/7/2022', '7:56 PM', 1, 713);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (918, '12/21/2022', '3:21 PM', 2, 308);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (483, '12/27/2022', '7:01 PM', 3, 745);

insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (280, '11/23/2022', '4:19 PM', 4, 578);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (471, '12/16/2022', '11:50 PM', 5, 613);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (46, '11/13/2022', '4:59 PM', 6, 112);

insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (194, '12/16/2022', '7:20 PM', 1, 201);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (243, '11/9/2022', '7:47 PM', 2, 373);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (790, '12/22/2022', '6:13 PM', 3, 458);

insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (586, '12/10/2022', '12:43 PM', 4, 669);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (870, '11/22/2022', '2:16 PM', 5, 60);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (306, '12/21/2022', '12:24 PM', 6, 736);

insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (947, '11/17/2022', '3:41 PM', 1, 53);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (610, '12/4/2022', '2:01 PM', 2, 276);
insert into Showing (Showing_Id, Date, StartTime, Theatre_Id, Movie_Id) values (858, '11/13/2022', '2:13 PM', 3, 135);


insert into Screens (Theatre_Id, Showing_Id) values (1, 831);
insert into Screens (Theatre_Id, Showing_Id) values (2, 918);
insert into Screens (Theatre_Id, Showing_Id) values (3, 483);
insert into Screens (Theatre_Id, Showing_Id) values (4, 280);
insert into Screens (Theatre_Id, Showing_Id) values (5, 471);
insert into Screens (Theatre_Id, Showing_Id) values (6, 46);
insert into Screens (Theatre_Id, Showing_Id) values (1, 194);
insert into Screens (Theatre_Id, Showing_Id) values (2, 243);
insert into Screens (Theatre_Id, Showing_Id) values (3, 790);
insert into Screens (Theatre_Id, Showing_Id) values (4, 586);
insert into Screens (Theatre_Id, Showing_Id) values (5, 870);
insert into Screens (Theatre_Id, Showing_Id) values (6, 306);
insert into Screens (Theatre_Id, Showing_Id) values (1, 947);
insert into Screens (Theatre_Id, Showing_Id) values (2, 610);
insert into Screens (Theatre_Id, Showing_Id) values (3, 858);


insert into Features (Movie_Id, Showing_Id) values (713, 831);
insert into Features (Movie_Id, Showing_Id) values (308, 918);
insert into Features (Movie_Id, Showing_Id) values (745, 483);

insert into Features (Movie_Id, Showing_Id) values (578, 280);
insert into Features (Movie_Id, Showing_Id) values (613, 471);
insert into Features (Movie_Id, Showing_Id) values (112, 46);

insert into Features (Movie_Id, Showing_Id) values (201, 194);
insert into Features (Movie_Id, Showing_Id) values (373, 243);
insert into Features (Movie_Id, Showing_Id) values (458, 790);

insert into Features (Movie_Id, Showing_Id) values (669, 586);
insert into Features (Movie_Id, Showing_Id) values (60, 870);
insert into Features (Movie_Id, Showing_Id) values (736, 306);

insert into Features (Movie_Id, Showing_Id) values (53, 947);
insert into Features (Movie_Id, Showing_Id) values (276, 610);
insert into Features (Movie_Id, Showing_Id) values (135, 858);








