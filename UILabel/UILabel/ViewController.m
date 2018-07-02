//
//  ViewController.m
//  UILabel
//
//  Created by cedrus on 2018/6/29.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createUI
{
    UILabel *label = [[UILabel alloc] init];
    label.text = @"hello label!";
    label.frame = CGRectMake(100, 100, 160, 40);
    label.backgroundColor = [UIColor clearColor];
    //self.view.backgroundColor = [UIColor grayColor];

    
    [self.view addSubview:label];
    label.font = [UIFont systemFontOfSize:24];
    label.textColor = [UIColor redColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
