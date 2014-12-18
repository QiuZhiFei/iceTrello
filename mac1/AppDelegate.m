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

@interface AppDelegate ()

@property (nonatomic, strong) StatusBarViewController * statusBarVC;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    // status bar
    
    [NSStatusBarServer shared];
}

+ (instancetype)shared
{
    return [ZFApplication sharedApplication].delegate;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
