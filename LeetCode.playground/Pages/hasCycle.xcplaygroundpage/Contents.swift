//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
    
    public init?(head: [Int], pos: Int = -1) {
        if head.count < 1 { return nil }
        self.val = head.first!
        self.next = ListNode(head: Array(head[1..<head.count]))
        if pos > -1 {
            
        }
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    if head == nil {
        return false
    }
    
    var slow: ListNode? = head
    var fast: ListNode? = head

    while fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast {
            return true
        }
    }

    return false
}

//hasCycle(ListNode(head: [-21,10,17,8,4,26,5,35,33,-7,-16,27,-12,6,29,-12,5,9,20,14,14,2,13,-24,21,23,-21,5]))
//hasCycle(ListNode(head: [3,2,0,-4]))
let head3 = ListNode(3)
let head2 = ListNode(2)
let head0 = ListNode(0)
let head4 = ListNode(-4)
head3.next = head2
head2.next = head0
head0.next = head4
head4.next = head2
hasCycle(head3)
