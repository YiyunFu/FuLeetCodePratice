import Foundation

/**
 // NSLock
 let lock = NSLock()
 var _arr = [1,2,3,4,5,6] // Shared resourse
 private(set) var arr: [Int] {
     get {
         return _arr
     }
     set {
         //2
         lock.lock()
         _arr = newValue
         //3
         lock.unlock()
     }
 }
 **/

/**
 // Dispatch Semaphore
 let semaphore = DispatchSemaphore(value: 1)
 var _arr = [1,2,3,4,5,6] // Shared resourse
 private(set) var arr: [Int] {
     get {
         return _arr
     }
     set {
         //2
         semaphore.wait()
         _arr = newValue
         //3
         semaphore.signal()
     }
 }
 */

/**
 //Serial Queue
 let serialQueue = DispatchQueue(label: "serial.queue")
 var _arr = [1,2,3,4,5,6] // Shared resourse
 private(set) var arr: [Int] {
     get {
         return _arr
     }
     set {
         //2
         serialQueue.async {
             _arr = newValue
         }
     }
 }
 */

/**
 // Dispatch Barrier with Concurrent Queue
 let concurrentQueue = DispatchQueue(label: "com.db.categories", attributes: .concurrent)
 var _arr = [1,2,3,4,5,6] // Shared resourse
 private(set) var arr: [Int] {
     get {
         concurrentQueue.sync { _arr }
     }
     set {
         //2
         concurrentQueue.async(flags: .barrier) {
             _arr = newValue
         }
     }
 }
 */

let concurrentQueue = DispatchQueue(label: "com.db.categories", attributes: .concurrent)
var _arr = [1,2,3,4,5,6] // Shared resourse
private(set) var arr: [Int] {
    get {
        concurrentQueue.sync { _arr }
    }
    set {
        //2
        concurrentQueue.async(flags: .barrier) {
            _arr = newValue
        }
    }
}

func test() {
    // A concurrent queue is created to run operations in parallel
    let queue = DispatchQueue(label: "test.queue", attributes: .concurrent)

    // First block of code added to queue for execution
    queue.async {
        print("Remove all entry")
        arr.removeAll()
        print("Remove all end")
    }

    // Second block of code added to queue for execution
    queue.async {
        print("Remove last entry")
        arr.removeLast()
        print("Remove last end")
    }
}

test()
