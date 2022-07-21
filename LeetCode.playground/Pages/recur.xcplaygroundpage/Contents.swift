//: [Previous](@previous)

import Foundation

func recur(_ n: Double, _ cur: Double?) -> Double {
    var curr = cur
    if curr == nil {
        curr = 0
    }
    print("n: \(n), curr: \(curr!)")
    if n < 2 {
        print("Invalid input")
        return 0
    }
    if n == 2 {
        let result = 1/n + curr!
        print(result)
        return result
    }
    let result = recur(n-1, curr!+1/(n*(n-1)))
    print(result)
    return result
}

/**
 // tail-recursive
 int factorial (int n, int acc = 1)
 {
   if (n == 1)
     return acc;
   else
     return factorial(n - 1, acc * n);
 }

 // iterative
 int factorial (int n)
 {
   int acc = 1;
   for (; n > 1; --n)
     acc *= n;
   return acc;
 }
 */
func newRecur(_ n: Double, _ cur: Double?) -> Double {
    return 0
    var curr = 1/n + (cur ?? 0)
    
}

recur(7, 1)
