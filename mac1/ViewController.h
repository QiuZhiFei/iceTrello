//
//  ViewController.h
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ZFBaseWebController.h"

@interface ViewController : ZFBaseWebController
{
    NSStatusItem *statusItem;
    NSImage *menuIcon;
}

@property (strong) IBOutlet WebView *webView;

@end

