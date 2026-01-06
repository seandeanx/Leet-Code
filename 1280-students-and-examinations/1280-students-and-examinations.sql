# Write your MySQL query statement below
SELECT St.student_id,St.student_name,S.subject_name,COUNT(E.student_id) AS attended_exams
FROM Students St
CROSS JOIN Subjects S 
LEFT JOIN Examinations E ON St.student_id=E.student_id AND S.subject_name=E.subject_name
GROUP BY St.student_id,St.student_name,S.subject_name
ORDER BY St.student_id,S.subject_name;