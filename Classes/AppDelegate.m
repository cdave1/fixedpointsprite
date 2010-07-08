#import "AppDelegate.h"
#import "EAGLView.h"

@implementation AppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application 
{
	[application setStatusBarStyle:UIStatusBarStyleBlackTranslucent animated:NO];
	glView.animationInterval = 1.0 / 60.0;
	[glView startAnimation];
}


- (void)applicationDidBecomeActive:(UIApplication *)application 
{
	NSLog(@"applicationDidBecomeActive:");
	glView.animationInterval = 1.0 / 60.0;
}


- (void)dealloc 
{
	[glView stopAnimation];
	[window release];
	[super dealloc];
}

@end
