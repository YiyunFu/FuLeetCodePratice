//: [Previous](@previous)

import Foundation

func caesarCipher(s: String, k: Int) -> String {
    // Write your code here
    let originalAlphabet = "abcdefghijklmnopqrstuvwxyz"
    var encryptedMap: [String:String] = [:]
    let arr = Array(originalAlphabet)
    for i in 0..<arr.count {
        let alphabet: String = String(arr[i])
        let encrypted: String = String(arr[(i+k)%26])
        encryptedMap[alphabet] = encrypted
    }
    
    let result: String = Array(s).map({ char in
        if let encryptedChar = encryptedMap[String(char)] {
            return encryptedChar
        }
        else if let encryptedChar = encryptedMap[String(char).lowercased()] {
            return encryptedChar.uppercased()
        }
        return String(char)
    }).joined()
    return result
}
//: [Next](@next)

caesarCipher(s: "www.abc.xy", k: 87)
