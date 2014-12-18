//
//  StatusBarContentViewController.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "StatusBarContentViewController.h"
#import "NSStatusBarServer.h"

@interface StatusBarContentViewController ()

@end

@implementation StatusBarContentViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    // Do view setup here.
    
    // 加载 url
    NSURL*url=[NSURL URLWithString:@"https://trello.com"];
    NSURLRequest*request=[NSURLRequest requestWithURL:url];
    [[self.webView mainFrame] loadRequest:request];
}

- (IBAction)setting:(id)sender {
    
    [[[NSStatusBarServer shared] statusBarVC] hide];
    
}
@end
