//
//  ViewController.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 加载 url
    NSURL*url=[NSURL URLWithString:@"https://trello.com"];
    NSURLRequest*request=[NSURLRequest requestWithURL:url];
    [[self.webView mainFrame] loadRequest:request];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
