//
//  AppDelegate.h
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

+ (instancetype)shared;

@property (nonatomic, strong) NSWindow * window;

- (void)openMainWindow;

- (void)close;

@end

