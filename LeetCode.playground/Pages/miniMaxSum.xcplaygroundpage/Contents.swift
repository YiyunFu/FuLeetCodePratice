import Foundation

func miniMaxSum(arr: [Int]) -> [Int] {
    // Write your code here
    let sorted = arr.sorted()
    let min = sorted[0..<sorted.count-1].reduce(0, +)
    let max = sorted[1..<sorted.count].reduce(0, +)
    return [min, max]
}

miniMaxSum(arr: [1,3,5,7,9])
