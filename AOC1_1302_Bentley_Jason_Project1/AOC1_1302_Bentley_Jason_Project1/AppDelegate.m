//
//  AppDelegate.m
//  AOC1_1302_Bentley_Jason_Project1
//
//  Created by Jason Bentley on 2/5/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //create a float
    float beachTemp = 73.2f;
    //Cast float to Int
    int intBeachTemp = (int) beachTemp;
    //Write log output with Float and Int
    NSLog(@"The current temperature at the beach is %.1f degrees. Since the temp is basically %d degrees, I'll see if my family wants to go!", beachTemp, intBeachTemp);
    //And,OR Comparison & if, else if, and else
    BOOL isSunny = NO;
    BOOL isWeekDay = NO;
    int schoolProjectsDue = 1;
    if (((isWeekDay == NO) && (beachTemp > 89.9f)) || (schoolProjectsDue > 1)) {
        NSLog(@"Looks like today isn't the best day to go to the beach.");
    }
    else if (isSunny == NO) {
        NSLog(@"Too bad it's the weekend with no school projects due and it's not sunny outside!");
    }
    //
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
