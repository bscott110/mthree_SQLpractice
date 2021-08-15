/*7/26/2021
19 exercises, executed individually
*/

select *
from exercise;

select *
from client;

select *
from client
where City="Metairie";

select *
from client
where ClientId="818u7faf-7b4b-48a2-bf12-7a26c92de20c";

select *
from Goal;

select name, LevelId
from Workout;

select name, LevelId, notes
from Workout
where LevelId="2";

select FirstName, LastName, City
from Client
where City="Metairie" or City="Kenner" or City="Gretna"
order by city;

select FirstName, LastName, BirthDate
from Client
where birthdate >='1980-01-01'
and birthdate <='1989-12-31';

select FirstName, LastName, BirthDate
from Client
where birthdate between '1980-01-01'
and '1989-12-31';

select *
from login
where emailaddress not regexp '.com$';

select firstname,lastname
from client
where birthdate is null;

select name
from exercisecategory
where ParentCategoryId is not null;

select name,notes
from workout
where levelid="3" and notes like "%you%";

select * 
from client;

select FirstName, LastName, City
from client
where (LastName regexp "^L" or LastName regexp "^M" 
or LastName regexp "^N") and city="LaPlace";

select *
from InvoiceLineItem;

select InvoiceId, Description, Price, Quantity, 
ServiceDate, (Price*Quantity) as line_item_total
from InvoiceLineItem
where (Price*Quantity) between "15" and "25";

select *
from client
where firstname="Estrella" and lastname="Bazely";

select *
from login
where clientid="87976c42-9226-4bc6-8b32-23a8cd7869a5";

select workoutid
from workout
where name="This Is Parkour";

select goalid
from workoutgoal
where workoutid="12";

select *
from goal
where goalid="3" or goalid="8" or goalid="15";
