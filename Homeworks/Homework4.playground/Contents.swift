import UIKit

// Задание 1
print("Задание 1")

enum Season {
    case winter
    case spring
    case summer
    case autumn
}

// Задание 2
print("\nЗадание 2")

func season(for month: Int) -> Season? {
    switch month {
    case 1, 2, 12:
        return .winter
    case 3, 4, 5:
        return .spring
    case 6, 7, 8:
        return .summer
    case 9, 10, 11:
        return .autumn
    default:
        return nil
    }
}

if let season = season(for: 4) {
    switch season {
    case .winter:
        print("Зима")
    case .spring:
        print("Весна")
    case .summer:
        print("Лето")
    case .autumn:
        print("Осень")
    }
} else {
    print("Некорректный номер месяца")
}

// Задание 3
print("\nЗадание 3")

func countNils(_ strings: String?...) -> (nilCounter: Int, resultString: String) {
    var resultString = String()
    var counter = 0
    for string in strings {
        if let value = string {
            resultString += value
        }
        else { 
            counter += 1
        }
    }
    return (counter, resultString)
}

let result = countNils(nil, "Swift", nil, "study", nil)
print("Количество nil: \(result.nilCounter)")

// Задание 4
print("\nЗадание 4")

var optionalString: String? = "Hello, World!"
if let unwrappedString = optionalString {
    print(unwrappedString)
}
else {
    print("optionalString is nil")
}

let forcedString: String = optionalString!
print(forcedString)

let defaultString: String = optionalString ?? "default value"
print(defaultString)

@MainActor
func printOptionalString() {
    guard let unwrappedString = optionalString else {
        print("optionalString is nil")
        return
    }
    print(unwrappedString)
    
}
printOptionalString()
