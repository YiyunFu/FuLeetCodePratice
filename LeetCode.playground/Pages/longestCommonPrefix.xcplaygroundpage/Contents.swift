import Foundation

func subString(_ string: String, from: Int, to: Int) -> String {
   let startIndex = string.index(string.startIndex, offsetBy: from)
   let endIndex = string.index(string.startIndex, offsetBy: to)
   return String(string[startIndex..<endIndex])
}

/*
// Horizontal scaning
func longestCommonPrefix(_ strs: [String]) -> String {
    var prefix: String = strs.first ?? ""
    for str in strs[1..<strs.count] {
        while (str.range(of: prefix) == nil) {
            prefix = String(prefix.prefix(prefix.count-1))
            if (prefix.isEmpty) {
                return ""
            }
        }
    }

    return prefix
}
 */

/*
// Vertical Scanning
 
func longestCommonPrefix(_ strs: [String]) -> String {
    let first = strs.first ?? ""
    for i in 0..<first.count {
        let char = subString(first, from: i, to: i+1)
        
        for j in 1..<strs.count {
            let current = strs[j]
            if (i == current.count) {
                // 第一個字串比當前字串長，且先前prefix都一樣
                return String(first.prefix(i))
            }
            if (char != subString(current, from: i, to: i+1)) {
                // 一直到i以前，先前prefix都一樣
                return String(first.prefix(i))
            }
        }
    }
    return first
}
 */

/**
 public String longestCommonPrefix(String[] strs) {
     if (strs == null || strs.length == 0) return "";
         return longestCommonPrefix(strs, 0 , strs.length - 1);
 }

 private String longestCommonPrefix(String[] strs, int l, int r) {
     if (l == r) {
         return strs[l];
     }
     else {
         int mid = (l + r)/2;
         String lcpLeft =   longestCommonPrefix(strs, l , mid);
         String lcpRight =  longestCommonPrefix(strs, mid + 1,r);
         return commonPrefix(lcpLeft, lcpRight);
    }
 }

 String commonPrefix(String left,String right) {
     int min = Math.min(left.length(), right.length());
     for (int i = 0; i < min; i++) {
         if ( left.charAt(i) != right.charAt(i) )
             return left.substring(0, i);
     }
     return left.substring(0, min);
 }
 */

func commonPrefix(left: String, right: String) -> String {
    let min = min(left.count, right.count)
    for i in 0..<min {
        if subString(left, from: i, to: i+1) != subString(right, from: i, to: i+1) {
            return subString(left, from: 0, to: i)
        }
    }
    return subString(left, from: 0, to: min)
}

func longestCommonPrefix(_ strs: [String]) -> String {
}
