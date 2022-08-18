//: [Previous](@previous)

import Foundation
import UIKit
func getGroupedAnagrams(words: [String]) -> Int {
    var counts = [[String]]()
    words.forEach { string in
        if let index = counts.firstIndex(where: { $0.first?.count == string.count }) {
            counts[index].append(string)
        } else {
            counts.append([string])
        }
    }
    return counts.count + counts.compactMap({ getGroupedAnagram($0) }).reduce(0, +)
}

func getGroupedAnagram(_ words: [String]) -> Int {
    let sets = words.compactMap({ Set($0) })
    let anagrams = sets.dropFirst().filter({ $0 != sets.first })
    return anagrams.count
}

//getGroupedAnagrams(words: ["inch", "cat", "chin", "kit", "act"])


var a : Int? = nil
a? = 10
//print(a)

//let frame = CGRect.zero
//frame.width *= 2

enum test {
    case one,two,three
}

switch test.two {
case .two:
    print("two")
default:
    break
}
