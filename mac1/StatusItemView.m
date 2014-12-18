//
//  StatusItemView.m
//  mac1
//
//  Created by mac on 12/18/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "StatusItemView.h"

@implementation StatusItemView


- (void)drawRect:(NSRect)dirtyRect {

    //// Color Declarations
    NSColor* fillColor = [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 1];
    NSColor* strokeColor = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 1];
    
    //// Abstracted Attributes
    NSString* textContent = @"T";
    
    
    //// Oval Drawing
    
    CGFloat space = 3;
    
    CGFloat width = dirtyRect.size.width - space * 2;
    
    NSBezierPath* ovalPath = [NSBezierPath bezierPathWithOvalInRect: NSMakeRect(space, space, width, dirtyRect.size.height - space * 2)];
    [strokeColor setFill];
    [ovalPath fill];
    [strokeColor setStroke];
    [ovalPath setLineWidth: 1];
    [ovalPath stroke];
    
    
    //// Text Drawing
    NSRect textRect = NSMakeRect(3, 2, width, width);
    NSMutableParagraphStyle* textStyle = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    [textStyle setAlignment: NSCenterTextAlignment];
    
    NSDictionary* textFontAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                        [NSFont fontWithName: @"Helvetica" size: 12], NSFontAttributeName,
                                        fillColor, NSForegroundColorAttributeName,
                                        textStyle, NSParagraphStyleAttributeName, nil];
    
    [textContent drawInRect: textRect withAttributes: textFontAttributes];
    

    
}

- (void)mouseDown:(NSEvent *)theEvent
{
    [_delegate statusItemView:self
                  iconClicked:nil];
}

@end
