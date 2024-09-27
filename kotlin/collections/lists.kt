fun main() {

    var intList0: MutableList<Int> = mutableListOf<Int>() // Mutable empty list
    var immutableIntList0: List<Int> = listOf<Int>() // Immutable empty list

    // update values by indices, but won't let add or remove elements.
    var fixedSize: Array<Int> = arrayOf<Int>()

    val noExplicitType1 = mutableListOf(5, 4, 6, 533, 32) // Mutable list

    val intList1: MutableList<Int> = mutableListOf(5, 4, 6, 533, 32) // Mutable list
    val immutableIntList1: List<Int> = listOf(5, 4, 6, 533, 32) // Immutable list

    // Most common use caes
    intList1.size // Returns the number of elements in the list
    intList1.first() // Returns the first element of the list
    intList1.last() // Returns the last element of the list
    intList1.isEmpty() // Returns true if the list is empty
    intList1.isNotEmpty() // Returns true if the list is not empty
    intList1.filter { it > 2 } // Filters elements greater than 2
    intList1.map { it * 2 } // Doubles each element
    intList1.forEach { // Iterate over the list and perform action.
        println(it)
    }
    intList1.add(1) // Adds an element to the end
    intList1.add(
            0,
            1
    ) // Add a new element at the index zero. Zero can be any valid index of the list.
    intList1.removeAt(0) // Removes the element at index 0
    intList1.remove(5) // Remove element 5 from the list. 5 can be any valid element of the list.
    intList1.removeLast() // Removes the last element
    intList1.clear() // Clears the list
}
