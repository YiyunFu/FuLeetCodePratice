import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var m = m
    var n = n
    while m+n > 0 {
        let index = m+n-1
        if m>0 && n>0 { // 都還沒比完
            if nums1[m-1] > nums2[n-1] {
                nums1[index] = nums1[m-1]
                m-=1
            } else {
                nums1[index] = nums2[n-1]
                n-=1
            }
        } else if n > 0 { // b 還沒比完，放到a，下一位
            nums1[index] = nums2[n-1]
            n-=1
        } else { // a 還沒比完，不用換位子直接下一位
            m-=1
        }
    }
}

func mergeSortedArray(_ nums1: [Int], _ nums2: [Int]) {
    var num1 = nums1 + [Int](repeating: 0, count: nums2.count)
    var m = nums1.count
    var n = nums2.count
    
    while m+n > 0 {
        let index = m+n-1
        if m > 0 && n > 0 {
            if num1[m-1] > nums2[n-1] {
                num1[index] = num1[m-1]
                m-=1
            } else {
                num1[index] = nums2[n-1]
                n-=1
            }
        } else if n > 0 {
            num1[index] = nums2[n-1]
            n-=1
        } else {
            m-=1
        }
    }
    print(num1)
}

mergeSortedArray([12], [1,5,8,9,16])
