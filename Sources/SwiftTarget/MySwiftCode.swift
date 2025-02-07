import CppTarget
import ObjCTarget

func useCppClass() {
    let objcObject = MyObjCClass.init()

    let exception = tryBlock {
        objcObject!.callCppMethod()
    }

    print("exception: \(exception)")
}

public func runExample() { // Add a new function to call useCppClass
    useCppClass()
}
