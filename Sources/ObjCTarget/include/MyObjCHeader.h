#import <Foundation/Foundation.h>

#include "Sources/CppTarget/include/CppClassUtil.h"

NS_INLINE NSException * _Nullable tryBlock(void(^_Nonnull tryBlock)(void)) {
    @try {
        tryBlock();
    }
    @catch (NSException *exception) {
        return exception;
    }
    return nil;
}

@interface MyObjCClass : NSObject

- (instancetype)init;
- (void)callCppMethod;

@end
