//
//  ZFBaseWebController.h
//  mac1
//
//  Created by mac on 12/19/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ZFBaseWebController : NSViewController

@property (strong) WebView *webView;

@property (nonatomic, strong) NSProgressIndicator * indicator;
@end
