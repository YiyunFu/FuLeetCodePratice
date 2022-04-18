//: [Previous](@previous)

import Foundation

func plusMinus(arr: [Int]) {
    let count: Double = Double(arr.count)
    let positives: Double = Double(arr.filter({ $0 > 0}).count)
    let negatives: Double = Double(arr.filter({ $0 < 0 }).count)
    let zeros: Double = Double(arr.filter({ $0 == 0 }).count)
    print(String(format: "%.6f %.6f %.6f", positives/count, negatives/count, zeros/count))
}

plusMinus(arr: [-4,3,-9,0,4,1])
