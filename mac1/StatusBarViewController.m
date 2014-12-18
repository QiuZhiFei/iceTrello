//
//  StatusBarViewController.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "StatusBarViewController.h"
#import "NSStatusBarServer.h"

@interface StatusBarViewController ()

@end

@implementation StatusBarViewController

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // 隐藏 bar
    self.window.styleMask = NSBorderlessWindowMask;

    self.window.opaque = NO;
    self.window.backgroundColor = [NSColor whiteColor];
    
//    self.contentViewController.view.backgroundFilters
}


- (void)autoShow
{
    NSWindow* window = [self window];
    
    if (window.isVisible) {
        
        [self hide];
    } else {
        
        [self show];
    }
}


- (void)show
{
    NSWindow* window = [self window];
    
    // 任务栏
    NSStatusItem * item = [NSStatusBarServer shared].statusItem;
    
    // 屏幕
    NSScreen * screen = [NSScreen screens][0];

    CGRect window_frame = window.frame;
    window_frame.origin.x = item.view.window.frame.origin.x + item.view.window.frame.size.width/2.0 - window_frame.size.width/2.0;
    window_frame.origin.y = screen.frame.size.height - window_frame.size.height - [[NSStatusBar systemStatusBar] thickness];
    [window setFrame:window_frame display:NO];

    [NSApp activateIgnoringOtherApps:YES];
    [window makeKeyAndOrderFront:nil];
}

- (void)hide
{
    NSWindow * window = [self window];
    
    [NSAnimationContext beginGrouping];
    [[NSAnimationContext currentContext] setCompletionHandler:^{
        [window orderOut:nil];
        [window setAlphaValue:1.0];
    }];
    
    [[NSAnimationContext currentContext] setDuration:0.1];
    [[window animator] setAlphaValue:0.0];
    [NSAnimationContext endGrouping];
    
    // 退出
    //   [NSApp terminate:self];
}

@end
