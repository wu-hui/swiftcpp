#import "Sources/ObjCTarget/include/MyObjCHeader.h"
#import "Sources/CppTarget/include/MyCppHeader.h"

@interface MyObjCClass ()
@end

@implementation MyObjCClass

MyCppClass obj;

- (instancetype)init {
    return self;
}

- (void)callCppMethod {
    obj.doSomething();
}

@end
