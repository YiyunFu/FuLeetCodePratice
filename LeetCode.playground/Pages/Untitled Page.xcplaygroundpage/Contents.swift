
import Foundation

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here

//    var dict = [Int:Int]()
//    a.forEach({ dict[$0] = (dict[$0] ?? 0) + 1 })
//    return dict.first(where: { $0.value == 1 })?.key ?? 0
    return 2 * Set(a).reduce(0, +) - a.reduce(0, +) // O(2n-1)
}

lonelyinteger(a: [1,2,3,4,3,2,1])
//lonelyinteger(a: [2,3,3,4,5,4,5,1,2])
