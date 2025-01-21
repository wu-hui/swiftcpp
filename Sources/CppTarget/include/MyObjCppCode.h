#import <Foundation/Foundation.h>
#include <memory>
#include <vector>


#ifndef MYOBJCPPCODE_H_
#define MYOBJCPPCODE_H_

NS_ASSUME_NONNULL_BEGIN

typedef void (^PipelineBlock)()
    NS_SWIFT_UNAVAILABLE("Use Swift's closure syntax instead.");

NS_SWIFT_SENDABLE
NS_SWIFT_NAME(CallbackWrapper)
@interface FIRCallbackWrapper : NSObject

+ (std::shared_ptr<core::EventListener<std::vector<api::PipelineResult>>>)
              completion:(void (^NS_SWIFT_SENDABLE)()completion
    NS_SWIFT_NAME(wrapCallback(completion:));

@end

NS_ASSUME_NONNULL_END


#endif // MYOBJCPPCODE_H_
