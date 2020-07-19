//
//  YunduoViewController.m
//  网易云
//
//  Created by 郭红乐 on 2020/7/19.
//  Copyright © 2020 无. All rights reserved.
//

#import "YunduoViewController.h"

@interface YunduoViewController ()

@end

@implementation YunduoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的音乐云盘";
    // Do any additional setup after loading the view.
    UIButton* btnXinxi = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnXinxi setImage:[[UIImage imageNamed:@"信息.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnXinxi.titleLabel.text = @"我的消息";
    btnXinxi.titleLabel.font = [UIFont systemFontOfSize:10];
    btnXinxi.frame = CGRectMake(50, 50, 260, 260);
    [self.view addSubview:btnXinxi];
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
