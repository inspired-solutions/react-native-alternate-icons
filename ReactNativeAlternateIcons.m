#import "ReactNativeAlternateIcons.h"
#import <React/RCTLog.h>
#import <UIKit/UIKit.h>

@implementation ReactNativeAlternateIcons

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(setIconName:(NSString *)name){
    NSLog(@"Setting the following icon: %@", name);
    [[UIApplication sharedApplication] setAlternateIconName:name completionHandler:^(NSError * _Nullable error) {
        if( error != nil ){
            NSLog(@"Error: %@", error.description );
        }
    }];
}

RCT_EXPORT_METHOD(reset){
    [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:^(NSError * _Nullable error) {
        if( error != nil ){
            NSLog(@"Error: %@", error.description );
        }
    }];
}

RCT_EXPORT_METHOD(getIconName){
    return [[UIApplication sharedApplication] alternateIconName];
}

RCT_EXPORT_METHOD(supportDevice){
    if( [[UIApplication sharedApplication] supportsAlternateIcons ] ){
        return YES;
    }
    
    return NO;
}

@end
