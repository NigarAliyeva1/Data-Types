--**Open-Format Questions:**

--1. Scalar Data Types:
--**Open Format:** 
--Explain the purpose of the BOOLEAN data type in PL/SQL and provide a practical example of how it can be used in a conditional statement.
--Boolean məntiqi dəyərləri göstərən data type-dır. 2 dəyər qəbul edir: true və false. Looplarda və şərtlərdə istifadə olnur.
set serveroutput on
declare
is_admin boolean := true;
begin
if is_admin=true then
dbms_output.put_line('Welcome');
else
dbms_output.put_line('Wrong user');
end if;
end;
--2. Composite Data Types:
--**Open Format:** 
--Create a Nested Table in PL/SQL named `employee_skills` to store the skills of five employees. 
--Populate the Nested Table with employee names and their respective skills. 
--Display the contents of the Nested Table.
set serveroutput on
declare
type skill_list is table of number;
employee_skills skill_list := skill_list('Skill 1','Skilll 2','Skill 3','Skill 4','Skill 5');
begin
employee_skills.extend;
employee_skills(6):='Skill 6';
for i in 1..employee_skills.count loop
dbms_output.put_line('Employee skill'||i||'-'||employee_skills(i));
end loop;
end;
--3. Reference Data Types:
--**Open Format:** 
--Describe the differences between the REF CURSOR and the REF data types in PL/SQL and provide specific use cases where each type would be more suitable.
--REF KURSOR dinamik sorğular üçün, REF isə obyektlərə istinad etmək üçün istifadə olunur.
CREATE OR REPLACE PROCEDURE get_employee_info(p_dept_id NUMBER) IS
    emp_cursor SYS_REFCURSOR;
    emp_record employees%ROWTYPE;
BEGIN
    OPEN emp_cursor FOR
        'SELECT * FROM employees WHERE department_id = :dept_id' USING p_dept_id;

    LOOP
        FETCH emp_cursor INTO emp_record;
        EXIT WHEN emp_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.employee_id || ', Name: ' || emp_record.first_name || ' ' || emp_record.last_name);
    END LOOP;

    CLOSE emp_cursor;
END;
/
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50)
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    department_ref REF departments
);

-- Assuming you've populated the 'departments' table

-- Insert employee with a REF to a department
DECLARE
    emp_ref REF departments;
BEGIN
    SELECT REF(d) INTO emp_ref FROM departments d WHERE d.department_id = 101;

    INSERT INTO employees (employee_id, first_name, last_name, department_ref)
    VALUES (1, 'John', 'Doe', emp_ref);
    
    COMMIT;
END;
/

--4. LOB Data Types:
--**Open Format:** Explain the purpose of the CLOB data type in PL/SQL and provide a real-world use case where it would be beneficial.
--CLOB (Character Large Object) məlumat növü mətn sənədləri, XML məlumatları və ya digər mətn məlumatları kimi böyük həcmli xarakter məlumatlarını saxlamaq üçün istifadə olunur. 4 GB-a qədər məlumat saxlaya bilər.
CREATE TABLE articles (
    article_id NUMBER PRIMARY KEY,
    title VARCHAR2(200),
    content CLOB,
    publication_date DATE
);

--5. Collection Data Types:
--**Open Format:** 
--Compare and contrast VARRAY, Nested Table, and Associative Array (PL/SQL Table) in terms of their usage, limitations, and scenarios where each would be more appropriate.
--VARRAY təyini zamanı müəyyən edilmiş sabit ölçüsü olan massivdir. VARRAY yaradıldıqdan sonra onun ölçüsü dəyişə bilməz. VARRAY-dan istifadə etmək üçün onu konstruktorla işə salmalı və indeks notasiyasından istifadə edərək onun elementlərinə daxil ola bilərsiniz.
--VARRAY-dən fərqli olaraq Nesteed Table dinamik ölçüyə mailkdir böyüdülə və kiçilə bilər(extend metodu ilə).
--Nested Table və VARRAY-lərdən fərqli olaraq kolleksiyanın elementləri unique key indekslənir.
