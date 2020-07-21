select cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
from assignment_submissions
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
group by cohorts.name
order by count(assignment_submissions.*)  desc;