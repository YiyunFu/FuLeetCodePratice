import Foundation

func superDigit(n: String, k: Int) -> Int {
    // Write your code here
    let first: Int = Array(n).map({ $0.wholeNumberValue ?? 0 }).reduce(0, +)
    var sum = first * k

    while sum/10 >= 1 {
        sum = Array(String(sum)).map({ $0.wholeNumberValue ?? 0 }).reduce(0, +)
    }

    return sum
}

superDigit(n: "148", k: 3)
