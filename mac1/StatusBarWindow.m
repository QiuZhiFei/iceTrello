//
//  StatusBarWindow.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "StatusBarWindow.h"
#import "NSStatusBarServer.h"

@implementation StatusBarWindow

- (void)resignKeyWindow
{
    [[[NSStatusBarServer shared] statusBarVC] hide];
    
    [super resignKeyWindow];
}

- (BOOL)canBecomeKeyWindow
{
    return YES;
}

@end