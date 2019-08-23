USE master
GO

DROP DATABASE EventKalenderDB
GO

CREATE DATABASE EventKalenderDB
GO

USE EventKalenderDB
GO

CREATE TABLE Users (
	UserID INT IDENTITY(1,1),
	Username NVARCHAR(50),
	[Password] NVARCHAR(75),
	[E-Mail] NVARCHAR(100),
	[Admin] BIT,
	PRIMARY KEY (UserID)
)
GO

CREATE TABLE UEvent (
	EventID INT IDENTITY(1,1),
	EventTime DATETIME,
	NotifyEvent DATETIME, 
	AlertUser BIT,
	EventDescription NVARCHAR (150) NOT NULL,
	PRIMARY KEY (EventID)
)
GO

CREATE TABLE User_Events (
	UserID INT NOT NULL,
	EventID INT NOT NULL,
	FOREIGN KEY (UserID) REFERENCES Users(UserID),
	FOREIGN KEY (EventID) REFERENCES UEvent(EventID)
)
GO

INSERT INTO Users (Username, [Password], [E-Mail], [Admin])
VALUES ('admin', 'admin', 'admin@admin.com', 1)
GO

