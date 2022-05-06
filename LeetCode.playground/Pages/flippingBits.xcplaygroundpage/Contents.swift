
import Foundation

func byteArray<T>(from value: T) -> [UInt8] where T: FixedWidthInteger {
    withUnsafeBytes(of: value.bigEndian, Array.init)
}

func flippingBits(n: Int) -> Int {
    // Write your code here
    return Int(truncating: NSDecimalNumber(decimal: pow(2, 32))) - 1 - n
}

flippingBits(n: 2147483647)
