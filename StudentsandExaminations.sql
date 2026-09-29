SELECT Students.student_id,Students.student_name,Subjects.subject_name,
COUNT(Examinations.student_id) AS  attended_exams
FROM  Students 
cross join Subjects
left join Examinations
on   Subjects.subject_name = Examinations.subject_name
and Students.student_id = Examinations.student_id
group by Students.student_id,Students.student_name,Subjects.subject_name
ORDER BY  Students.student_id, Subjects.subject_name;
