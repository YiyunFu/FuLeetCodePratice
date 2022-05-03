import Foundation

func timeConversion(s: String) -> String {
    // Write your code here
    var res = (Int(s.prefix(2)) ?? 0) % 12
    if s.suffix(2) == "PM" {
        res += 12
    }
    return String.init(format: "%02d%@", res, String(String(s.suffix(8)).prefix(6)))
}

timeConversion(s: "01:01:00PM")
