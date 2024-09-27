var intArray0: [Int] = []  // Empty array

let immuttableIntArray1 = [5, 4, 6, 533, 32]  // Immutable array
var intArray1 = [1, 2, 4, 5]  // Mutable array

// Most common use caes
intArray1.count  // Returns the number of elements
intArray1.first  // Returns the first element
intArray1.last  // Returns the last element
intArray1.isEmpty  // Returns true if the array is empty
intArray1.filter { $0 > 2 }  // Filters elements greater than 2
intArray1.map { $0 * 2 }  // Doubles each element
intArray1.forEach { print($0) }  // Iterate over the Array and perform action.
intArray1.append(1)  // Adds an element at the end
intArray1.insert(999, at: 1)  // // Add a new element at the index one. one can be any valid index of the Array.
intArray1.remove(at: 0)  // Removes the element at index 0
intArray1.removeLast()  // Remove last element from the Array.

print("Array \(intArray1)")

intArray1.removeAll()  // Clears the array

// Trying add an element on a unmodifiable Array will throw an exception
// immuttableIntArray1.append(190)
