//
//  GCRespondProtocol.h
//  GCRespond
//
//  Created by jiaweibai on 27/10/2016.
//  Copyright © 2016 GarveyCalvin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ActionBlock)(_Nonnull id sender);

@protocol GCRespondProtocol <NSObject>

- (void)gc_addControlEvents:(UIControlEvents)controlEvents action:(nullable ActionBlock)action;

@end
