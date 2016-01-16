//
//  ViewController.m
//  TableViewCell高度自适应测试
//
//  Created by Never on 15/11/12.
//  Copyright © 2015年 yoohooo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *testTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    _testTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    _testTableView.center = self.view.center;
    _testTableView.dataSource = self;
    _testTableView.delegate = self;
    [self.view addSubview:_testTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- UITableView代理
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSString *lab = @"测试cell";
    cell.textLabel.text = lab;
    CGSize textSize = [lab sizeWithFont:<#(UIFont *)#> minFontSize:<#(CGFloat)#> actualFontSize:<#(CGFloat *)#> forWidth:<#(CGFloat)#> lineBreakMode:<#(NSLineBreakMode)#>]
    
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 100;
}
@end
