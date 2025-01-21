# Ada Constraint_Error Example

This repository demonstrates a common runtime error in Ada: the `Constraint_Error` exception raised when accessing an array element using an index outside the array's bounds.  Ada's strong typing helps prevent many errors at compile time, but this runtime error still requires careful attention to prevent.

The `bug.ada` file contains code that intentionally causes this error. The solution is provided in `bugSolution.ada` which shows how to avoid this type of error with proper index checking.