SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_InsertClient]
(
 @FirstName varchar(40),
           @MiddleName varchar(40),
           @LastName varchar(40),
           @Gender char(1),
           @DateOfBirth datetime,
           @CreditRating float,
           @XCode char(7),
           @OccupationId int,
           @TelephoneNumber varchar(20),
           @Street1 varchar(100),
           @Street2 varchar(100),
           @City varchar(100),
           @ZipCode varchar(15),
           @Longitude float,
           @Latitude float,
           @Notes varchar(max)
) 
As
 Begin
  INSERT INTO [dbo].[Client]
           ([FirstName]
           ,[MiddleName]
           ,[LastName]
           ,[Gender]
           ,[DateOfBirth]
           ,[CreditRating]
           ,[XCode]
           ,[OccupationId]
           ,[TelephoneNumber]
           ,[Street1]
           ,[Street2]
           ,[City]
           ,[ZipCode]
           ,[Longitude]
           ,[Latitude]
           ,[Notes])
     VALUES
           (@FirstName,
           @MiddleName ,
           @LastName,
           @Gender ,
           @DateOfBirth ,
           @CreditRating ,
           @XCode ,
           @OccupationId ,
           @TelephoneNumber ,
           @Street1 ,
           @Street2 ,
           @City ,
           @ZipCode ,
           @Longitude ,
           @Latitude ,
           @Notes )
 End

GO
