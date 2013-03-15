//
//  AppDelegate.m
//  Demo
//
//  Created by 张 玺 on 13-3-15.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "AppDelegate.h"
#import "ZXMicro.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    
    
    if(isRetina) ALERT(@"retina");
    else ALERT(@"normal");

    
    
    NSLog(@"%@",kApp.window);
    
    if(self.window == kApp.window) ALERT(@"same");
    
    
    
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
@end
