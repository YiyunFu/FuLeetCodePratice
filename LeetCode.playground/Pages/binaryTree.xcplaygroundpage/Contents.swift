//: [Previous](@previous)

import Foundation

class TreeNode: Equatable {

    var value: Int?
    var left: TreeNode?
    var right: TreeNode?
    init(value: Int?, left: TreeNode? = nil, right: TreeNode? = nil) {
      self.value = value
      self.left = left
      self.right = right
    }

    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        let val = lhs.value == rhs.value
        let left = lhs.left == rhs.left || (TreeNode.isNil(lhs.left) && TreeNode.isNil(rhs.left))
        let right = lhs.right == rhs.right || (TreeNode.isNil(lhs.left) && TreeNode.isNil(rhs.left))
        // print("\(val),\(left),\(right)")
        return val && left && right
    }

    static func isNil(_ node: TreeNode?) -> Bool {
        return node == nil || (node?.value == nil)
    }
  }

  func getTree(arr: [Int?], size: Int, location: Int) -> TreeNode? {
    if location >= size { return nil }
      let head: TreeNode? = TreeNode(value: arr[location])
    head!.left = getTree(arr: arr, size: size, location: (location * 2) + 1)
    head!.right = getTree(arr: arr, size: size, location: (location * 2) + 2)
    return head
  }

  func getTree(array: [Int?]) -> TreeNode? {
    return getTree(arr: array, size: array.count, location: 0)
  }

  //implement the function
  func isSameTree(_ p: [Int?], _ q: [Int?]) -> Bool {
    // your solution ...
    let node1 = getTree(array: p)
    let node2 = getTree(array: q)
    return node1 == node2
  }


isSameTree([0, 3, 1, nil, nil, nil, nil], [0, 3, 1])
