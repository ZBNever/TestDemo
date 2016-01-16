//
//  ViewController.m
//  yjstest
//
//  Created by Jason on 15/11/2.
//  Copyright (c) 2015年 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(30, 30, 200, 30)];
    lab.text = @"这是一个测试Label";
    lab.backgroundColor = [UIColor greenColor];
    [self.view addSubview:lab];
    
    NSLog(@"test2");
    
    NSLog(@"test");
    
    NSLog(@"test3");
    
    NSLog(@"test4");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];    // Dispose of any resources that can be recreated.
}

@end
