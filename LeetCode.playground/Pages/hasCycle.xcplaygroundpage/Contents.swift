//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    if head?.next == nil || head == nil {
        return false
    }
    
    return hasCycle(head?.next, head?.next?.next)
}

func hasCycle(_ fast: ListNode?, _ slow: ListNode?) -> Bool {
    if fast == nil || slow == nil || fast?.next == nil || slow?.next == nil {
        return false
    }
    
    if fast?.val == slow?.val {
        return true
    }
    
    return hasCycle(slow?.next, fast?.next?.next)
}
