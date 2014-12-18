//
//  NSStatusBarServer.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "NSStatusBarServer.h"
#import "StatusItemView.h"

@interface NSStatusBarServer ()<MenuBarDelegate>

@end

@implementation NSStatusBarServer

+ (instancetype)shared
{
    static dispatch_once_t onceToken;
    static NSStatusBarServer * server = nil;
    dispatch_once(&onceToken, ^{
        
        server = [[NSStatusBarServer alloc] init];
        
        [server setStatusConfig];
    });
    
    return server;
}

- (void)setStatusConfig
{
    // statusBar VC
    
    NSStoryboard * board = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
    self.statusBarVC = [board instantiateControllerWithIdentifier:@"statusBarVC"];
    
    // statusBar item
    
    CGFloat thickness = [[NSStatusBar systemStatusBar] thickness];
    NSStatusBar* statusBar = [NSStatusBar systemStatusBar];
    self.statusItem = [statusBar statusItemWithLength:thickness];
    StatusItemView* statusItemView = [[StatusItemView alloc] initWithFrame:(NSRect){.size={thickness, thickness}}];
    [statusItemView setDelegate:self];
    [self.statusItem setView:statusItemView];
    

    // 系统的
//    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
//    [self.statusItem setHighlightMode:YES];
//    [self.statusItem setEnabled:YES];
//    [self.statusItem setToolTip:@"ice trello"];
//    
//    [self.statusItem setAction:@selector(onSelectStatusBar:)];
//    [self.statusItem setTarget:self];
    
//    [self.statusItem setImage:[NSImage imageNamed:@"ice"]];
}

- (void)statusItemView:(StatusItemView *)itemView iconClicked:(id)sender
{   
    [self.statusBarVC autoShow];
}

@end
