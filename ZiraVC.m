#import "ZiraVC.h"


@implementation ZiraVC

- (NSArray *)specifiers {

	if(!_specifiers) _specifiers = [self loadSpecifiersFromPlistName:@"ZiraPrefs" target:self];
	return _specifiers;

}


- (void)viewDidLoad {

	[super viewDidLoad];
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)postNSNotification, CFSTR("me.luki.ziraprefs/imageChanged"), NULL, 0);

}

static void postNSNotification() {

	[NSDistributedNotificationCenter.defaultCenter postNotificationName:@"updateImageDone" object:nil];

}

@end
