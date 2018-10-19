SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
create table [dbo].[Payment](
InvoiceID varchar(20) NOT NULL,
Amount money not null,
PaymentType varchar(50) null,
PaymentStatus varchar(50) not null,
LastUpdatedBy nchar(10) NOT NULL,
LastUpdated date NOT NULL,
constraint PK_Invoice primary key(InvoiceID));





CREATE TABLE [dbo].[OnlineProgram](
	[OnlineProgramID] [int] identity(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Month] [date] NOT NULL,
	[Date] [date] NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[State] [varchar](50) NULL,
	[NumberOfKids] [int] NULL,
	[NumberOfAdult] [int] NULL,
	[Grade] [varchar](50) NULL,
	[Email] [nchar](10) NULL,
	[Theme] [nchar](10) NULL,
	[InvoiceID] [varchar](20) NOT NULL,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_OnlineProgID PRIMARY KEY (OnlineProgramID),
CONSTRAINT FK_OLPayment FOREIGN KEY (InvoiceID) references
Payment)
	
create table [dbo].[Program](
	ProgramID int identity(1,1) not null,
	ProgramName varchar(50) not null,
	OnOffSite varchar(50) not null,
	ProgramStatus varchar(50) not null,
	ProgAddress varchar(100) not null,
	City varchar(50) null,
	County varchar(50) null,
	ProgMonth varchar(10) not null,
	ProgDate date not null,
	[NumberOfKids] [int] NULL,
	[NumberOfAdult] [int] NULL,
	PayStatus varchar(50) not null,
	[InvoiceID] [varchar](20) NOT NULL,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_ProgID primary key (ProgramID),
CONSTRAINT FK_ProgPayment FOREIGN KEY (InvoiceID) references
Payment)

create table [dbo].[Animal](
	AnimalID int identity(1,1) not null,
	AnimalType varchar(50) not null,
	AnimalName varchar(50) not null,
	AnimalStatus varchar(50) not null,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_AnimalID primary key (AnimalID))

create table [dbo].[OnlineProgAnimal](
	AnimalID int not null,
	OnlineProgramID int NOT NULL,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_OnlineProgAnimal PRIMARY KEY (AnimalID, OnlineProgramID),
CONSTRAINT FK1_OnlineProgAnimal FOREIGN KEY (AnimalID) references
Animal,
CONSTRAINT FK2_OnlineProgAnimal FOREIGN KEY (OnlineProgramID) references
OnlineProgram);

create table [dbo].[ProgAnimal](
	AnimalID int not null,
	ProgramID int NOT NULL,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_ProgAnimal PRIMARY KEY (AnimalID, ProgramID),
CONSTRAINT FK1_ProgAnimal FOREIGN KEY (AnimalID) references
Animal,
CONSTRAINT FK2_ProgAnimal FOREIGN KEY (ProgramID) references
Program);

create table [dbo].[Organization](
	OrganizationID int identity(1,1) not null,
	OrgAddress varchar(100) not null,
	OrgCity varchar(50) not null,
	OrgCounty varchar(50) not null,
	OrgCountry varchar(50) not null,
	OrgPerson varchar(50) not null,
	OrgPhone varchar(15) not null,
	OrgEmail varchar(50) not null,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
constraint PK_Org primary key (OrganizationID));

create table [dbo].[PaymentOrganization](
	InvoiceID varchar(20) NOT NULL,
	OrganizationID int not null,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_PayOrg primary key (InvoiceID,OrganizationID),
CONSTRAINT FK1_PayOrg FOREIGN KEY (InvoiceID) references
Payment,
CONSTRAINT FK2_PayOrg FOREIGN KEY (OrganizationID) references
Organization);

create table [dbo].[ProgramOrganization](
	ProgramID int not null,
	OrganizationID int not null,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_ProgOrg primary key (ProgramID,OrganizationID),
CONSTRAINT FK1_ProgOrg FOREIGN KEY (ProgramID) references
Program,
CONSTRAINT FK2_ProgOrg FOREIGN KEY (OrganizationID) references
Organization);

create table [dbo].[Person](
	PersonID int identity(1,1) not null,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	PersonEmail varchar(50) not null,
	PersonPhone varchar(15) not null,
	Gender varchar(50) not null,
	JobLevel varchar(50) not null,
	LastSignedOn datetime null,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_PersonID primary key (PersonID));

create table [dbo].[Passwd](
	PersonID int not null,
	UserName varchar(50) not null,
	PasswordHash varchar(128) not null,
	PasswordSalt varchar(50) not null,
CONSTRAINT PK_PersonPwdID primary key (PersonID),
CONSTRAINT FK_PersonPwdID FOREIGN KEY (PersonID) references
Person);

create table [dbo].[ProgramPerson](
	ProgramID int not null,
	PersonID int not null,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_ProgPerson primary key (ProgramID,PersonID),
CONSTRAINT FK1_ProgPerson FOREIGN KEY (ProgramID) references
Program,
CONSTRAINT FK2_ProgPerson FOREIGN KEY (PersonID) references
Person);

create table [dbo].[OLProgramPerson](
	OnlineProgramID int not null,
	PersonID int not null,
	LastUpdatedBy varchar(50) NOT NULL,
	LastUpdated date NOT NULL,
CONSTRAINT PK_OLProgPerson primary key (OnlineProgramID,PersonID),
CONSTRAINT FK1_OLProgPerson FOREIGN KEY (OnlineProgramID) references
OnlineProgram,
CONSTRAINT FK2_OLProgPerson FOREIGN KEY (PersonID) references
Person);

alter authorization on database:: WildLifeCenter to sa