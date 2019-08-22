USE master

CREATE DATABASE EventKalenderDB

USE EventKalenderDB

CREATE TABLE Users (
	UserID INT NOT NULL IDENTITY(1,1),
	Username NVARCHAR(50),
	[Password] NVARCHAR(75),
	[E-Mail] NVARCHAR(100)
)