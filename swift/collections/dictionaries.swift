var intMap0: [Int: Int] = [:]  // Empty dictionary

let immutableIntMap1 = [1: 2, 2: 3, 3: 4]  // Immutable dictionary
var intMap1 = [1: 2, 2: 3, 3: 4]  // Mutable dictionary

// Most common use caes
intMap1.count  // Number of entries in the dictionary
intMap1.keys  // Returns the keys of the dictionary
intMap1.values  // Returns the values of the dictionary
intMap1.contains {  // Determines if the map contains the key 1
  (key, value) in key == 1
}
intMap1.keys.contains(1)  // Determines if the map contains the key 1

intMap1.contains {  // Determines if the map contains the value 4
  (key, value) in value == 4
}
intMap1.values.contains(4)  // Determines if the map contains the value 4

intMap1.map {  // Interates over the map entries and returns a transformed map.
  (key, value) in
  return [key: value * key]
}

if let index = intMap1.index(forKey: 3) {
  let removed = intMap1.remove(at: index)  // Remove an element which key is equal to 3.
  print(index)  // It is not a simple Integer. Thats because all this paraphernalia is needed
  print(removed)

}

intMap1[1]  // Accesses the value for key 1
intMap1[1] = 678  // Updates the value for key 1
intMap1.removeValue(forKey: 1)  // Removes the entry for key 1, way better than the previous example.
intMap1.removeAll()  // Clears the dictionary
