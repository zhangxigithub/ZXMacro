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

    
    
    //if(isRetina) ALERT(@"retina");
    //else ALERT(@"normal");

    
    
    NSLog(@"%@",kApp.window);
    
    //if(self.window == kApp.window) ALERT(@"same");
    
    if(isIOS4) ALERT(@"4");
    if(isIOS5) ALERT(@"5");
    if(isIOS6) ALERT(@"6");
    
    NSLog(@"%f",iOS);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    NSString *pi = @"31415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823";

    //定义游标，分割奇数和偶数
    //奇数则从0到游标插入，偶数则从游标到结尾插入
    int vernier = 0;
    
    NSMutableArray *array = [NSMutableArray array];
    for(int i =0;i<pi.length;i++)
    {
        NSString *theChar = [pi substringWithRange:NSMakeRange(i, 1)];
        int theNumber = [theChar intValue];
        
        if(theNumber%2==1)
        {//奇数
            int insertPositin = 0;
            for(int j=0;j<vernier;j++)
            {
                if(theNumber > [[array objectAtIndex:insertPositin]intValue])
                    insertPositin = j;
            }
            [array insertObject:[NSNumber numberWithInt:theNumber] atIndex:insertPositin];
            vernier++;
        }else
        {//偶数
            int insertPositin = vernier;
            for(int j=vernier;j<array.count;j++)
            {
                if(theNumber>=[[array objectAtIndex:insertPositin] intValue])
                    insertPositin = j;
            }
            [array insertObject:[NSNumber numberWithInt:theNumber] atIndex:insertPositin];
        }
    }
    NSLog(@"%@",array);

    
    
    
    
    
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
@end
