import Foundation
func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else { return false } // 負數一定不是
    var xCopy = x, reverse = 0
    while xCopy != 0 { // O(n)
        let remainder: Int
        (xCopy, remainder) = xCopy.quotientAndRemainder(dividingBy: 10)
        reverse *= 10
        reverse += remainder
        print("xCopy: \(xCopy), revers: \(reverse)")
    }
    return x == reverse
}

//func isPalindrome(_ x: Int) -> Bool {
//    return String(x) == String(String(x).reversed())
//    /// String.init(_ value: T): O(n)
//    /// reversed: O(1)
//    /// String.init(_ characters: S): O(n)
//    /// O(2n+1)
//}

isPalindrome(123456)
