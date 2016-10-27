//
//  ViewController.m
//  GCRespond
//
//  Created by jiaweibai on 27/10/2016.
//  Copyright © 2016 GarveyCalvin. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+GCResponder.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStepper *steper;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.steper gc_addControlEvents:UIControlEventValueChanged action:^(UIStepper*  _Nonnull sender) {
        NSLog(@"steper value change: %f", sender.value);
    }];
    
    [self.myButton gc_addControlEvents:UIControlEventTouchUpInside action:^(id  _Nonnull sender) {
        NSLog(@"sender is %@", sender);
    }];
    
    [self.slider gc_addControlEvents:UIControlEventValueChanged action:^(UISlider*  _Nonnull sender) {
        NSLog(@"slider value change: %f", sender.value);
    }];
}

@end
