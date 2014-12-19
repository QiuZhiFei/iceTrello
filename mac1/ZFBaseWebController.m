//
//  ZFBaseWebController.m
//  mac1
//
//  Created by mac on 12/19/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "ZFBaseWebController.h"

@interface ZFBaseWebController ()

@property (nonatomic, assign) BOOL loading; // default is NO

@end

@implementation ZFBaseWebController

- (void)dealloc {
    
    [self.webView removeObserver:self forKeyPath:@"estimatedProgress"];
    self.webView.frameLoadDelegate = nil;
    // if you have set either WKWebView delegate also set these to nil here

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loading = NO;
    
    self.indicator = [[NSProgressIndicator alloc] initWithFrame:NSMakeRect(self.view.frame.size.width/2, self.view.frame.size.height/2, 30, 30)];
    [self.indicator setStyle:NSProgressIndicatorSpinningStyle];
    
    
    self.webView.frameLoadDelegate = self;
    
//    [self.webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if ([keyPath isEqualToString:@"estimatedProgress"] && object == self.webView) {
        
        CGFloat progress = self.webView.estimatedProgress;
        
        NSLog(@"g == %g", progress);
        
        if (progress >= 0.8) {
            
            [self stopIndicator:nil];
        } else {
            
            [self startIndicator:nil];
        }
        // estimatedProgress is a value from 0.0 to 1.0
        // Update your UI here accordingly
    }
    else {
        // Make sure to call the superclass's implementation in the else block in case it is also implementing KVO
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame
{
    
}

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame
{
    
}

- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame
{

}

- (void)webView:(WebView *)sender didReceiveServerRedirectForProvisionalLoadForFrame:(WebFrame *)frame
{

}

- (void)webView:(WebView *)sender didFailProvisionalLoadWithError:(NSError *)error forFrame:(WebFrame *)frame
{

}

- (void)startIndicator:(id)sender
{
    if (self.loading == NO) {
        
        [self.view addSubview:self.indicator];
        [self.indicator startAnimation:nil];
        
        self.loading = YES;
    }
}

- (void)stopIndicator:(id)sender
{
    if (self.loading == YES) {
        
        [self.indicator stopAnimation:nil];
        [self.indicator removeFromSuperview];
        
//        self.loading = NO;
    }
}


@end
