import Foundation

func StringReduction(_ str: String) -> String {
    let string = stringReduction(string: str, index: 0)
//    print("StringReduction: \(string)")
    return String(string.count)
}

func stringReduction(string: String, index: Int) -> String {
//    print("count: \(string.count), index: \(index)")
    if string.count <= index+1 { return string }
    let char: Character = Array(string)[index]
    let nextChar: Character = Array(string)[index+1]
//    print("char: \(char), next: \(nextChar), index: \(index)")
    if char == nextChar { return stringReduction(string: string, index: index+1) }
    let newChar = String(reductionString([char, nextChar]))
    let range = string.range(of: "\(char)\(nextChar)")
    let newString = string.replacingCharacters(in: range!, with: newChar)
//    print("newChar: \(newChar), newString: \(newString)")
    return stringReduction(string: newString, index: 0)
}

func reductionString(_ strings: [Character]) -> String {
    let char: [Character] = ["a","b","c"]
    let set1 = Set(strings.map({ $0 }))
    let set2 = Set(char.map({ $0 }))
    let subtracting = set2.subtracting(set1)
    return subtracting.count >= 1 ? String(subtracting.first!) : ""
}

StringReduction("abcabc")
