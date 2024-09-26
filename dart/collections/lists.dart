import 'dart:collection';

void main() {
  // Empty Lists
  var intList0 = [];
  List intList01 = <int>[];
  List<int> intList03 = <int>[];

  // Filled Lists
  var intList1 = [5, 4, 6, 533, 32];
  List intList12 = <int>[5, 4, 6, 533, 32];
  List<int> intList13 = <int>[5, 4, 6, 533, 32];

  var a = UnmodifiableListView(intList1); // Modifiable via seed (intList1)
  var b = List.unmodifiable(intList1); // Rigid unmodifiable

  print("UnmodifiableListView $a");
  print("List.unmodifiable $b");

  intList1.add(100);
  print("UnmodifiableListView $a");
  print("List.unmodifiable $b");

  // Most common use caes
  intList13.length; // Returns the number of elements inside the list.
  intList13.first; // Returns the first element of the list.
  intList13.last; // Returns the last element of the list.
  intList13.isEmpty; // Returns if the list is Empty.
  intList13.isNotEmpty; // Returns if the list is not Empty.
  intList13.where((el) => el > 2); // Returns the elements which value is greater than two.
  intList13.map((el) => el * 2); // Iterate over the list and return another list with value doubled.
  intList13.forEach(print); // Iterate over the list and perform action.
  intList13.add(1); // Add a new element at the end of the list
  intList13.insert(0, 1); // Add a new element at the index zero. Zero can be any valid index of the list.
  intList13.removeAt(0); // Remove element at index zero. Zero can be any valid index of the list.
  intList13.remove(1); // Remove element 1 from the list. 1 can be any valid element of the list.
  intList13.removeLast(); // Remove last element from the list.
  intList13.clear(); // Clear the list.
}
