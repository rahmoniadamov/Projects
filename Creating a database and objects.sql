--Creating DataBase+Tables
create database Catch_The_Fish

--Fish Table
CREATE TABLE [random_round_1]
(
fishID int,
fish nvarchar (100),
FishermanName nvarchar(20),
)
INSERT INTO random_round_1 
VALUES
(1,'>-<(((o> --- avi','Avi'),(2,'>-<(((o> --- moshe','Moshe'),(3,'>-<(((o> --- shir','Shir')
go

--Register Table
CREATE TABLE [users]
(
UserID Int IDENTITY(1,1) PRIMARY KEY,
UserName nchar(10) unique,
password nvarchar(40) not null,
Firstname nvarchar (30) not null,
LastName nvarchar (30) not null,
Address nvarchar (60) not null,
Country nvarchar (15) not null,
Email nvarchar  (15) unique not null,
Gender nvarchar (10) not null,
BirthDate datetime not null,
Points Int not null default 1000
)
go
--Countries Table
CREATE TABLE [countries]
(country nvarchar (50)
)
INSERT INTO countries (country)  
VALUES ('Afghanistan '), ('Aland Islands '), ('Albania '), ('Algeria '), ('American Samoa '), 
('Andorra '), ('Angola '), ('Anguilla '), ('Antarctica '), ('Antigua and Barbuda '), 
('Argentina '), ('Armenia '), ('Aruba '), ('Australia '), ('Austria '), ('Azerbaijan '), ('Bahamas '), ('Bahrain '), ('Bangladesh '), ('Barbados '), ('Belarus '), ('Belgium '), ('Belize '), 
('Benin '), ('Bermuda '), ('Bhutan '), ('Bolivia '), ('Bosnia and Herzegovina '), ('Botswana '), ('Bouvet Island '), ('Brazil '), ('British Indian Ocean Territory '), ('Brunei Darussalam '), ('Bulgaria '), ('Burkina Faso '), ('Burundi '), ('Cambodia '), ('Cameroon '), 
('Canada '), ('Cape Verde '), ('Cayman Islands '), ('Central African Republic '), ('Chad '), ('Chile '), ('China '), ('Christmas Island '), ('Cocos (Keeling) Islands '), ('Colombia '), 
('Comoros '), ('Congo '), ('Congo, The Democratic Republic of The '), ('Cook Islands '), ('Costa Rica '), ('Cote Divoire'), ('Croatia'), ('Cuba'), ('Cyprus '), ('Czech Republic '), 
('Denmark '), ('Djibouti '), ('Dominica '), ('Dominican Republic '), ('Ecuador '), ('Egypt '), ('El Salvador '), ('Equatorial Guinea '), ('Eritrea '), ('Estonia '), ('Ethiopia '), ('Falkland Islands (Malvinas) '), ('Faroe Islands '), ('Fiji '), ('Finland '), ('France '), ('French Guiana '), 
('French Polynesia '), ('French Southern Territories '), ('Gabon '), ('Gambia '), ('Georgia '), ('Germany '), ('Ghana '), ('Gibraltar '), ('Greece '), ('Greenland '), ('Grenada '), 
('Guadeloupe '), ('Guam '), ('Guatemala '), ('Guernsey '), ('Guinea '), ('Guinea-bissau '), ('Guyana '), ('Haiti '), ('Heard Island and Mcdonald Islands '), ('Holy See (Vatican City State) '), ('Honduras '), ('Hong Kong '), ('Hungary '), ('Iceland '), ('India '), ('Indonesia '), 
('Iran, Islamic Republic of '), ('Iraq '), ('Ireland '), ('Isle of Man '), ('Israel '), ('Italy '), ('Jamaica '), ('Japan '), ('Jersey '), ('Jordan '), ('Kazakhstan '), ('Kenya '), ('Kiribati '), 
('Korea, Democratic Peoples Republic of'), ('Korea'), ('Kuwait'), ('Kyrgyzstan '), ('Lao Peoples Democratic Republic '), ('Latvia '), ('Lebanon '), ('Lesotho '), 
('Liberia '), ('Libyan Arab Jamahiriya '), ('Liechtenstein '), ('Lithuania '), ('Luxembourg '), ('Macao '), ('Macedonia, The Former Yugoslav Republic of '), ('Madagascar '), ('Malawi '), 
('Malaysia '), ('Maldives '), ('Mali '), ('Malta '), ('Marshall Islands '), ('Martinique '), ('Mauritania '), ('Mauritius '), ('Mayotte '), ('Mexico '), ('Micronesia, Federated States of '), 
('Moldova, Republic of '), ('Monaco '), ('Mongolia '), ('Montenegro '), ('Montserrat '), ('Morocco '), ('Mozambique '), ('Myanmar '), ('Namibia '), ('Nauru '), ('Nepal '), 
('Netherlands '), ('Netherlands Antilles '), ('New Caledonia '), ('New Zealand '), 
('Nicaragua '), ('Niger '), ('Nigeria '), ('Niue '), ('Norfolk Island '), ('Northern Mariana Islands '), ('Norway '), ('Oman '), ('Pakistan '), ('Palau '), ('Palestinian Territory, Occupied '), 
('Panama '), ('Papua New Guinea '), ('Paraguay '), ('Peru '), ('Philippines '), ('Pitcairn '), 
('Poland '), ('Portugal '), ('Puerto Rico '), ('Qatar '), ('Reunion '), ('Romania '), ('Russian Federation '), ('Rwanda '), ('Saint Helena '), ('Saint Kitts and Nevis '), ('Saint Lucia '),
 ('Saint Pierre and Miquelon '), ('Saint Vincent and The Grenadines '), ('Samoa '), 
('San Marino '), ('Sao Tome and Principe '), ('Saudi Arabia '), ('Senegal '), ('Serbia '), 
('Seychelles '), ('Sierra Leone '), ('Singapore '), ('Slovakia '), ('Slovenia '), ('Solomon Islands '), ('Somalia '), ('South Africa '), ('South Georgia and The South Sandwich Islands '), 
('Spain '), ('Sri Lanka '), ('Sudan '), ('Suriname '), ('Svalbard and Jan Mayen '), 
('Swaziland '), ('Sweden '), ('Switzerland '), ('Syrian Arab Republic '),
('Taiwan, Province of China '), ('Tajikistan '), ('Tanzania'), 
('Thailand '), ('Timor-leste '), ('Togo '), ('Tokelau '), ('Tonga '), ('Trinidad and Tobago '), ('Tunisia '), ('Turkey '), ('Turkmenistan '), ('Turks and Caicos Islands '), ('Tuvalu '), 
('Uganda '), ('Ukraine '), ('United Arab Emirates '), ('United Kingdom '), 
('United States '), ('United States Minor Outlying Islands '), ('Uruguay '), ('Uzbekistan '), ('Vanuatu '), ('Venezuela '), ('Viet Nam '), ('Virgin Islands, British '), ('Virgin Islands, U.S. '),
 ('Wallis and Futuna '), ('Western Sahara '), ('Yemen '), ('Zambia '), ('Zimbabwe ')        
 go

 --Gender Table
CREATE TABLE [gender]
(
gender nchar(10)
)
INSERT INTO gender(gender)  
VALUES ('male'), ('female')

go



--Register Proc

create proc Registration

(
@RegUserName nchar(10),
@RegPassword nvarchar(40),
@Firstname nvarchar (30),
@LastName nvarchar (30),
@Address nvarchar (60),
@Country nvarchar (15),
@Email nvarchar (15),
@Gender nvarchar (10),
@BirthDate datetime
)
AS
declare @points int 
set @points=1000
if (@RegPassword=@RegUserName)
begin
print 'Unvalid password. The password can not be the user name.Please choose another password ' ------ offer an passport. a way to escape is using a id together that is unique. not good because someone else choose.
return
end
if (@RegPassword='password')
begin
	print 'Unvalid password. The password can not be the word "password". Please choose another password.'
	return
end
if (len(@RegPassword)<7)
begin
print 'Your password must be between 7 and 20 characters.'
return
end
if (@email not like '%@%')
begin
print 'Your email address is not valid. Please try again'
return
end
if (year(getdate())- year(@Birthdate)) < 18
begin
print 'You must be 18 or older to register'
return
end
if @RegPassword  not like '%[0-9]%' 
begin
print 'Your password must contain at least one number'
return
end
if @RegPassword  not like '%[A-Z]%' 
begin
print 'Your password must contain at least one uppercase letter'
return
end
if @RegPassword  not like '%[a-z]%'  
begin
print 'Your password must contain at least one lowercase letter'
return
end
if EXISTS (SELECT * FROM users where UserName= @RegUserName)
begin
declare @random_num_for_username nvarchar (20)= @regusername+CAST(floor(floor(RAND()*(500000-1)+1)) as nvarchar)
while @random_num_for_username in (SELECT UserName FROM users where UserName= @random_num_for_username)
begin
set @random_num_for_username=@RegUserName+CAST(floor(floor(RAND()*(500000-1)+1)) as nvarchar)
set @random_num_for_username =@random_num_for_username
end
print 'the username is already taken. You can use the username:'+@random_num_for_username
return
end
if  NOT EXISTS (SELECT * FROM countries where Country= @Country)
begin
print 'Unrecognized country name. Please use a valid country name.'
return
end
if  NOT EXISTS (SELECT gender FROM gender where gender= @gender)
begin
print 'Unrecognized gender. You can choose one of the options: male or female.'
return
end
if EXISTS (SELECT * FROM users where Email= @Email)
begin
print 'Same Email Already Registerd Please Try Insted A Diffrent One Or Try to Login'
return
end
INSERT INTO [users]
VALUES
(@RegUserName ,@RegPassword , @Firstname, @LastName , @Address , @Country , @Email , @Gender , @BirthDate,@points)
print 'Registration Is Completed Your Corrent Points Are:'+cast(@points as varchar)
BEGIN TRANSACTION;
INSERT INTO Login(UserName,password,userID)
SELECT UserName,password,userID
FROM users


--------------------------------view random password---------------------------------------------------------------------
CREATE VIEW vRandom
AS
SELECT randval = CRYPT_GEN_RANDOM (8)
GO


CREATE FUNCTION [dbo].[GenPass]()
RETURNS VARCHAR(8)
AS
BEGIN
   -- Declare the variables here
   DECLARE @Result VARCHAR(8)
   DECLARE @BinaryData VARBINARY(8)
   DECLARE @CharacterData VARCHAR(8)
 
   SELECT @BinaryData = randval
   FROM vRandom
 
   Set @CharacterData=cast ('' as xml).value ('xs:base64Binary(sql:variable("@BinaryData"))',
                   'varchar (max)')
   
   SET @Result = @CharacterData
   
   -- Return the result of the function
   RETURN @Result

END
GO

DECLARE @newPass VARCHAR(8)
SELECT @newPass = dbo.GenPass()
PRINT @newPass 



--Login Proc
 create proc login_user
 (
 @username varchar(20),
 @password varchar(20)
 )
 as
 declare @LoggedIn Bit,@RandPass varchar(8)
 select @RandPass=dbo.GenPass()
if @password=(SELECT password FROM Login where UserName= @username)
	begin
	print 'Your Now Logged In!'+' '+@username
	print 'Please Choose: !Play Or !Score in the Next Line'
	update login set LoggedIn=1 where UserName=@username
	end
else
	begin
	print 'Username/Password Incorrect!'
	update login set LogAttempts=LogAttempts+1 where UserName=@username
	end
if (select LogAttempts from Login where UserName=@username)=3
	begin 
	print 'After 3 Failed Attempts Your User is now Blocked , plz Contact our Support for New Password'
	update login set Blocked=1 where UserName=@username
	end
if (select blocked from login where UserName=@username)=1
	begin
	update users set password=@RandPass where UserName=@username
	end
	
go	
--LogIn Update Table Proc

create proc Update_Login_Users
as

drop table Login

Create Table [Login]
(
UserName nchar(10) primary key,
password nvarchar(40) not null,
LoggedIn Bit default 0,
userID Int FOREIGN KEY REFERENCES users(UserID),
Blocked Bit default 0,
LogAttempts Int default 0
)
BEGIN TRANSACTION;
INSERT INTO Login(UserName,password,userID)
SELECT UserName,password,UserID
FROM users




--LogOut Proc

create proc Log_Out
(
@username nvarchar(10)
)
as
if @username=(select username from Login where UserName=@username and LoggedIn=1)
	begin
	Print 'Logged Out Successfully!'
	update Login set LoggedIn=0 where UserName=@username
	end
else 
	print 'Your Not Logged In!'


	---------------------------Create Game Proc

create proc FisherMan
(
@FisherMan nvarchar(20)
)
as
declare @fish1 nvarchar(100),@winnerAvi bit,@winnerMoshe bit,@winnerShir bit,
@fish2 nvarchar(100),@fish3 nvarchar(100),@line nvarchar (300) = '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
,@counter int,@cntFish1 int,@cntFish2 int,@cntFish3 int,@num int= ROUND(RAND()*2,0) + 1,@winnerFish varchar(60)
set @counter=10
set @fish1=(select fish from random_round_1 where fishID=1)
set @fish2=(select fish from random_round_1 where fishID=2)
set @fish3=(select fish from random_round_1 where fishID=3)
set @cntFish1=0 set @cntFish2=0 set @cntFish3=0 set @winnerAvi=0 set @winnerMoshe=0 set @winnerShir=0
if (select Points from users where UserName=(select username from login where LoggedIn=1))<100
	print 'You Dont Have Enough Points to Play!'
else 
	begin
	while @counter>0
		begin
			set @counter=@counter-1
			print @line
			if @cntFish1<181 and @cntFish2<181 and @cntFish3<181
				begin
				set @cntFish1=@cntFish1+(floor(rand()*(18)+1))
				set @cntFish2=@cntFish2+(floor(rand()*(18)+1))
				set @cntFish3=@cntFish3+(floor(rand()*(18)+1))
				if @counter!=0
					begin
					print replicate(' ',@cntFish1)+@fish1
					print replicate(' ',@cntFish2)+@fish2
					print replicate(' ',@cntFish3)+@fish3
					continue
					end
					set @winnerFish=choose(@num,'||>-<(((o> --- avi|| #Num 1 Is The Winner!','||>-<(((o> --- moshe|| #Num 2 Is The Winner!','||>-<(((o> --- shir|| #Num 3 Is The Winner!')
					if @num=1
						begin 
						print replicate(' ',@cntFish1)+@winnerFish
						print replicate(' ',@cntFish2)+@fish2
						print replicate(' ',@cntFish3)+@fish3
						set @winnerAvi=1
						end
					if @num=2
						begin
						print replicate(' ',@cntFish1)+@fish1
						print replicate(' ',@cntFish2)+@winnerFish
						print replicate(' ',@cntFish3)+@fish3
						set @winnerMoshe=1
						end
					if @num=3
						begin
						print replicate(' ',@cntFish1)+@fish1
						print replicate(' ',@cntFish2)+@fish2
						print replicate(' ',@cntFish3)+@winnerFish
						set @winnerShir=1
						end
				end
					if @FisherMan='Avi' 
						begin
						if @winnerAvi=1
							begin
							print 'You Have Won 1,000 Points'
							update users set Points=Points+1000 where UserName=(select username from login where LoggedIn=1)
							end
						else
							begin
							print 'You Have Lost 100 Points'
							update users set Points=Points-100 where UserName=(select username from login where LoggedIn=1)
							end
						end
					if @FisherMan='Moshe' 
						begin
						if @winnerMoshe=1
							begin
							print 'You Have Won 1,000 Points'
							update users set Points=Points+1000 where UserName=(select username from login where LoggedIn=1)
							end
						else
							begin
							print 'You Have Lost 100 Points'
							update users set Points=Points-100 where UserName=(select username from login where LoggedIn=1)
							end
						end
					if @FisherMan='Shir' 
						begin
						if @winnerShir=1
							begin
							print 'You Have Won 1,000 Points'
							update users set Points=Points+1000 where UserName=(select username from login where LoggedIn=1)
							end
						else
							begin
							print 'You Have Lost 100 Points'
							update users set Points=Points-100 where UserName=(select username from login where LoggedIn=1)
							end
						end


		end
	end



	--Check Points of User Proc

create proc Check_My_Points
(
 @username varchar(20)
)
as
IF
	EXISTS (
			SELECT *
			FROM Login
			WHERE UserName=@username and LoggedIn=1
			)
			begin
			declare @points Int
			set @points=(SELECT Points
				FROM users where UserName=@username)
			print 'Your Points Are: '+cast(@points as nvarchar)
			end
else 
	print 'Your Not Logged In!'

--Choosing Register Or Log Proc
create proc reg_log 
(
@Choice Int
)
as
if @Choice=1
	print 'Enter In The Next Line The Following Details: UserName , Password , First Name,Last Name, Adress , Country, E-Mail, Gender , BirthDate - By This Order'
if @Choice=2
	print 'Enter Your UserName and Password in the Right Place'
else
	print 'Please Enter 1 or 2 Only!'


--Choosing Play Or Score Proc

create proc Play_Or_Score
(
@Choosing nvarchar(10)
)
as
declare @username varchar(10)
if NOT EXISTS (
			SELECT *
			FROM Login
			WHERE LoggedIn=1
			)
	print 'Please Login in Order to View Points/Play'
else if @Choosing='!Score'
	begin
	set @username=(select UserName from Login where LoggedIn=1)
	exec Check_My_Points @username
	end
else if @Choosing='!Play'
	print 'Choose Please One of the Following FisherMan: Avi , Moshe , Shir'
else
	print 'Please Use only !Score or !Play'


--Support Proc

create proc Support
(
@UserName varchar(10)
)
as 
declare @password varchar(10)
set @password=(select password from Login where UserName=@UserName)
print @password


