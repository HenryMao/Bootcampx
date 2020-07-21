select students.name as student, avg(assignment_submissions.duration) as avg_ass_dur
from students
join assignment_submissions on student_id = students.id
where students.end_date is NULL
group by students.name
order by avg(assignment_submissions.duration) desc;