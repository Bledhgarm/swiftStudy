import UIKit

// 1 задание
print("1 задание")

let array1 = Array(0..<14)
let array2 = Array(14...30)
let generalArray = array1 + array2
print(generalArray)

// 2 задание
print("\n2 задание")
let numbers = Array(1...5)

func sqrNumbers(_ numbers: [Int]) -> [Int] {
    var result = [Int]()
    for number in numbers {
        result.append(number * number)
    }
    return result
}
print(sqrNumbers(numbers))

// 3 задание
print("\n3 задание")

func evenNumbers(_ numbers: [Int]) -> [Int] {
    return numbers.filter { $0 % 2 == 0 }
}
print(evenNumbers(numbers))

// 4 задание
print("\n4 задание")

let fightClubTuple = (title: "Бойцовский клуб", author: "Чак Паланик", year: 1999)

func printBookInfo(title: String, author: String, year: Int) {
    print("Книга \(title) автором \(author) издана в \(year) году")
}

printBookInfo(title: fightClubTuple.0, author: fightClubTuple.1, year: fightClubTuple.2)

// 5 задание
print("\n5 задание")

var arrayOfFilms: [String] = ["Под покровом ночи", "Тьма", "Матрица", "Машинист", "Выживший"]
arrayOfFilms.append("Реквием по мечте")
arrayOfFilms.removeFirst()
print(arrayOfFilms)

for (index, film) in arrayOfFilms.enumerated() {
    print("\(index + 1). \(film)")
}

// 6 задание
print("\n6 задание")

var countryCapitalDict: [String: String] = ["Беларусь": "Минск", "Россия": "Москва", "Украина": "Киев"]
countryCapitalDict["Германия"] = "Берлин"
countryCapitalDict["Франция"] = "Париж"
countryCapitalDict["Польша"] = "Варшава"

@MainActor
func getCapital(country: String) -> String {
    if let capital = countryCapitalDict[country] {
        return capital
    }
    else {
        return "Столица не найдена"
    }
}

print(getCapital(country: "Россия"))

// 7 задание
print("\n7 задание")

let favouriteFruits: Set<String> = ["Банан", "Манго", "Ананас"]
let homeFruits: Set<String> = ["Банан", "Яблоко"]
let homeFavouriteFruits: Set<String> = favouriteFruits.intersection(homeFruits)
print(homeFavouriteFruits)
let fruitsNotHome: Set<String> = favouriteFruits.subtracting(homeFruits)
print(fruitsNotHome)

// 8 Задание
print("\n8 Задание")

func areEqual<T: Equatable>(_ a: T, _ b: T) -> Bool {
    return a == b
}

print(areEqual(10, 20))
print(areEqual(20, 20))
print(areEqual("Hi", "Hi"))
print(areEqual(true, true))
print(areEqual(true, false))

let caloriesDict: [String: Int] = ["Яблоко": 49, "Банан": 105, "Апельсин": 52]

let filteredDict: [String: Int] = caloriesDict.filter { $0.value > 50 }

print(filteredDict)

let set: Set<Int> = [1, 2, 3, 4, 5]

let doubleSet = set.map { $0 * 2 }
print(doubleSet)
