USE QuanLySinhVien;

-- Câu 1: Hiển thị sinh viên có tên bắt đầu bằng ký tự h
SELECT *
FROM Student
WHERE StudentName LIKE 'h%';

-- Câu 2: Hiển thị lớp học bắt đầu vào tháng 12
SELECT *
FROM Class
WHERE MONTH(StartDate) = 12;

-- Câu 3: Hiển thị môn học có Credit từ 3 đến 5
SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;

-- Câu 4: Thay đổi ClassID của sinh viên Hung thành 2
UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';

-- Kiểm tra kết quả cập nhật
SELECT StudentID, StudentName, ClassID
FROM Student
WHERE StudentName = 'Hung';

-- Câu 5: Hiển thị StudentName, SubName, Mark
-- Sắp xếp điểm giảm dần, nếu trùng điểm thì tên tăng dần
SELECT S.StudentName, Sub.SubName, M.Mark
FROM Student S
JOIN Mark M ON S.StudentID = M.StudentID
JOIN Subject Sub ON M.SubID = Sub.SubID
ORDER BY M.Mark DESC, S.StudentName ASC;