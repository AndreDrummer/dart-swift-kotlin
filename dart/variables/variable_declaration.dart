// Unchangeable at runtime
// final age0; // Error: A variable declared with final, must be assigned.
final age1 = 26; // The type is inferred.
final int age2 = 26; // The type of age is explicit.

// Unchangeable at complite-time
// const name0; // Error: A variable declared with const, must be assigned.
const name1 = "André";
const String name2 = "André"; // Will share memory with name1, because both has the same value.

// Changeable attribuition
int id = 9876; // Explicity typing
var serial = "CH-DG-17-S9"; // Type is inferred.
var thing; // null until first attribuition.

// Nullable types
Map<String, dynamic>? json;
// json = {"employee_type": "Manager"}; // attribuition

// Lazy init
late String address; // 'late' can be used when you guarantee that this variable will have a value before usage.
// it can be a alternative rather than declaring nullable.

// address = "Rua de cima, quadra de baixo"; // attribuition

