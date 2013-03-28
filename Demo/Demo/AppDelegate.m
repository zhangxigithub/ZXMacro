//
//  AppDelegate.m
//  Demo
//
//  Created by 张 玺 on 13-3-15.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "AppDelegate.h"
#import "ZXMacro.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    NSLog(@"%@",kApp.window);
    NSLog(@"%f",iOS);
    

    
    
    //self.window.root

    
    self.window.backgroundColor = HexRGB(0x187eb4);
    self.window.backgroundColor = HexRGBAlpha(0x187eb4,0.5);
    self.window.backgroundColor = RGB(200, 130, 10);
    self.window.backgroundColor = RGBAlpha(200, 130, 10,0.4);
    
    [self.window makeKeyAndVisible];
    return YES;
}
@end
