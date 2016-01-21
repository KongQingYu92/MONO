//
//  MainViewController.m
//  MONO
//
//  Created by qianfeng on 16/1/20.
//  Copyright (c) 2016年 China. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUp];
    }
    return self;
}
- (void)setUp
{
    self.tabBar.hidden = YES;
    
    //设置自定义的tabBar
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_H - 49, SCREEN_W, 49)];
    view.backgroundColor = [UIColor blackColor];
    view.alpha = 0.8;
    [self.view addSubview:view];
    
    //创建btn
    NSArray *imgArr = @[@"nav-feed@3x",@"nav-discover@3x",@"nav-notification@3x",@"nav-me@3x"];
    NSArray *seletImgArr =  @[@"nav-feed-active@3x",@"nav-discover-active@3x",@"nav-notification-active@3x",@"nav-me-active@3x"];
    for (int i = 0; i < 4; i ++) {
        UIButton *btn = [[UIButton alloc]
                         initWithFrame:CGRectMake(SCREEN_W/4.0*i, 0, SCREEN_W/4.0, 49)];
        [btn setImage:[UIImage imageNamed:imgArr[i]] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:seletImgArr[i]] forState:UIControlStateSelected];
        btn.tag = 100+i;
        //btn.highlighted = YES;
        btn.adjustsImageWhenHighlighted = NO;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:btn];
        if (i == 0) {
            btn.selected = 1;
         
        }
  
    }
    
}

- (void)btnClick:(UIButton *)btn
{
    self.selectedIndex = btn.tag - 100;
    for (int i = 0; i < 4; i ++) {
        UIButton *btn1  = (UIButton *)[self.view viewWithTag:100+ i];
        if (btn1.tag == btn.tag) {
            btn1.userInteractionEnabled = NO;
            btn1.selected = YES;
        }else{
            btn1.userInteractionEnabled = YES;
            btn1.selected = NO;
        }
        
        
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
