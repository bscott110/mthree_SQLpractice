/*Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates.
*/
select g.name,(r.Room_num), r.start_date, r.end_date
from res r
inner join guests g on g.guestid=r.guestid
where (end_date between '2023/07/01' and '2023/07/31')

/*Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
*/
select g.name, r.room_num,r.start_date,r.end_date
from res r
inner join room rm on r.room_num=rm.room_num
inner join guests g on g.guestid=r.guestid
where rm.Amenities like '%Jacuzzi%'
order by g.name;

/*Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
*/
select g.name, r.room_num, r.start_date, r.end_date,(adults+children) as ppl_total
from res r
inner join guests g on g.guestid=r.guestid
where g.name="";

/*Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
*/
SELECT
	r.Room_Num, re.resid, re.total_room_cost
FROM room r
LEFT OUTER JOIN res re ON r.Room_Num = re.Room_num
ORDER BY r.room_Num;

/*Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023. use july instead
*/
select r.room_num, (adults+children) as ppl_total,r.start_date,r.end_date
from res r
where ((adults+children)>=3) and (r.start_date between '2023/04/01' and '2023/04/30') and
(r.end_date between '2023/04/01' and '2023/04/30');

/*Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.*/
select name, r.guestid, count(*)
from res r
inner join guests g on g.guestid=r.guestid
group by name;

/*Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)*/

select name, address, phone
from guests
where phone="(291) 553-0508";
