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

func isSymmetric(_ root: TreeNode?) -> Bool {
//    return false
    return isMirror(root, root)
}

func isMirror(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    if root1?.val != root2?.val {
        print("isMirror: false")
        return false
    }
    let isMirror =  isMirror(root1?.left, root2?.right) && isMirror(root1?.right, root2?.left)
    print("isMirror: \(isMirror)")
    return isMirror
}

isSymmetric(TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3))))
