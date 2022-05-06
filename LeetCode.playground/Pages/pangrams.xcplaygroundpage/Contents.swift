import Foundation

//func pangrams(s: String) -> String {
//    // Write your code here
//    var alphas = [String: Int]()
//    for char in Array(s) {
//        let key = String(char).lowercased()
//        alphas[key] = (alphas[key] ?? 0) + 1
//    }
//    // 26 alphabet and space
//    return alphas.count != 27 ? "not pangram" : "pangram"
//}

func pangrams(s: String) -> String {
    // Write your code here
    return Set(Array(s.lowercased().replacingOccurrences(of: " ", with: ""))).count == 26 ? "pangram" : "not pangram"
}

pangrams(s: "We promptly judged antique ivory buckles for the next prize")
pangrams(s: "We promptly judged antique ivory buckles for the prize")
pangrams(s: "qmExzBIJmdELxyOFWv LOCmefk TwPhargKSPEqSxzveiun")
