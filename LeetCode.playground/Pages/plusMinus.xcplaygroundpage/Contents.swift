//: [Previous](@previous)

import Foundation

func plusMinus(arr: [Int]) {
    let count: Double = Double(arr.count)
    var positives: Double = 0
    var negatives: Double = 0
    var zeros: Double = 0
    for arranged in arr {
        if arranged == 0 {
            zeros += 1
        } else if arranged > 0 {
            positives += 1
        } else if arranged < 0 {
            negatives += 1
        }
    }
    print(String(format: "%.6f\n%.6f\n%.6f", positives/count, negatives/count, zeros/count))
}

plusMinus(arr: [-4,3,-9,0,4,1])
