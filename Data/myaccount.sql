USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'Sachtony'
)
CREATE DATABASE [Account]
GO

ALTER DATABASE [Account] SET QUERY_STORE=ON;
GO

USE [Account];
GO

CREATE TABLE [myaccount] (
    [AccountId] int NOT NULL IDENTITY,
    [Account Name] nvarchar(65) NOT NULL,
    [Full Name] nvarchar(50) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [Phone Number] Number NOT NULL,
    [Balance]       REAL NOT NULL,
    [Currency Code] [nvarchar](4) NOT NULL
    CONSTRAINT [PK_Account] PRIMARY KEY ([AccountId])
);
GO

INSERT INTO [myaccount] (Url) VALUES
('http://myaccount.sachtony.com/')
GO