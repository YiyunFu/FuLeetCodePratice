//: [Previous](@previous)

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    return addBinary(a: Array(a), b: Array(b), index: 0, carrying: "0")
}

func addBinary(a: [Character], b: [Character], index: Int, carrying: Character) -> String {
    guard index < a.count || index < b.count else {
        return carrying != "0" ? "\(carrying)" : ""
    }
    
    var onesCount = 0
    if (index<a.count ? a[a.count-1-index] : "0") == "1" { onesCount += 1 }
    if (index<b.count ? b[b.count-1-index] : "0") == "1" { onesCount += 1 }
    if carrying == "1" { onesCount += 1 }
    
    // 1+0+0 = 01, 1+1+0 = 10, 1+1+1 = 11
    let sum: Character = onesCount%2==1 ? "1" : "0"
    let carry: Character = onesCount>=2 ? "1" : "0"
//    print("onesCount: \(onesCount), a: \(index<a.count ? a[a.count-1-index] : "0"), b: \(index<b.count ? b[b.count-1-index] : "0"), sum:\(sum), carry: \(carry)")

    return "\(addBinary(a: a, b: b, index: index+1, carrying: carry))\(sum)"
}

addBinary("1010", "1011")
