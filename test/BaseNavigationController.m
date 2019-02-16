//
//  BaseNavigationController.m
//  test
//
//  Created by Linlin Ge on 2019/1/14.
//  Copyright © 2019年 zcc. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


+ (void)initialize{
    //导航条颜色
    [[UINavigationBar appearance] setBarTintColor:[UIColor greenColor]];
    //导航条字体颜色
    [UINavigationBar appearance].tintColor = [UIColor blueColor];
    
    //导航条左右按钮颜色
    UIBarButtonItem *appearce                        = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttrs          = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName]        = [UIColor lightGrayColor];
    textAttrs[NSFontAttributeName]                   = [UIFont systemFontOfSize:16];
    [appearce setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
     //导航条左右按钮高亮状态下颜色
    NSMutableDictionary *highTextAttrs               = [NSMutableDictionary dictionary];
    highTextAttrs[NSForegroundColorAttributeName]    =[UIColor lightGrayColor];
    highTextAttrs[NSFontAttributeName]               = [UIFont systemFontOfSize:16];
    [appearce setTitleTextAttributes:highTextAttrs forState:UIControlStateHighlighted];
    
    //导航条字体颜色
    NSDictionary *attribute = @{NSForegroundColorAttributeName:[UIColor lightGrayColor],NSFontAttributeName :[UIFont systemFontOfSize:17]};
    [[UINavigationBar appearance] setTitleTextAttributes:attribute];
    
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
