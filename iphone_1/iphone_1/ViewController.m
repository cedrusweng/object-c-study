//
//  ViewController.m
//  iphone_1
//
//  Created by cedrus on 2018/6/28.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize display;

-(IBAction)click1
{
    display.text = @"1";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
