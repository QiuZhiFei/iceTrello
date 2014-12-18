//
//  StatusItemView.h
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class StatusItemView;

@protocol MenuBarDelegate

- (void)statusItemView:(StatusItemView *)itemView iconClicked:(id)sender;

@end

@interface StatusItemView : NSView

@property(nonatomic, weak) id<MenuBarDelegate> delegate;

@end
