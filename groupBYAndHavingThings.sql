set search_path to unirms;

select c.program_id, p.program_name, count(*) from compulsory_courses c 
join programs p on c.program_id = p.program_id group by c.program_id, p.program_name having count(*)<>11 order by c.program_id
