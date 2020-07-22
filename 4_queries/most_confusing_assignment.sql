select assignment_id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(*) as total_requests
from assistance_requests
JOIN assignments on assignments.id = assignment_id
group by assistance_requests.assignment_id, name, day, chapter
order by total_requests desc;