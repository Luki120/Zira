#import <ControlCenterUI/ControlCenterUI-Structs.h>
#import <ControlCenterUIKit/CCUIButtonModuleViewController.h>
#import <ControlCenterUIKit/CCUIToggleModule.h>
#import <ControlCenterUIKit/CCUIButtonModuleView.h>
#import <ControlCenterUIKit/CCUIContentModuleContentViewController.h>
#import "GcUniversal/GcImagePickerUtils.h"
#import "Common.h"


@class ZiraModule;


@interface ZiraContentModuleVC : CCUIButtonModuleViewController
@property (nonatomic, weak) ZiraModule *module;
@end
