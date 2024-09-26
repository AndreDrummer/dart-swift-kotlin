var intList0: [Int] = []  // Empty array

let immuttableIntList1 = [5, 4, 6, 533, 32]  // Immutable array
var intList1 = [1, 2, 4, 5]  // Mutable array

// Most common use caes
intList1.count  // Returns the number of elements
intList1.first  // Returns the first element
intList1.last  // Returns the last element
intList1.isEmpty  // Returns true if the array is empty
intList1.filter { $0 > 2 }  // Filters elements greater than 2
intList1.map { $0 * 2 }  // Doubles each element
intList1.forEach { print($0) }  // Iterate over the list and perform action.
intList1.append(1)  // Adds an element at the end
intList1.insert(999, at: 1)  // // Add a new element at the index one. one can be any valid index of the list.
intList1.remove(at: 0)  // Removes the element at index 0
intList1.removeLast()  // Remove last element from the list.

print("Lista \(intList1)")

intList1.removeAll()  // Clears the array

// Trying add an element on a unmodifiable list will throw an exception
// immuttableIntList1.append(190)
