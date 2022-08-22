import Foundation
import Darwin

func merge(_ nums1: [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var a = nums1
    var b = nums2
    var m = m
    var n = n
    while (m+n>0) {
        let index = m+n-1
        if (m > 0 && n > 0) {
            if a[m-1] > b[n-1] {
                a[index] = a[m-1]
                m-=1
            } else {
                a[index] = b[n-1]
                n-=1
            }
        } else if (n > 0) {
            /// a 比完剩下b
            a[index] = b[n-1]
            n-=1
        } else {
            /// b 比完剩下a
            /// 不用重新搬位子
            m-=1
        }
    }
    print(a)
}

merge([0], 0, [1], 1)
