import Foundation

// Iterative
//func search(_ nums: [Int], _ target: Int) -> Int {
//    var l = 0, u = nums.count-1
//    while l<=u {
//        var m = (l+u)/2
//        if target == nums[m] { return m }
//        else if target < nums[m] { u = m-1 }
//        else if target > nums[m] { l = m+1 }
//    }
//
//    return -1
//}

// Recursive
func search(_ nums: [Int], _ target: Int) -> Int {
    return binarySearch(a: nums, l: 0, u: nums.count-1, k: target)
}

func binarySearch(a: [Int], l: Int, u: Int, k: Int) -> Int {
    if l <= u {
        let m = (l+u)/2
        if k == a[m] { return m }
        if k < a[m] { return binarySearch(a: a, l: l, u: m-1, k: k) }
        if k > a[m] { return binarySearch(a: a, l: m+1, u: u, k: k) }
    }
    
    return -1
}

search([-1,0,3,5,9,12], 13)
