import Cocoa

var greeting = "Hello, playground"

//1

func factorialValue(number: Int) -> Int{
    if number == 0{
        return 1
    } else {
        return number * factorialValue(number:number-1)
    }
}
var value = 4
var output = factorialValue(number: value)
print("Number is \(value)")
print("the factorial is \(output)")


//2
func generateFibonacciSequence (upTo n: Int) -> [Int] {
    var sequence = [0, 1]
    while sequence.count < n {
        let nextNumber =
        sequence[sequence.count - 1] +
        sequence[sequence.count - 2]
        sequence.append(nextNumber)
    }
    return sequence
}
let fibonacciSequance = generateFibonacciSequence (upTo: 20)
print (fibonacciSequance)

//3
func isPalindrome(_ userString: String) -> Bool {
    
    let characters = Array(userString.lowercased())
    var initialIndex = 0
    var finalIndex = characters.count - 1
    while initialIndex < finalIndex {
        if characters[initialIndex] != characters[finalIndex] {
            return false
        }
        initialIndex += 1
        finalIndex -= 1
    }
    return true
}

//4

func squareNumbersInArray(numbers: [Int]) -> [Int] {
    var squaredNumbers = [Int]()
    
    for number in numbers {
        let squared = number * number
        squaredNumbers.append(squared)
    }
    
    return squaredNumbers
}

let numbers = [1, 2, 3]
let squaredNumbers = squareNumbersInArray(numbers: numbers)
print(squaredNumbers)

//5
func wordFrequencyInString(_ inputString: String) -> [String: Int] {
    var wordFrequency = [String: Int]()
    let words = inputString.split(separator: " ")
    
    for word in words {
        let wordStr = String(word)
        if let count = wordFrequency[wordStr] {
            wordFrequency[wordStr] = count + 1
        } else {
            wordFrequency[wordStr] = 1
        }
    }
    
    return wordFrequency
}

let inputString = "This is very hard task, finally I did it, i think it is correct"
let frequencyDictionary = wordFrequencyInString(inputString)
print(frequencyDictionary)

//6
let decimalToBinary: (Int) -> String = {
    decimal in
    var binary = ""
    var num = decimal
    while num > 0 {
        let reminder = num % 2
        binary = "\(reminder) + binary"
        num = num / 2
        
    }
    return binary
    
}
let decimalNumber = 20
print (decimalToBinary(decimalNumber))

//7
var numb = [1, 2, 3, 4, 5, 6, 7, 8]
var filterNumber = numb.filter { $0 % 2 == 0}

print(filterNumber)

//8
let intNums = [1, 2, 3, 4, 5]

let increasedNumbers = intNums.map { $0 * 10 }
print(increasedNumbers)

//9
func sumArrayAfterDelay(_ numbers: [Int], completion: @escaping (Int) -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 3.0) {
        let sum = numbers.reduce(0, +)
        completion(sum)
    }
}
let ages = [25, 20, 30, 35]
sumArrayAfterDelay(ages){
    sum in print(sum)
}

//10

func filterOddIndexedElements(_ inputArray: [String]) -> [String] {
    let filteredArray = inputArray.enumerated().compactMap { (index, element) in
        return index % 2 != 0 ? element : nil
    }
    return filteredArray
}

let stringArray = ["Apple", "Banana", "Cherry", "Orange"]

let resultArray = filterOddIndexedElements(stringArray)
print(resultArray)
