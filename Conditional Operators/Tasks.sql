--1. **Multiple Conditions**
--    - Task: Check if `v_num` is positive and less than 100. If true, print "Valid Range":
set serveroutput on

DECLARE
  v_num NUMBER := 58;
BEGIN
if v_num>0  and v_num<100 then
dbms_output.put_line('Valid Range');
else dbms_output.put_line('Invalid Range');
end if;
END;

--2. **String and Numeric Checks**
--    - Task: If `v_str` is "Active" and `v_val` is a multiple of 5, print "Valid Entry":
set serveroutput on

DECLARE
  v_str VARCHAR2(20) := 'Active';
  v_val NUMBER := 10;
BEGIN
  if v_str='Active'  and v_val mod 5=0 then
dbms_output.put_line('Valid Entry');
else dbms_output.put_line('Inalid Entry');
end if;
END;

--3. **Simple Nested Conditions**
--    - Task: Given `v_score`, classify into "Excellent", "Good", or "Average":
set serveroutput on

DECLARE
  v_score NUMBER := 78;
BEGIN
  if v_score>85 then
    dbms_output.put_line('Excellent');
elsif v_score>60 then
    dbms_output.put_line('Good');
else dbms_output.put_line('Average');
end if;
END;

--4. **Basic Boolean Checks**
--    - Task: Given `v_status` and `v_active`, if both are true, print "Fully Active":

set serveroutput on
DECLARE
  v_status BOOLEAN := TRUE;
  v_active BOOLEAN := TRUE;
BEGIN
  if v_status=true and v_active=true then
    dbms_output.put_line('Fully Active');
else dbms_output.put_line('Invalid');
end if;
END;


--5. **Using BETWEEN Operator**
--    - Task: Determine if `v_quantity` is between 20 and 100. If true, print "Valid Quantity":

set serveroutput on
DECLARE
    v_quantity NUMBER := 50;
BEGIN
  if v_quantity between 20 and 100 then
    dbms_output.put_line('Valid Quantity');
else dbms_output.put_line('Invalid');
end if;
END;

--6. **String Length Check**
--    - Task: If the length of `v_text` is between 5 and 15 characters, print "Valid Length":

set serveroutput on
DECLARE
    v_text VARCHAR2(50) := 'PL/SQL';
BEGIN
  if length(v_text) between 5 and 15 then
    dbms_output.put_line('Valid Length');
else dbms_output.put_line('Invalid');
end if;
END;

--7. **Combined AND & OR Conditions**
--    - Task: Check if `v_temp` is less than 0 OR between 50 and 100. If true, print "Special Range":
set serveroutput on
DECLARE
   v_temp NUMBER := 55;
BEGIN
  if v_temp<0 or v_temp between 50 and 100 then
    dbms_output.put_line('Special Range');
else dbms_output.put_line('Invalid');
end if;
END;


--8. **String Ends With Check**
--    - Task: Determine if `v_code` ends with "XYZ". If so, print "Code Valid":
set serveroutput on
DECLARE
   v_code VARCHAR2(8) := 'ABTXYZ';
BEGIN
  if v_code like '%XYZ' then
    dbms_output.put_line('Code Valid');
else dbms_output.put_line('Invalid');
end if;
END;

--9. **NULL Check for Address**
--    - Task: If `v_address` is null, print "Address Required":
set serveroutput on
DECLARE
    v_address VARCHAR2(100);
BEGIN
  if v_address is null then
    dbms_output.put_line('Address Required');
else dbms_output.put_line('Invalid');
end if;
END;

--10. **Simple CASE Statement**
--   - Task: Check if `v_day` represents a weekend (6 or 7) or a weekday (1-5) and print the result:
set serveroutput on
DECLARE
    v_day NUMBER := 3;
    v_day_type VARCHAR2(10);
BEGIN
case 
when v_day between 1 and 5 then v_day_type:='weekday';
when v_day between 6 and 7 then v_day_type:='weekend';
end case;
 DBMS_OUTPUT.PUT_LINE(v_day_type);
END;
