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


func uncaughtExceptionHandler(exception: NSException) {
    print("Uncaught Objective-C exception: \(exception)")
    print("Name: \(exception.name)")
    print("Reason: \(exception.reason ?? "No reason given")")
    print("UserInfo: \(exception.userInfo ?? [:])")
    // You could log this to a file or send it to a crash reporting service.
}

public func runExample() { // Add a new function to call useCppClass
    NSSetUncaughtExceptionHandler(uncaughtExceptionHandler)
    useCppClass()
}
