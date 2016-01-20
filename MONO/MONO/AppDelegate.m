//
//  AppDelegate.m
//  MONO
//
//  Created by qianfeng on 16/1/19.
//  Copyright (c) 2016年 China. All rights reserved.
//

#import "AppDelegate.h"
#import "RecommendViewController.h"
#import "SpecialViewController.h"
#import "ArchitectViewController.h"
#import "MineViewController.h"

@interface AppDelegate ()
{
    RecommendViewController *_recommendController;
    UINavigationController *_navRecommendController;
    
    SpecialViewController *_specialController;
    UINavigationController *_navSpecialController;
    
    ArchitectViewController *_architectController;
    UINavigationController *_navArchitectController;
    
    MineViewController *_mineController;
    UINavigationController *_navMineController;
    
    UITabBarController *_mainTabBarController;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    return YES;
}
- (UIViewController *)createRootViewController
{
    _mainTabBarController = [[UITabBarController alloc]init];
    _mainTabBarController.tabBar.backgroundColor = [UIColor blackColor];
    
    //设置推荐页面
    _recommendController = [[RecommendViewController alloc]init];
    _navRecommendController = [[UINavigationController alloc]initWithRootViewController:_recommendController];
    UITabBarItem *recommendItem = [[UITabBarItem alloc]initWithTitle:nil image:nil selectedImage:nil];
    _navRecommendController.tabBarItem = recommendItem;
    
    //专题
    _specialController = [[SpecialViewController alloc]init];
    _navSpecialController = [[UINavigationController alloc]initWithRootViewController:_specialController];
    UITabBarItem *specialItem = [[UITabBarItem alloc]initWithTitle:nil image:nil selectedImage:nil];
    _navSpecialController.tabBarItem = specialItem;
    
    //造物主
    _architectController = [[ArchitectViewController alloc]init];
    _navArchitectController = [[UINavigationController alloc]initWithRootViewController:_architectController];
    UITabBarItem *architectItem = [[UITabBarItem alloc]initWithTitle:nil image:nil selectedImage:nil];
    _navArchitectController.tabBarItem = architectItem;
    
    //我的
    _mineController = [[MineViewController alloc]init];
    _navMineController = [[UINavigationController alloc]initWithRootViewController:_mineController];
    UITabBarItem *mineItem = [[UITabBarItem alloc]initWithTitle:nil image:nil selectedImage:nil];
    _navMineController.tabBarItem = mineItem;
    
    _mainTabBarController.viewControllers = @[_navRecommendController,_navSpecialController,_navArchitectController,_navMineController];
    
    
    return _mainTabBarController ;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
