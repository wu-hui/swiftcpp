import CppTarget
import ObjCTarget

func useCppClass() {
    var cppObject = MyCppClass()
//    cppObject.doSomething() {
//        print("Swift callback")
//        }
    let sum = cppObject.addNumbers(5, 7)
    print("Sum from C++: \(sum)")

    let objcObject = MyObjCClass.init()
    objcObject!.callCppMethod()
}

public func runExample() { // Add a new function to call useCppClass
    useCppClass()
}
