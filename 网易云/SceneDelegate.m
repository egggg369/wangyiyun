//
//  SceneDelegate.m
//  网易云
//
//  Created by 郭红乐 on 2020/7/16.
//  Copyright © 2020 无. All rights reserved.
//

#import "SceneDelegate.h"
#import "CountViewController.h"
#import "MyselfViewController.h"
#import "VideoViewController.h"
#import "VillageViewController.h"
#import "FindViewController.h"
#import "YunduoViewController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc]initWithWindowScene:scene];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //创建控制器一
    CountViewController* countViewController = [[CountViewController alloc] init];
    UINavigationController* countnav = [[UINavigationController alloc] initWithRootViewController:countViewController];
    //蓝色背景
    countViewController.view.backgroundColor = [UIColor whiteColor];
    
    //创建视图控制器二
    MyselfViewController* myselfViewController = [[MyselfViewController alloc] init];
    UINavigationController* myselfnav = [[UINavigationController alloc] initWithRootViewController:myselfViewController];
    
    //黄色背景
    myselfViewController.view.backgroundColor = [UIColor whiteColor];
    
    FindViewController* findViewController = [[FindViewController alloc] init];
    findViewController.view.backgroundColor = [UIColor whiteColor];
    
    VideoViewController* videoViewController = [[VideoViewController alloc] init];
    videoViewController.view.backgroundColor = [UIColor whiteColor];
    
    VillageViewController* villageViewController = [[VillageViewController alloc] init];
    villageViewController.view.backgroundColor = [UIColor whiteColor];
    
    YunduoViewController* yunduoViewController = [[YunduoViewController alloc] init];
    yunduoViewController.view.backgroundColor = [UIColor whiteColor];
    
    myselfViewController.title = @"我的";
    countViewController.title = @"账户";
    videoViewController.title = @"视频";
    villageViewController.title = @"云村";
    findViewController.title = @"发现";
    
    //创建分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    //创建一个控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组中
    //NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond, vcThird, nil];
    NSArray* arrayVC = [NSArray arrayWithObjects:findViewController,videoViewController,myselfnav,villageViewController,countnav, nil];
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = tbController;
    
    //设置选中的视图控制器的索引
    //通过索引来确定显示哪一个控制器
    //tbController.selectedIndex = 0;
    
    //改变工具栏颜色
    tbController.tabBar.barTintColor = [UIColor whiteColor];
    //改变按钮文字颜色
    tbController.tabBar.tintColor = [UIColor redColor];
    
    //设置分栏控制器的工具栏的透明度
    tbController.tabBar.translucent = NO;
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
