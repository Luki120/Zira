#import "ZiraContentModuleVC.h"


@implementation ZiraContentModuleVC {

	UIImageView *imageView;

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {

	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if(!self) return nil;

	if(imageView) return nil;

	imageView = [UIImageView new];
	imageView.image = [GcImagePickerUtils imageFromDefaults:@"me.luki.ziraprefs" withKey:@"ziraImage"];
	imageView.contentMode = UIViewContentModeScaleAspectFill;
	imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview: imageView]; 

	[NSDistributedNotificationCenter.defaultCenter removeObserver:self];
	[NSDistributedNotificationCenter.defaultCenter addObserver:self selector:@selector(updateImage) name:@"updateImageDone" object:nil];

	return self;

}


- (void)viewWillLayoutSubviews {

	[super viewWillLayoutSubviews];

	imageView.frame = self.view.bounds;
	imageView.layer.cornerCurve = kCACornerCurveContinuous;
	imageView.layer.cornerRadius = 17;
	imageView.clipsToBounds = YES;

}


- (void)updateImage {

	imageView.image = [GcImagePickerUtils imageFromDefaults:@"me.luki.ziraprefs" withKey:@"ziraImage"];

}


- (BOOL)_canShowWhileLocked { return YES; }
- (CGFloat)preferredExpandedContentWidth { return 0; }
- (CGFloat)preferredExpandedContentHeight { return 0; }

@end
