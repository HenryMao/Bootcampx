SELECT id, name, email, cohort_id
from students
where github IS NULL
ORDER BY cohort_id;