//
//  AppDelegate.m
//  Demo
//
//  Created by 张 玺 on 13-3-15.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

#import "ZXMacro.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    NSLog(@"%@",kApp.window);
    NSLog(@"%f",iOS);
    

    

    __block AppDelegate *blockSelf = self;

    aBlock=^{
        [blockSelf->item objectAtIndex:0];
        [blockSelf log];
    };
    aBlock();
    

    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"text" ofType:@"text"];
    NSString *string = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];

    ;
    
    NSLog(@"%@",string);
    NSLog(@"%@",FileString(@"text", @"text"));
    
    self.window.backgroundColor = HexRGB(0x187eb4);
    self.window.backgroundColor = HexRGBAlpha(0x187eb4,0.5);
    self.window.backgroundColor = RGB(200, 130, 10);
    self.window.backgroundColor = RGBAlpha(200, 130, 10,0.4);
    
    [self.window makeKeyAndVisible];
    return YES;
}
-(void)log
{
    NSLog(@"self log");
}
@end
