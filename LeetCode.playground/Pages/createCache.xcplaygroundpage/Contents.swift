//: [Previous](@previous)

import Foundation

/// Design and implement a data structure for cache.
/// get(key) - Get the value of the key if the key exists in the cache, otherwise return -1
/// put(key, value, weight) - Set or insert the value, when the cache reaches its capacity, it should invalidate the least scored key. The score is calculated as:
/// when current_time != last_access_time:
/// else:
/// Your data structure should be optimized for the computational complexity of get(key) i.e. Average case for computational complexity of get(key) could be O(1).
/// In your code, you can assume common data structure such as array, different type of list, hash table are available.
/// Please explain the computational complexity of get(key) and put(...) in Big-O notation.

struct CustomCacheStruct {
    var key: String
    var value: Any
    var weight: Int
}

class CustomCache {
    private let capacity: Int
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    private var caches = [String: CustomCacheStruct]()
    private var keyWeights = [(key: String, weight: Int)]()
    func get(key: String) -> Any {
        return caches[key]?.value ?? -1 // O(1)
    }
    
    func put(key: String, value: Any, weight: Int) {
        if caches.count + 1 >= capacity {
            if let last = keyWeights.first {
                if last.weight <= weight {
                    caches.removeValue(forKey: last.key) // O(*n*)
                    keyWeights.remove(at: 0) // O(*n*)
                    print("caches did remove: \(last.key), weight: \(last.weight)")
                }
            }
        }
        
        caches[key] = CustomCacheStruct(key: key, value: value, weight: weight)
        if let index = keyWeights.firstIndex(where: { $0.key == key }) { // O(*n*)
            keyWeights.remove(at: index) // O(*n*)
        }
        keyWeights.append((key: key, weight: weight)) // O(1)
        keyWeights.sort(by: { $0.weight < $1.weight }) // O(*n* log *n*)
    }
}

let cache = CustomCache(capacity: 3)
cache.put(key: "1", value: 1, weight: 12)
cache.put(key: "2", value: "Hi", weight: 9)
cache.put(key: "3", value: [2], weight: 1)
cache.put(key: "4", value: ["key": 234], weight: 13)
