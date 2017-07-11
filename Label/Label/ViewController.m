//
//  ViewController.m
//  Label
//
//  Created by TianTeng on 2017/7/11.
//  Copyright © 2017年 Tian. All rights reserved.
//

#import "ViewController.h"
#import "MyAlernLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"显示提示语" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)action{

    //设置显示的时间，请点击进去设置，默认1.4
    NSString * str = [NSString stringWithFormat:@"共找到10条数据"];
    MyAlernLabel* lab = [[MyAlernLabel alloc]initWithFrame:self.view.bounds WithMessage:str];
    [self.view addSubview:lab];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
