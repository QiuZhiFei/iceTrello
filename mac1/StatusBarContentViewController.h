//
//  StatusBarContentViewController.h
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import <Cocoa/Cocoa.h>
//#import <WebKit/WebKit.h>
#import "ZFBaseWebController.h"

@interface StatusBarContentViewController : ZFBaseWebController

@property (strong) IBOutlet WebView *webView;

@end
