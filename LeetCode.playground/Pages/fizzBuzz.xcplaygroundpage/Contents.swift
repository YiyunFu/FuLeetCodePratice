//: [Previous](@previous)

import Foundation

/**
 
 */

func fizzBuzz(n: Int) {
    for i in 1...n {
        if i % 15 == 0 {
            print("FizzBuzz")
        }
        else if i % 3 == 0 {
            print("Buzz")
        }
        else if i % 3 == 0 {
            print("Fizz")
        }
        else {
            print(i)
        }
    }
}

fizzBuzz(n: 15)
