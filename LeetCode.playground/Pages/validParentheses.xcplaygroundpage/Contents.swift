import Foundation
/// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

func isValid(_ s: String) -> Bool {
    guard s.count > 1 else { return false }
    var stack = [String]()
    
    for char in s.map({ String($0) }) {
        switch char {
        case "(", "{", "[":
            stack.append(char)
        case ")":
            if stack.last != "(" { return false }
            stack.removeLast()
        case "}":
            if stack.last != "{" { return false }
            stack.removeLast()
        case "]":
            if stack.last != "[" { return false }
            stack.removeLast()
        default:
            break
        }
    }
    
    return stack.isEmpty
}

isValid("(]")
