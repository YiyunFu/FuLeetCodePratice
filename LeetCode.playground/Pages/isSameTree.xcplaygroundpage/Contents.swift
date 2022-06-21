//: [Previous](@previous)

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    print("p: \(p?.val ?? 0), q: \(q?.val ?? 0)")
    if p?.val != q?.val { return false }
    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
}

isSameTree(TreeNode(1, TreeNode(2), TreeNode(3)),TreeNode(1, TreeNode(2), nil))
