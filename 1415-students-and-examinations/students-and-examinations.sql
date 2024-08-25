SELECT 
  s.student_id, 
  s.student_name, 
  sub.subject_name,
  COUNT(e.student_id) AS attended_exams
FROM Students s
cross JOIN subjects sub 
left join Examinations e
on s.student_id=e.student_id and sub.subject_name=e.subject_name
group by  s.student_id, sub.subject_name,s.student_name
ORDER BY s.student_id, sub.subject_name;
