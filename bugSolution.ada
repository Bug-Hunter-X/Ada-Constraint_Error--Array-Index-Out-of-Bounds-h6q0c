```ada
procedure Example is
   subtype Small_Index is Integer range 1..10;
   type My_Array is array (Small_Index) of Integer;
   Arr : My_Array := (others => 0);
begin
   if 1 <= 11 and 11 <= Small_Index'Last then
       Arr(11) := 5; --This is still an error, we should check the range of Small_Index
   else
       Put_Line("Index out of bounds");
   end if;
   
   -- Safer alternative using a loop and checking the index 
   for I in Small_Index loop
       Arr(I) := I * 2; 
   end loop;     
   -- ... more code ...
exception
   when Constraint_Error =>
      Put_Line("Index out of bounds");
end Example;
```