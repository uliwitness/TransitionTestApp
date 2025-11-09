//
//  WILDColorBoxView.m
//  TransitionTestApp
//
//  Created by Uli Kusterer on 09.11.25.
//

#import "WILDColorBoxView.h"

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

-(void) drawRect: (NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
