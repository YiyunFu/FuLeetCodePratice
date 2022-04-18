import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    let n = arr.count
    var left = 0
    var right = 0
    for i in 0..<n {
        left += arr[i][i]
        right += arr[i][n-1-i]
    }
        
    return abs(left-right)
}

diagonalDifference(arr: [[11,2,4],[4,5,6],[10,8,-12]])
