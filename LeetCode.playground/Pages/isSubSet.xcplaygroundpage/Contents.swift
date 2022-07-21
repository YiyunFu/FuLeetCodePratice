
import Foundation

func isSubset(_ a: [String], _ b: [String]) -> Bool {
    return Set(b).isSubset(of: Set(a))
}

isSubset(["A","B","C","D","E"], ["A","E","D"]) // = true
//isSubset(["A","B","C","D","E"], ["A","D","Z"]) // = false
//isSubset(["A","D","E"], ["A","A","D","E"]) //= true
