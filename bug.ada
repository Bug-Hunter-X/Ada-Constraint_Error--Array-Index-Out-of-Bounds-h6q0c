```ada
procedure Example is
   subtype Small_Index is Integer range 1..10;
   type My_Array is array (Small_Index) of Integer;
   Arr : My_Array := (others => 0);
begin
   Arr(11) := 5; -- This will raise Constraint_Error
   -- ... more code ...
exception
   when Constraint_Error =>
      Put_Line("Index out of bounds");
end Example;
```