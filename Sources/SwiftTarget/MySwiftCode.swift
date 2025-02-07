import CppTarget
import ObjCTarget

func useCppClass() {
    let objcObject = MyObjCClass.init()

    do{
        try objcObject!.callCppMethod()
    } catch {
        print("Caught an exception: \(error)")
    }
}

public func runExample() { // Add a new function to call useCppClass
    useCppClass()
}
