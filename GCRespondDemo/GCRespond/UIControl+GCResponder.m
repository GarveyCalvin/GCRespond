//
//  UIControl+GCResponder.m
//  GCRespond
//
//  Created by jiaweibai on 27/10/2016.
//  Copyright © 2016 GarveyCalvin. All rights reserved.
//

#import "UIControl+GCResponder.h"
#import <objc/runtime.h>

static const NSString *blockKey = @"drag";

@interface UIControl ()

@property (copy, nonatomic) ActionBlock block;

@end

@implementation UIControl (GCResponder)

- (void)gc_addControlEvents:(UIControlEvents)controlEvents action:(nullable ActionBlock)action; {
    self.block = action;
    [self addTarget:self action:@selector(myAction:) forControlEvents:controlEvents];
}

- (void)myAction:(id)sender {
    self.block(sender);
}

- (ActionBlock)block {
    return objc_getAssociatedObject(self, &blockKey);
}

- (void)setBlock:(ActionBlock)block {
    objc_setAssociatedObject(self, &blockKey, block, OBJC_ASSOCIATION_COPY);
}



@end
