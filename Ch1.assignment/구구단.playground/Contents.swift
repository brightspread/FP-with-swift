import Foundation

func printTimesTable(num: Int, until max: Int) {
    printTimes(num: num, until: max)
}

func printTimes(num: Int, until max: Int, initialValue value: Int = 1) {
    guard value <= max else { return }
    print("\(num) * \(value) = \(num * value)")
    printTimes(num: num, until: max, initialValue: value + 1)
}

printTimesTable(num: 3, until: 9)
