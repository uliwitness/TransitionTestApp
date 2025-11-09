//
//  AppDelegate.m
//  TransitionTestApp
//
//  Created by Uli Kusterer on 05.11.25.
//

#import "AppDelegate.h"
#import "WILDColorBoxView.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;

@property (strong) IBOutlet NSView *containerView;
@property (strong) IBOutlet NSView *cyanView;
@property (strong) IBOutlet NSView *blueView;
@end

@implementation AppDelegate

- (IBAction)toggleTransition:(id)sender {
	if (self.cyanView.superview == nil) {
		self.containerView.animator.subviews = @[self.cyanView];
	} else {
		self.containerView.animator.subviews = @[self.blueView];
	}
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
}

- (void) awakeFromNib {
	[self.containerView.animator addSubview: self.blueView];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
	return YES;
}


@end
