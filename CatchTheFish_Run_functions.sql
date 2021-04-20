use Catch_The_Fish
go


--1 Choosing Between Register/Login

print 'Welcome to "Catch The Fish" Game if its Your First Time Press 1 For register Otherwise Press 2 For Login'

exec reg_log
2


--2 Registration Form
exec Registration
'Enter UserName','Enter Password','Enter First Name','Enter Last Name','Adress','Country','E-Mail','Male/Female','Birth-Date'

go
select * from users
exec Update_Login_Users


--3 Login
exec login_user
'Shani2','AFF5G89H'
go
exec Update_Login_Users
go 

select * from Login

--4 Log Out

exec Log_Out
'Shani2'


--5 Support Password Change
print 'Thank You For contacting Us , Your Account is Now unblocked and ur new password is:' 
exec Support
'Shani'

--6 Play + Score
exec Play_Or_Score
'!Score'

exec Play_Or_Score
'!Play'

--The Game
exec FisherMan
'Avi'













