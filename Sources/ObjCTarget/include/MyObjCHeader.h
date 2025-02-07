#import <Foundation/Foundation.h>

#include "Sources/CppTarget/include/CppClassUtil.h"

@interface MyObjCClass : NSObject

- (instancetype)init;
- (void)callCppMethod;
- (bool)safeCallCppMethod:(NSError**) error;

@end
