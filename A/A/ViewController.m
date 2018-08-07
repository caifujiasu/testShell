//
//  ViewController.m
//  A
//
//  Created by 张升 on 2018/8/6.
//  Copyright © 2018年 张升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    ZSCClass *c = [ZSCClass new];
    [c c];
    
    ZSBClass *b = [ZSBClass new];
    [b b];
    
    ZSDClass *d = [ZSDClass new];
    [d d];
}


@end
