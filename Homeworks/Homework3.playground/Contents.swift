import UIKit

//Задание 1
print("Задание 1")

func greeting() -> () {
    print( "Hello, world!" )
}
greeting()

func nameGreeting(_ name: String) -> () {
    print("Hello, \(name)!")
}
nameGreeting("Ваня")

func strNameGreeting(_ name: String) -> String {
    return "Hello, \(name)!"
}
print(strNameGreeting("Ваня"))

//Задание 2
print("\nЗадание 2")

func lengthOf2Strings(_ string1: String, _ string2: String) -> Int {
    return string1.count + string2.count
}
print(lengthOf2Strings("Hello", "world"))

//Задание 3
print("\nЗадание 3")

func sqrNumber(_ number: Int) -> Int {
    return number * number
}
print(sqrNumber(3))

//Задание 4
print("\nЗадание 4")

let sumNumbers: (Int, Int) -> Int = { $0 + $1 }
let subNumbers: (Int, Int) -> Int = { $0 - $1 }
let mulNumbers: (Int, Int) -> Int = { $0 * $1 }
let divNumbers: (Int, Int) -> Double = { Double($0) / Double($1) }

print(sumNumbers(20, 10))
print(subNumbers(20, 10))
print(mulNumbers(20, 10))
print(divNumbers(20, 10))

//Задание 5
print("\nЗадание 5")

func sqrCircle(_ r: Double) -> Double {
    return 3.14159265 * r * r
}

print(sqrCircle(5))

//Задание 6
print("\nЗадание 6")

func isNightToday(_ isNight: Bool) -> String {
    if isNight {
        return "Сейчас ночь"
    }
    else {
        return "Сейчас день"
    }
}

print(isNightToday(true))

//Задание 7
print("\nЗадание 7")

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    else {
        for i in 2...Int(sqrt(Double(number))){
            if number % i == 0 {
                return false
            }
        }
    }
    return true
}

print(isPrime(13))

//Задание 8
print("\nЗадание 8")

func timeOfYear(_ month: Int) -> String {
    switch month {
    case 1, 2, 12:
        return "Зима"
    case 3...5:
        return "Весна"
    case 6...8:
        return "Лето"
    case 9...11:
        return "Осень"
    default:
        return "Неверный номер месяца"
    }
}

print(timeOfYear(2))


//Задание 9
print("\nЗадание 9")
func factorial(_ number: Int) -> Int {
    if number <= 1 {
        return 1
    }
    else {
        return number * factorial(number - 1)
    }
}
print(factorial(5))


//Задание 10
print("\nЗадание 10")

func fibonacci(_ number: Int) -> [Int] {
    var arrayNumber: [Int] = [0, 1, 1]
    for i in 3...number {
        arrayNumber.append(arrayNumber[i - 1] + arrayNumber[i - 2])
    }
    return arrayNumber
}
print(fibonacci(6))

//Задание 11
print("\nЗадание 11")

func sumOfDigits(_ number: Int) -> Int {
    var result: Int = 0
    for i in String(number) {
        result += Int(String(i))!
    }
    return result
}
print(sumOfDigits(123))


// Доп. задание 1
print("\nДоп. задание 1")

let arrayNumbers: [Int] = [1, 3, 6, 9, 8, 4, 2]

let strArrayNumber: [String] = arrayNumbers.map { String($0) }

print(strArrayNumber)

// Доп. задание 2
print("\nДоп. задание 2")

let evenArrayNumber: [Int] = arrayNumbers.filter { $0 % 2 == 0 }
print(evenArrayNumber)

// Доп. задание 3
print("\nДоп. задание 3")

let indexArrayNumber: [String] = arrayNumbers.enumerated().map { index, number in
    return  "Индекс: \(index+1), Число: \(number)"
}
print(indexArrayNumber)

// Доп. задание 4
print("\nДоп. задание 4")

let arrayStr: [String] = ["Яблоко", "Апельсин", "Груша", "Банан", "Лимон", "Сок"]
let upperArrayStr: [String] = arrayStr.map { $0.uppercased() }
print(upperArrayStr)

// Доп. задание 5
print("\nДоп. задание 5")

let arrayCountOf5: [String] = arrayStr.filter { $0.count > 5 }
print(arrayCountOf5)

// Доп. задание 6
print("\nДоп. задание 6")

let evenOddArray: [String] = arrayNumbers.map { number in
    return number % 2 == 0 ? "Чётное" : "Нечётное"
}

print(evenOddArray)

// Доп. задание 7
print("\nДоп. задание 7")

let spaceStr: String = arrayStr.joined(separator: " ")
print(spaceStr)
