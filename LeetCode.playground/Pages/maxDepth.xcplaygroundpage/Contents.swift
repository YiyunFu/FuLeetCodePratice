//: [Previous](@previous)

import Foundation
import Darwin

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

func maxDepth(_ root: TreeNode?) -> Int {
    if root?.val == nil { return 0}
    return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
}

func maxDepth(_ array: [Int?]) -> Int {
    let log = log2(Double(array.count))
    return Int(round(log))
}

//maxDepth(TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7))))
maxDepth(TreeNode(1, nil, TreeNode(2)))
