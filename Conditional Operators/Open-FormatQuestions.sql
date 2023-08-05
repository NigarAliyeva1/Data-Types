--**Open-Format Questions:**

--1. **Open Format:** 
--Provide a practical example of how you would use the IF statement in PL/SQL to check if a given number is positive, negative, or zero.
set serveroutput on
declare
x number :=9;
begin
if x>0 then
 dbms_output.put_line('positive');
elsif x<0 then
 dbms_output.put_line('negative');
else
 dbms_output.put_line('zero');
end if;
end;
--2. **Open Format:** 
--Create a simple CASE statement in PL/SQL that evaluates the value of the `gender` variable and assigns "Male" or "Female" to the `gender_label` variable based on the value.
set serveroutput on
declare
gender number :=0;
gender_label varchar2(10);
begin
case gender
when 0 then gender_label:='female';
when 1 then gender_label:='male';
else gender_label:='invalid';
end case;
 dbms_output.put_line(gender_label);
end;
--3. **Open Format:** 
--Explain the difference between the simple CASE and searched CASE forms in the CASE statement. Provide scenarios where each form is more suitable.
--Simple Case dəyərlərə uyğun olaraq müqayisə aparır amma searched Case isə şərtlər əsasında boolean dəyərlərlə müqayisə aparır.
set serveroutput on
declare
gender number :=0;
gender_label varchar2(10);
begin
case gender
when 0 then gender_label:='female';
when 1 then gender_label:='male';
else gender_label:='invalid';
end case;
 dbms_output.put_line(gender_label);
end;
---------------------
set serveroutput on
declare
score number :=51;
messege varchar2(50);
begin
case 
when score>50 then messege :='You passed';
when score<50 then messege :='You failed';
else messege:='Invalid';
end case;
 dbms_output.put_line(messege);
end;
--4. **Open Format:** 
--Describe a scenario where you would use nested IF statements to handle multiple conditions in PL/SQL. Provide an example of how you would implement it.
--Nested if verilən if şərtinin içinə əlavə if şərtləri əlavə etmək üçündür. Nested if-lər nə qədər çox olarsa resultda aldığımız cavab daha dəqiq və əhatəli olar.
set serveroutput on
declare
car_name varchar2(100);
car_power number :=550;
car_type varchar2(100);
begin
if car_power>600 then car_type:='High-Performance';
    if  car_power>700 then car_name:='Sport+';
    end if;
elsif car_power>400 then car_type:='Performance';
    if  car_power>500 then car_name:='Sport';
    end if;
elsif car_power>250 then car_type:='Standart';
    if  car_power>300 then car_name:='No Sport';
    end if;
else car_type:='Economy' ; car_name:='No Sport';
end if;
 dbms_output.put_line(car_type||'  '||car_name||'  '||car_power);
end;
--5. **Open Format:** 
--How do you use the CASE statement to handle multiple conditions with complex expressions in PL/SQL? Provide a practical example to demonstrate its usage.
set serveroutput on
declare
score number :=51;
messege varchar2(50);
begin
case 
when score>50 then messege :='You passed';
when score<50 then messege :='You failed';
else messege:='Invalid';
end case;
 dbms_output.put_line(messege);
end;
