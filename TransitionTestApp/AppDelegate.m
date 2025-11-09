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
@property (strong) IBOutlet NSView *yellowView;
@property (strong) IBOutlet NSView *blueView;
@end

@implementation AppDelegate

- (IBAction)toggleTransition:(id)sender {
	// This does the transitionDuration, but I see no transition:
//	if (self.yellowView.superview == nil) {
//		 self.containerView.animator.subviews = @[self.yellowView];
//	} else {
//		 self.containerView.animator.subviews = @[self.blueView];
//	}

	// No worky either:
//	if (self.yellowView.hidden) {
//		self.yellowView.animator.hidden = NO;
//		self.blueView.animator.hidden = YES;
//	} else {
//		self.yellowView.animator.hidden = YES;
//		self.blueView.animator.hidden = NO;
//	}

	// This seems to work:
	if (self.yellowView.superview == nil) {
        self.yellowView.frame = self.containerView.bounds;
		[self.containerView.animator addSubview: self.yellowView];
		[self.blueView.animator removeFromSuperview];
	} else {
        self.blueView.frame = self.containerView.bounds;
		[self.containerView.animator addSubview: self.blueView];
		[self.yellowView.animator removeFromSuperview];
	}
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
}

- (void) awakeFromNib {
	self.window.contentView.wantsLayer = YES;
    self.blueView.frame = self.containerView.bounds;
	[self.containerView addSubview: self.blueView];
//	[self.containerView addSubview: self.yellowView];
//	self.yellowView.hidden = YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
	return YES;
}


@end
