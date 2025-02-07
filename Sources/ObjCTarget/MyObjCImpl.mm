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

- (bool)safeCallCppMethod:(NSError**) error{
    @try {
        @throw  [[NSException alloc] initWithName:@"Test"
                                    reason:@"Throwing a objc exception"
                                  userInfo:nil];

        return YES;
    } @catch (NSException *exception) {
        if (error != NULL) {
            *error = [NSError errorWithDomain:@"LegacyErrorDomain"
                                         code:456
                                     userInfo:@{
                                         NSLocalizedDescriptionKey: exception.reason ?: @"Unknown legacy error",
                                         @"NSExceptionName": exception.name,
                                         @"NSExceptionUserInfo": exception.userInfo ?: @{}
                                     }];
        }
        return NO;
    }
}

@end
