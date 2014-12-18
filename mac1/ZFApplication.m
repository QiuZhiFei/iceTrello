//
//  ZFApplication.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "ZFApplication.h"
#import "NSStatusBarServer.h"

@implementation ZFApplication

- (void)sendEvent:(NSEvent *)anEvent
{
    if ([anEvent type] == NSKeyDown && ([anEvent modifierFlags] & NSCommandKeyMask)
        && [[anEvent characters] isEqualToString:@","]) {
        
        [[[NSStatusBarServer shared] statusBarVC] show];
    } else if ([anEvent type] == NSKeyDown && ([anEvent modifierFlags] & NSCommandKeyMask) && [[anEvent characters] isEqualToString:@"h"]) {

        [[[NSStatusBarServer shared] statusBarVC] hide];
    } else if ([anEvent type] == NSKeyDown && ([anEvent modifierFlags] & NSCommandKeyMask) && [[anEvent characters] isEqualToString:@"q"]) {
        
        [NSApp terminate:nil];
    }
    
    [super sendEvent:anEvent];
}

@end
