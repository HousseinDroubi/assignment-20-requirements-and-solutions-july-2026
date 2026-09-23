1) CREATE DATABASE school_db;
2) CREATE TABLE students_table(
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(1),
    city VARCHAR(50)
);

3) 
INSERT INTO students_table VALUES
    (1, "Ahmad", "Ahmad", 17, "A", "Beirut"),
    (2, "Sara", "Khatib", 18, "B", "Tripoli"),
    (3, "Hassan", "Zein", 17, "A", "Sidon"),
    (4, "Mariam", "Ata", 19, "C", "Beirut"),
    (5, "Khaled", "Najjar", 16, "B", "Tyre"),
    (6, "Reem", "Salem", 18, "A", "Tripoli"),
    (7, "Youssef", "Hany", 17, "C", NULL),
    (8, "Hiba", "Zein", 20, "B", "Beirut"),
    (9, "Fadi", "Hashem", 16, "A", "Tyre"),
    (10, "Layla", "Hassan", 17, "B", "Tripoli");

4)
    1) SELECT * FROM students_table;
    2) SELECT first_name, city FROM students_table;
    3) 
        a) SELECT * FROM students_table WHERE grade = 'B';
        b) SELECT * FROM students_table WHERE city != 'Beirut';
        c) SELECT * FROM students_table WHERE age > 17;
        d) SELECT * FROM students_table WHERE age > 17;
        d) SELECT * FROM students_table WHERE age >= 18;
        e) SELECT * FROM students_table WHERE student_id < 5;
        e) SELECT * FROM students_table WHERE age <= 16;
    4)
        a) SELECT * FROM students_table WHERE city IS NULL;
        b) SELECT * FROM students_table WHERE city IS NOT NULL;
    
    5) SELECT * FROM students_table WHERE age BETWEEN 17 AND 19;
    6) SELECT * FROM students_table WHERE age BETWEEN 17 AND 19;
    7) SELECT * FROM students_table WHERE age > 17 AND grade = 'A';
5)
    1) UPDATE students_table SET grade = 'A' WHERE student_id = 4;
    2) UPDATE students_table SET city = 'Beirut' WHERE city = 'Tripoli';
6) 
    a) DELETE FROM students_table WHERE student_id = 10;
    b) DELETE FROM students_table WHERE age < 17;

7) CREATE DATABASE university_db;
8) CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT,
    registration_date DATE DEFAULT CURRENT_DATE,
    registration_time TIME DEFAULT CURRENT_TIME,
    created_at DATETIME DEFAULT NOW(),
    CONSTRAINT check_age CHECK(age>=18)
);

9) INSERT INTO students(student_id, full_name, email, age) VALUES (1, 'Houssein Droubi', 'email@example.com', 19);
10) INSERT INTO students(student_id, full_name, email, age) VALUES (2, 'Ali Charaf', 'email1@example.com', 18);