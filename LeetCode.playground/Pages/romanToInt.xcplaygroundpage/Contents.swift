func romanToInt(_ s: String) -> Int {
    /// Start from last digit
    /// if current iterating digit is smaller than previous digit Substract the value from sum
    /// otherwise ADD corresponding integer value of last digit to sum
    
    let priorityMap: [String:Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    let arr = s.map({ String($0) })
    var index = s.count-1
    var sum = 0
    var last = 0
    
    while index >= 0 {
        guard let current = priorityMap[arr[index]] else {
            return sum
        }
        
        if last > current && last > 0 {
            sum -= current
        } else {
            sum += current
        }
        
        last = current
        index -= 1
    }
    
    return sum
}

romanToInt("MCMXCIV")
