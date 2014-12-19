//
//  StatusBarContentViewController.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "StatusBarContentViewController.h"
#import "AppDelegate.h"

@interface StatusBarContentViewController ()

@end

@implementation StatusBarContentViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    // Do view setup here.
    
    // 加载 url
    NSURL*url=[NSURL URLWithString:ICE_TRELLO_URL_STRING];
    NSURLRequest*request=[NSURLRequest requestWithURL:url];
    [[self.webView mainFrame] loadRequest:request];
}

- (IBAction)openTrello:(id)sender {
    
    [[AppDelegate shared] openMainWindow];
}

- (IBAction)logout:(id)sender {
    
    [[AppDelegate shared] close];
}

@end
