--1. **Basic Structure**
--- Task: Write an anonymous block that declares a variable 
  --  `v_greeting` and initializes it with "Hello, World!". The block should then output the value of `v_greeting`.
set serveroutput on

declare
     v_greeting VARCHAR2(50) := 'Hello, World!';
begin
      dbms_output.put_line(v_greeting);

end;

--2. **ariable Assignment**
--    - Task: Declare two number variables, `v_num1` and `v_num2`. Initialize `v_num1` with 10. 
--    Within the block, assign `v_num2` the value of `v_num1` multiplied by 5 and then output it.

declare
    v_num1 number :=10;
    v_num2 number ;

begin
  v_num2:=v_num1*5;
  DBMS_OUTPUT.PUT_LINE(v_num2);
end;

--3. **Using Arithmetic Operators**
  --  - Task: Declare two variables, `v_length` and `v_width`, and initialize them with 5 and 10 respectively. 
    --Calculate the area of a rectangle using these and output the result.
declare
    v_length number:=5;
    v_width number:=10;
begin
      DBMS_OUTPUT.PUT_LINE(v_length*v_width);
end;

--4. **Date Operations**
--    - Task: Declare a date variable `v_today` and initialize it with the current date. Add 7 days to this date and output the result.
declare
    v_today date:= sysdate;
begin
      DBMS_OUTPUT.PUT_LINE(v_today+7);

end;

--5. **Concatenation in Strings**
    -- Task: Declare two string variables, `v_firstName` and `v_lastName`.
    --Initialize them with your first and last name. Concatenate them to display a full name and then output it.

declare
    v_firstName varchar2(20):= 'Nigar';
    v_lastName varchar2(20):= 'Aliyeva';

begin
      DBMS_OUTPUT.PUT_LINE(concat(v_firstName,v_lastName));
end;
