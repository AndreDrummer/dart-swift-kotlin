import kotlin.collections.mutableMapOf

fun main() {
    var immutableIntMap0 = mapOf<Int, Int>() // Immutable empty map
    val intMap0 = mutableMapOf<Int, Int>() // Mutable empty map

    val immutableIntMap1 = mapOf(1 to 2, 2 to 3, 3 to 4) // Immutable map
    val intMap1 = hashMapOf(1 to 2, 2 to 3, 3 to 4) // Mutable map

    // it also could be declared as mutableMapOf
    // val intMap1 = hashMapOf(1 to 2, 2 to 3, 3 to 4) // Mutable map

    // Most common use caes
    intMap1.size // Number of entries in the map
    intMap1.entries // Returns a Set of entries of the map.
    intMap1.isEmpty() // Returns if the map is empty.
    intMap1.isNotEmpty() // Returns if the map is not empty.
    intMap1.keys // Returns the keys of the map
    intMap1.values // Returns the values of the map
    intMap1.containsKey(1) // Checks if key 1 is present
    intMap1.containsValue(2) // Checks if value 2 is present
    intMap1.remove(1) // Removes the entry with key 1
    intMap1.remove(3, 4) // Remove the entrey where the key and value matches
    intMap1.putIfAbsent(3, 43) // Insert a value if the does not exists yet.
    intMap1.get(2) // Returns the value of key 2.
    intMap1[2] // Returns the value of key 2.
    intMap1[1] = 678 // Updates value for key 1
    intMap1.clear() // Clears the map
}
