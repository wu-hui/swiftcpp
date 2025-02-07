import CppTarget
import ObjCTarget

func useCppClass() {
    let objcObject = MyObjCClass.init()

    var error: NSError?
    if(objcObject!.safeCallCppMethod(&error)) {
        print("success")
    } else {
        if let nsError = error {
        print("Operation failed: \(nsError.localizedDescription)")
        // Access other error details from nsError
        }
    }
}

public func runExample() { // Add a new function to call useCppClass
    useCppClass()
}
