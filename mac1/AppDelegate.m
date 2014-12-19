//
//  AppDelegate.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "AppDelegate.h"
#import "NSStatusBarServer.h"
#import "ZFApplication.h"
#import "NSMainWindowController.h"

@interface AppDelegate ()

@property (nonatomic, strong) NSMainWindowController * mainWindowVC;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    NSStoryboard * board = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
    self.mainWindowVC = [board instantiateControllerWithIdentifier:@"mainWindowVC"];
    self.window = self.mainWindowVC.window;
    
    [self openMainWindow];
    
    
    // status bar
    
    [NSStatusBarServer shared];
}


- (void)openMainWindow
{
    if (!self.window.isVisible) {
        
        [NSApp activateIgnoringOtherApps:YES];
        [[self window] makeKeyAndOrderFront:nil];
    }
}


+ (instancetype)shared
{
    return [ZFApplication sharedApplication].delegate;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
