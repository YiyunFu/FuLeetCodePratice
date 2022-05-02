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

var answer: [Int] = []

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    inorder(root)
    return answer
}

func inorder(_ root: TreeNode?) {
    guard let root = root else { return }
    inorder(root.left)
    answer.append(root.val)
    inorder(root.right)
}

var root: TreeNode = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(5)), TreeNode(7, TreeNode(10), nil))
inorderTraversal(root)
