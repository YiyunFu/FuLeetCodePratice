import Foundation

enum timePadding : String {
    case AM, PM
    //    static var all: [String] {
    //        return [timePadding.AM.rawValue, timePadding.PM.rawValue]
    //    }
}

func calculateTime(_ time: String) -> String {
    var times = time.components(separatedBy: ":")
    let gap = (Int(times.first ?? "") ?? 0) - 12
    if gap >= 0 {
        times[0] = String(gap)
    }
    
    return times.joined(separator: ":")
}

func timeConversion(s: String) -> String {
    // Write your code here
    let padding = s.suffix(2)
    var times = s.prefix(8).components(separatedBy: ":")
    let gap = (Int(times.first ?? "") ?? 0) - 12
    if (gap >= 0 && padding == "AM") {
        times[0] = String(format: "%02d", gap)
    } else if (gap < 0 && padding == "PM") {
        times[0] = String(format: "%02d", (Int(times[0]) ?? 0) + 12)
    }
        
    return times.joined(separator: ":")
}


timeConversion(s: "01:01:00PM")
