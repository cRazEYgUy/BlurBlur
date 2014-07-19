#include "BlurBlur.h"

@implementation BlurBlur
  + (UIWindow *)createWithStyle:(int)style withFrame:(CGRect)frame {

    UIWindow *blurWindow = [[UIWindow alloc] initWithFrame:frame];
    blurWindow.backgroundColor = [UIColor blackColor];
    blurWindow.windowLevel = UIWindowLevelAlert;

    _UIBackdropView *blurView = [[_UIBackdropView alloc] initWithStyle:style];
    [blurView setBlurRadiusSetOnce:NO];
    [blurView setBlurRadius:4.0];
    [blurView setBlurHardEdges:2];
    [blurView setBlursWithHardEdges:YES];
    [blurView setBlurQuality:@"default"];
    [blurWindow addSubview:blurView];
    return blurWindow;
  }
@end
