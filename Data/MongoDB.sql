USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'Sachtony'
)
CREATE DATABASE [MongoDB];
GO
IF SERVERPROPERTY('ProductVersion') > '12'
 ALTER DATABASE [MongoDB] SET QUERY_STORE=ON;
GO

USE [MongoDB];
GO

CREATE TABLE [Swift] (
   [SwiftId] int NOT NULL IDENTITY,
   [Swift Code] CHAR NOT NULL IDENTITY,
   [Bank Name] nvarchar(165) NOT NULL,
   [Branch Name] nvarchar(65) NOT NULL,
   [BankId] int NULL,
   [BankAccountId] int NULL,
   CONSTRAINT [PK_SwiftId] PRIMARY KEY ([SwiftId])
);
GO

-- Insert rows into table 'Swift'
INSERT INTO dbo.Swift
   ([SwiftId], [Swift Code], [Bank Name], [Branch Name], [BankId], [BankAccountId])
VALUES
   ( N'1', N'VNTTVNVX', N'Viet Nam Thuong Tin Commercial Joint Stock Bank (Vietbank)', N'', N'', N''),
   ( N'2', N'ASCBVNVX', N'Asia Commercial Bank (ACB)', N'', N'', N''),
   ( N'3', N'BFTVVNVX', N'Bank For Foreign Trade of Vietnam (Vietcombank)', N'', N'', N''),
   ( N'4', N'ICBVVNVX', N'Vietnam Joint Stock Commercial Bank For Industry And Trade (Vietinbank)', N'', N'', N''),
   ( N'5', N'VTCBVNVX', N'Vietnam Technological and Commercial Joint Stock Bank (Techcombank)', N'', N'', N''),
   ( N'6', N'BIDVVNVX', N'Bank Of Investment & Development of Vietnam (BIDV)', N'', N'', N''),
   ( N'7', N'VNTTVNVX', N'Vietnam Public Joint Stock Commercial Bank (PVcomBank)', N'', N'', N''),
   ( N'8', N'VBAAVNVX', N'Vietnam Bank for Agriculture and Rural Development (AgriBank)', N'', N'', N''),
   ( N'9', N'EBVIVNVX', N'Vietnam Export Import Commercial Joint Stock Bank (Eximbank)', N'', N'', N''),
   ( N'10', N'DUCMVNVX', N'Develop Union Commercial Joint Stock Bank (Ducombank)', N'', N'', N''),
   ( N'11', N'SGTTVNVX', N'Saigon Thuong Tin Commercial Joint Stock Bank (Sacombank)', N'', N'', N''),
   ( N'12', N'NASCVNVX', N'North Asia Commercial Joint Stock Bank (NASB)', N'', N'', N''),
   ( N'13', N'MSCBVNVX', N'Military Commercial Joint Stock Bank (MB Bank)', N'', N'', N''),
   ( N'14', N'CITIVNVX', N'CITIBANK N.A.', N'',  N'', N''),
   ( N'15', N'ORCOVNVX', N'Orient Commercial Joint Stock Bank (OCB)', N'', N'', N''),
   ( N'16', N'MHBBVNVX', N'Mekong Housing Bank (MHB Bank)', N'', N'', N''),
   ( N'17', N'SHBKVNVX', N'SHINHAN Bank', N'',  N'', N''),
   ( N'18', N'SHBAVNVX', N'Saigon - Hanoi Commercial Joint Stock Bank (SHB)', N'', N'', N''),
   ( N'19', N'HDBCVNVX', N'Hochiminh City Development Joint Stock Commercial Bank (HDbank)', N'', N'', N''),
   ( N'20', N'SEAVVNVX', N'Southeast Asia Commercial Joint Stock Bank (SeABank)', N'', N'', N''),
   ( N'21', N'LVBKVNVX', N'Lien Viet Post Joint Stock Commercial Bank (LienVietPostBank)', N'', N'', N''),
   ( N'22', N'OJBAVNVX', N'OceanBank', N'', N'', N''),
   ( N'23', N'PGBLVNVX', N'Petrolimex Group Commercial Joint Stock Bank (PG Bank)', N'', N'', N''),
   ( N'24', N'VNACVNVX', N'Vietnam Asia Commercial Joint Stock Bank (VietABank)', N'', N'', N''),
   ( N'25', N'VPBKVNVX', N'Vietnam Prosperity Joint Stock Commercial Bank (VPBank)', N'', N'', N''),
   ( N'26', N'SACLVNVX', N'Saigon Joint Stock Commercial Bank (SCB)', N'', N'', N'')
   
GO