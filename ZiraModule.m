#import "ZiraModule.h"


@implementation ZiraModule {

	ZiraContentModuleVC *ziraContentModuleVC;

}


- (id)init {

	self = [super init];
	if(!self) return nil;

	ziraContentModuleVC = [ZiraContentModuleVC new];
	ziraContentModuleVC.module = self;

	return self;

}


- (CCUILayoutSize)moduleSizeForOrientation:(NSInteger)orientation {

	CCUILayoutSize size;
	NSNumber *width, *height;

	if(orientation == 0) {
		width = [[NSUserDefaults.standardUserDefaults persistentDomainForName:@"me.luki.ziraprefs"] objectForKey: @"portraitWidth"];
		height = [[NSUserDefaults.standardUserDefaults persistentDomainForName:@"me.luki.ziraprefs"] objectForKey: @"portraitHeight"];
	}
	else {
		width = [[NSUserDefaults.standardUserDefaults persistentDomainForName:@"me.luki.ziraprefs"] objectForKey: @"landscapeWidth"];
		height = [[NSUserDefaults.standardUserDefaults persistentDomainForName:@"me.luki.ziraprefs"] objectForKey: @"landscapeHeight"];
	}

	size.width = width ? [width unsignedLongLongValue] : (size.width = 1);
	size.height = height ? [height unsignedLongLongValue] : (size.height = 1);

	return size;
}


- (UIViewController *)contentViewController { return ziraContentModuleVC; }

@end
