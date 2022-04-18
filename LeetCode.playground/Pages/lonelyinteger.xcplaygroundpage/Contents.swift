import Foundation

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    var arr: [[Int]] = []
    for int in a {
        if (arr.contains(where: { $0.contains(int) })) {
            continue
        }
        let sam = a.filter({ $0 == int })
        arr.append(sam)
    }
    
    return arr.first(where: {$0.count == 1})?.first ?? 0
}

lonelyinteger(a: [1,2,3,4,3,2,1])
