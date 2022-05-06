import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
//    let n = arr.count
//    var left = 0
//    var right = 0
//    for i in 0..<n {
//        left += arr[i][i]
//        right += arr[i][n-1-i]
//    }
//
//    return abs(left-right)
    var result = 0
    for i in 0..<arr.count {
        result += (arr[i][i] - arr[i][arr.count-1-i])
    }
    
    return abs(result)
}

diagonalDifference(arr: [[11,2,4],[4,5,6],[10,8,-12]])
