class Solution {
    func romanToInt(_ s: String) -> Int {
        let priorityMap: [String:Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
        var maps: [String : [Int]] = [String : [Int]]()
        
        let characters: [String] = s.map({ String($0) })
        for i in 0..<characters.count {
            let character = characters[i]
            let charPriority: Int = priorityMap[character] ?? 0
            
            if (i != characters.count-1) {
                let nextChar = characters[i+1]
                let nextCharPriority: Int = priorityMap[nextChar] ?? 0
                if (nextCharPriority > charPriority) {
                    if maps[character] == nil {
                        maps[character] = []
                    }
                    maps[character]?.append(-1)
                    continue
                }
            }
            if maps[character] == nil {
                maps[character] = []
            }
            maps[character]?.append(1)
        }
        
        var result: Int = 0
        for (key, value) in maps {
            let count = value.reduce(0,+)
            let res = count * (priorityMap[key] ?? 0)
            result += res
        }
        
        return result
    }
}
