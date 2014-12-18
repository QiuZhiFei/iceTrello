//
//  NSStatusBarServer.h
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "StatusBarViewController.h"

@interface NSStatusBarServer : NSObject

@property (nonatomic, strong) NSStatusItem * statusItem;
@property (nonatomic, strong) StatusBarViewController * statusBarVC;

+ (instancetype)shared;

@end
