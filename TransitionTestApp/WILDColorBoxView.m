//
//  WILDColorBoxView.m
//  TransitionTestApp
//
//  Created by Uli Kusterer on 09.11.25.
//

#import "WILDColorBoxView.h"
#import <QuartzCore/QuartzCore.h>
#import <CoreImage/CoreImage.h>


@implementation WILDColorBoxView

-(instancetype) initWithFrame: (NSRect)frameRect {
	self = [super initWithFrame: frameRect];
	if (!self) { return nil; }
	
	self.wantsLayer = YES;
	self.layer.backgroundColor = NSColor.greenColor.CGColor;
	
	return self;
}

-(instancetype) initWithCoder: (NSCoder*)coder {
	self = [super initWithCoder: coder];
	if (!self) { return nil; }
	
	self.wantsLayer = YES;
	self.layer.backgroundColor = NSColor.magentaColor.CGColor;
	
	return self;
}

-(void) setColor: (NSColor*)color {
	self.layer.backgroundColor = color.CGColor;
}

-(id)	animationForKey: (NSString *)key
{	
	CATransition	*	ani = nil;
	
	if( [key isEqualToString: @"subviews"] )
	{
		ani = [CATransition animation];
//		CIFilter	*	theFilter = [CIFilter filterWithName: @"CISwipeTransition"];
//		[theFilter setDefaults];
//		[theFilter setValue: [NSNumber numberWithDouble: -M_PI_4] forKey: kCIInputAngleKey];
//		[ani setFilter: theFilter];
		[ani setType: @"fade"];
		[ani setDuration: 3.0];
		//[ani setSubtype: @"fromLeft"];
	}
	
	return ani;
}

@end
