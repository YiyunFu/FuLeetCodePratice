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

func CaesarCipher(_ str: String, _ num: Int) -> String {
  let alphabetString = "abcdefghijklmnopqrstuvwxyz"
  var map: [String: String] = [:]
  let arr = Array(alphabetString)
  for i in 0..<arr.count {
    let alphabet = String(arr[i])
    let encrypted = String(arr[(i+num)%26])
    map[alphabet] = encrypted
  }

  let result = Array(str).map({ char in
          if let encryptedChar = map[String(char)] {
            return encryptedChar
        }
        else if let encryptedChar = map[String(char).lowercased()] {
            return encryptedChar.uppercased()
        }
        return String(char)
  }).joined()
  print(result)
  return str
}

//: [Next](@next)

//caesarCipher(s: "www.abc.xy", k: 87)
CaesarCipher("fuyiyun", 851206)
