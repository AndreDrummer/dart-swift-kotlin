enum class MaritalStatus {
    single,
    marriage
}

val dataset: List<Map<String, Any>> =
        listOf(
                mapOf(
                        "name" to "André Silva",
                        "age" to 26,
                        "marital_status" to MaritalStatus.marriage,
                        "spouse" to "Marry Jainne"
                ),
                mapOf(
                        "name" to "Marry Jainne",
                        "age" to 26,
                        "marital_status" to MaritalStatus.marriage,
                        "spouse" to "André Silva"
                ),
                mapOf(
                        "name" to "Frank Sinatra",
                        "age" to 37,
                        "marital_status" to MaritalStatus.single
                ),
                mapOf(
                        "name" to "Sarah Rafferty",
                        "age" to 51,
                        "marital_status" to MaritalStatus.marriage,
                        "spouse" to "Santtu Seppälä"
                ),
                mapOf(
                        "name" to "Bon Jovi",
                        "age" to 62,
                        "marital_status" to MaritalStatus.marriage,
                        "spouse" to " Dorothea Hurley"
                ),
                mapOf(
                        "name" to "Elon Musk",
                        "age" to 53,
                        "marital_status" to MaritalStatus.marriage,
                        "spouse" to "Talulah Riley"
                ),
                mapOf(
                        "name" to "Evellyn Nascimento",
                        "age" to 17,
                        "marital_status" to MaritalStatus.single
                ),
                mapOf(
                        "name" to "Wadson Jesus",
                        "age" to 18,
                        "marital_status" to MaritalStatus.single
                ),
                mapOf(
                        "name" to "Lucas Pereira",
                        "age" to 33,
                        "marital_status" to MaritalStatus.single
                ),
                mapOf(
                        "name" to "Joyce Hasselmann",
                        "age" to 36,
                        "marital_status" to MaritalStatus.single
                ),
                mapOf(
                        "name" to "Gabriela Rocha",
                        "age" to 30,
                        "marital_status" to MaritalStatus.marriage,
                        "spouse" to "Leandro Moreira"
                ),
        )

fun main() {
    val peopleDataset = dataset

    println("Traverse the list and print out the number married and single people.")
    val marriedSingle: MutableMap<MaritalStatus, Int> =
            mutableMapOf(MaritalStatus.single to 0, MaritalStatus.marriage to 0)

    val marriage = MaritalStatus.marriage
    val single = MaritalStatus.single

    for (person in peopleDataset) {
        // for (final person in peopleDataset) { in dart
        val maritalStatus = person.get("marital_status")

        if (maritalStatus == MaritalStatus.single) {
            marriedSingle[single] = marriedSingle[single]!! + 1
        } else if (maritalStatus == MaritalStatus.marriage) {
            marriedSingle[marriage] = marriedSingle[marriage]!! + 1
        }
    }

    println("Result")
    println("Married: ${marriedSingle.get(marriage)}")
    println("Single: ${marriedSingle.get(single)}\n")

    println(
            "How many of these people are over 30 and single and how many of them are under 30 and married?"
    )
    var marriedUnder30: Int = 0
    var singleOver30: Int = 0

    // Just to vary the for loop manner
    for (index in 1 ..< peopleDataset.size) {
        // for (final index = 1; index <= peopleDataset.size; index++) { in dart
        val person = peopleDataset[index]
        val maritalStatus = person.get("marital_status")
        val age = person.get("age") as Int

        if (maritalStatus == MaritalStatus.single && age > 30) {
            singleOver30++
        } else if (maritalStatus == MaritalStatus.marriage && age < 30) {
            marriedUnder30++
        }
    }

    println("Output")
    println("Married Under 30: $marriedUnder30")
    println("Single Over 30: $singleOver30\n")

    println("How many people in the list are under eighteen?")
    var under18: Int = 0

    // Rever traversal
    for (index in peopleDataset.size - 1 downTo 0) {
        // for(final index = peopleDataset.length - 1; i >= 0; i--) { in dart
        val person = peopleDataset.elementAt(index)
        val age = person.get("age") as Int

        if (age < 18) under18++
    }

    println("Output")
    println("Amount of People Under 18: $under18")
}
