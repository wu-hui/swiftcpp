import CppTarget

func useCppClass() {
    var cppObject = MyCppClass()
    cppObject.doSomething()
    let sum = cppObject.addNumbers(5, 7)
    print("Sum from C++: \(sum)")
}

public func runExample() { // Add a new function to call useCppClass
    useCppClass()
}
