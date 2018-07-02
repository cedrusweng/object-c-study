//
//  ViewController.m
//  UIButtonEvent
//
//  Created by cedrus on 2018/7/2.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void) createBtn{
    UIButton * btn= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    btn.tag =101;
    [self.view addSubview:btn];
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(100, 200, 80, 40);
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    btn2.tag =102;
    [self.view addSubview:btn2];
    
    
   
    
}
-(void) pressBtn:(UIButton *) btn
{
    if(btn.tag == 101){
        NSLog(@"按钮被按下1！");
    }
    if(btn.tag == 102){
        NSLog(@"按钮被按下2！");
    }
}
-(void) touchDown{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
