import Foundation

//// m, n
//func matchingStrings(strings: [String], queries: [String]) -> [Int] {
//    // Write your code here
//    var answers: [Int] = []
//    for query in queries {
//        answers.append(strings.filter({ $0 == query }).count) // O((m+1)*n)
//    }
//
//    return answers
//}

//// m, n
//func matchingStrings(strings: [String], queries: [String]) -> [Int] {
//    // Write your code here
//    var answer = [Int]()
//    queries.forEach({ answer.append(counterString(string: $0, strings: strings)) }) // O(n)
//    return answer
//}
//
//func counterString(string: String, strings: [String]) -> Int {
//    var count = 0
//    strings.forEach({ if ($0 == string) { count += 1 } })  // O(m)
//    return count
//}

// m, n, time: O(m+n) space: O(m+n)
func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    // Write your code here
    var dict = [String: Int]()
    strings.forEach({ dict[$0] = (dict[$0] ?? 0)+1 })
    
    var result = [Int]()
    queries.forEach({ result.append(dict[$0] ?? 0) })
    return result
}


//matchingStrings(strings: ["ab","ab","abc"], queries: ["ab","abc","bc"])
matchingStrings(strings: [ "aba",
                           "baba",
                           "aba",
                           "xzxb"],
                queries: [ "aba",
                           "xzxb",
                           "ab",
])
