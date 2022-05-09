import Foundation

class AccessControl {
    fileprivate var FilePrivate = "FilePrivate"
    private var Private = "Private"
    internal var Internal = "Internal"
    open var Open = "Open"
    public var Public = "Public"
}

//class test: AccessControl {
//    override var Open = "OverrideOpen"
//    override var Public = "OverridePublic"
//}

let control = AccessControl()
//print(control.FilePrivate) // SUCCESS
//print(control.Private) // FAILED
print(control.Internal)
