let people: [[String: Any]] = [
  ["name": "André Silva", "age": 26, "marital_status": "Married", "spouse": "Mary Jainne"],
  ["name": "Mary Jainne", "age": 26, "marital_status": "Married", "spouse": "André Silva"],
  ["name": "Frank Sinatra", "age": 37, "marital_status": "Single"],
  ["name": "Sarah Rafferty", "age": 51, "marital_status": "Married", "spouse": "Santtu Seppälä"],
  ["name": "Jon Bon Jovi", "age": 62, "marital_status": "Married", "spouse": "Dorothea Hurley"],
  ["name": "Elon Musk", "age": 52, "marital_status": "Married", "spouse": "Talulah Riley"],
  ["name": "Evellyn Nascimento", "age": 17, "marital_status": "Single"],
  ["name": "Wadson Jesus", "age": 18, "marital_status": "Single"],
  ["name": "Lucas Pereira", "age": 32, "marital_status": "Single"],
  ["name": "Joyce Hasselmann", "age": 36, "marital_status": "Single"],
  ["name": "Gabriela Rocha", "age": 30, "marital_status": "Married", "spouse": "Leandro Moreira"],
]

print("Traverse the list and print out the number married and single people.")
var marriedSingle: [String: Int] = ["single": 0, "married": 0]

for person in people {
  if let maritalStatus: String = person["marital_status"] as? String {
    if maritalStatus == "Single" {
      if let currentSingleCount = marriedSingle["single"] {
        marriedSingle["single"] = currentSingleCount + 1
      }
    } else if maritalStatus == "Married" {
      if let currentMarriedCount = marriedSingle["married"] {
        marriedSingle["married"] = currentMarriedCount + 1
      }
    }
  }

}
print(marriedSingle)

print("\nHow many are over 30 and single and how many are under 30 and married?")
var under30AndMarried: Int = 0
var over30AndSingle: Int = 0

for person in people {
  if let maritalStatus: String = person["marital_status"] as? String,
    let age = person["age"] as? Int
  {
    if maritalStatus == "Single" && age > 30 {
      over30AndSingle += 1
    } else if maritalStatus == "Married" && age < 30 {
      under30AndMarried += 1
    }
  }
}

print("Under 30 and Married \(under30AndMarried)")
print("Over 30 and Single \(over30AndSingle)")

print("\nHow many people in the list are under eighteen?")

var under18: Int = 0

for index in 0..<people.count {
  let person = people[index]
  if let age: Int = person["age"] as? Int {
    if age < 18 { under18 += 1 }
  }
}
print("Amount of people under 18: \(under18)")
