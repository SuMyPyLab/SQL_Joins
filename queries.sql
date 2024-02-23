-- CROSS JOIN:
select * from footballer cross join club;
select id,footballer.name,club.name from footballer cross join club;
select * from footballer natural inner join club where 1=1;


-- Inner Join
select id,footballer.name,position,birth_date, footballer.club_code, club.club_name
from footballer
inner join club
on footballer.club_code=club.club_code;

-- or (old style)
select id,footballer.name,position,birth_date,footballer.club_code,club.club_name
from footballer, club
where footballer.club_code=club.club_code;

-- Left Outer Join
select id,footballer.name,position,birth_date, club.club_code, club.club_name
from footballer
left outer join club
on footballer.club_code=club.club_code
  
-- Right Outer Join
select id,footballer.name,position,birth_date, club.club_code, club.club_name
from footballer
right outer join club
on footballer.club_code=club.club_code

-- Full Outer Join (by union operation)
select id,footballer.name,position,birth_date, club.club_code, club.club_name
from footballer
left outer join club
on footballer.club_code=club.club_code
union
select id,footballer.name,position,birth_date, club.club_code, club.club_name
from footballer
right outer join club
on footballer.club_code=club.club_code;


