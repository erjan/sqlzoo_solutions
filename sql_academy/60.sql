-- Print the identifiers of the teachers who taught at least once for the entire time in each of the eleventh grades.

-- BAD SOLUTION!
with help as (
select teacher, classroom, name from schedule inner join class on class.id = schedule.class where class.name like '11%')

select distinct h1.teacher from help h1 inner join help h2 on h1.teacher = h2.teacher where h1.name = '11 A' and h2.name = '11 B' --  and h1.name != h2.name

