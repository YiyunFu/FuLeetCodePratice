import Foundation

func firstMissingPositive(_ nums: [Int]) -> Int {
    guard false == nums.isEmpty else { return 1 }
    let set = Set(nums)
    guard var max = set.max(), max > 0 else { return 1 }
    var index = 1
    while index < max {
        if !set.contains(index) {
            return index
        }
        
        index += 1
    }
    
    return index+1
}

firstMissingPositive([3,5,1])
