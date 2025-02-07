#import <Foundation/Foundation.h>

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
    @throw  [[NSException alloc] initWithName:@"Test"
                                    reason:@"Throwing a objc exception"
                                  userInfo:nil];
}

@end
