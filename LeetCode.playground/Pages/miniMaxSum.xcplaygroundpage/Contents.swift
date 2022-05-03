import Foundation

func miniMaxSum(arr: [Int]) {
    // Write your code here
    
//    let sorted = arr.sorted() // O(nlogn)
//    let min = sorted[0..<sorted.count-1].reduce(0, +) // O(n)
//    let max = sorted[1..<sorted.count].reduce(0, +) // O(n)
//    print(min, max)
    
    let sum = arr.reduce(0, +) // O(n)
    let min = sum - (arr.max() ?? 0) // O(n)
    let max = sum - (arr.min() ?? 0) // O(n)
    print(min,max)
}

miniMaxSum(arr: [1,3,5,7,9])
