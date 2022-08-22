import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    for (idx, num) in nums.enumerated() {
        let other = target-num
        if let last = dict[other] {
            return [last, idx]
        }
        dict[num] = idx
        print(dict)
    }
    return [0]
}

twoSum([2,7,11,15], 9)
