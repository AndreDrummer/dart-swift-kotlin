import 'dart:collection';

void main() {
  // Empty Map
  var intMap0 = {};
  Map intMap01 = <int, int>{};
  Map<int, int> intMap02 = <int, int>{};

  // Filled Lists
  var intMap1 = {1: 2, 2: 3, 3: 4};
  Map intMap12 = <int, int>{1: 2, 2: 3, 3: 4};
  Map<int, int> intMap13 = <int, int>{1: 2, 2: 3, 3: 4};

  var c = UnmodifiableMapView(intMap1); // Modifiable via seed (intMap1)
  var d = Map.unmodifiable(intMap1); // Rigid unmodifiable

  print("UnmodifiableMapView $c");
  print("Map.unmodifiable $d");

  intMap1.putIfAbsent(100, () => 200);

  print("UnmodifiableListView $c");
  print("Map.unmodifiable $d");

  // Most common use caes
  intMap13.length; // Returns the number of entries of the map.
  intMap13.entries; // Returns an Iterable of entries of the map.
  intMap13.isEmpty; // Returns if the map is empty.
  intMap13.isNotEmpty; // Returns if the map is not empty.
  intMap13.keys; // Returns the list of keys of the map.
  intMap13.values; // Returns the list of values of the map.
  intMap13.addAll({}); // Adds all elements of another map inside the map.
  intMap13.clear(); // Clear the map.
  intMap13.containsKey(1); // Determines if the map contains a key;
  intMap13.containsValue(1); // Determines if the map contains a value;
  intMap13.map((k, v) => MapEntry(v, k)); // Interates over the map entries and returns a new map.
  intMap13.remove(1); // Remove an element which key is equal to 1.
  intMap13.removeWhere((k, v) => k == v); // Remove an element which key is equal to value.
  intMap13.putIfAbsent(3, () => 43); // Insert a value if the does not exists yet.
  intMap13[1]; // Returns the value of key 1.
  intMap13[1] = 678; // Updates the map value for the entry with key equal to 1.
}
