import Foundation
func isPalindrome(_ x: Int) -> Bool {
    let characters: [String] = String(x).map({ String($0) })
    let half = characters.count/2
    let char1 = characters[0..<half].joined()
    let char2 = characters[half..<characters.count].reversed().joined()
    if (char1.count == char2.count) {
        return char1 == char2
    }
    
    return char1 == (char2 as NSString).substring(to: char2.count-1)
}

isPalindrome(121)
