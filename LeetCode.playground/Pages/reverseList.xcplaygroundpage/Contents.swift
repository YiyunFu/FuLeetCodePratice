//: [Previous](@previous)

import Foundation

public class ListNode {
    public var head: [Int] = []
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
    
    public init?(head: [Int]) {
        if head.count < 1 { return nil }
        self.val = head.first!
        self.head = head
        print("head: \(head)")
        self.next = ListNode(head: Array(head[1..<head.count]))
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }
    if head?.next == nil {
        print("head: \(head?.val), next: \(head?.next?.val)")
        return head
    }
    let newHead = reverseList(ListNode(head!.next!.val, next: head))
    print("newHead: \(newHead?.val), next: \(newHead?.next?.val)")
    return newHead
}


print(reverseList(ListNode(head: [1,2]))?.head)
