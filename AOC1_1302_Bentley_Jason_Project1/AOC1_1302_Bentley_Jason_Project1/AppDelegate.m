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
    
    //Create a float
    float beachTemp = 73.2f;
    
    //Cast float to Int
    int intBeachTemp = (int) beachTemp;
    
    //Write log output with Float and Int
    NSLog(@"The current temperature at the beach is %.1f degrees. Since the temp is basically %d degrees, I'll see if my family wants to go!", beachTemp, intBeachTemp);
    
    //Variables for comparison 
    BOOL isSunny = YES;
    BOOL isWeekDay = NO;
    int schoolProjectsDue = 1;
    
    //Comparison of float, Int and BOOL val 
    if (((isWeekDay == NO) && (beachTemp > 89.9f)) || (schoolProjectsDue > 1)) {
        NSLog(@"Looks like today isn't the best day to go to the beach.");
    }
    else if (isSunny == NO) {
        NSLog(@"Too bad it's the weekend with no school projects due and it's not sunny outside!");
    }
    else {
        NSLog(@"It looks like it's a go for the beach!");
    }
    
    //Single Loop
    NSLog(@"My daughter is ready to race to the car with her beach toys. She always counts to 12. Ready, GO!");
    for (int x = 1; x <= 12; x++) {
        NSLog(@"Counting %d!", x);
    }
    
    //Nested Loop
    NSLog(@"She now will spot 2 red cars for every mile. We live ten miles away from the beach.");
    for (int x = 1; x <= 10; x++) {
        NSLog(@"Mile %d", x);
        for (int i = 1; i < 3; i++) {
            NSLog(@"I spot red car #%d!", i);
        }
    }
    //While Loop
    int hour = 1;
    while (hour <= 5) {
        NSLog(@"We have %d hours left to enjoy the sun.", 6 - hour);
        hour ++;
    }
    //Print out string for end of story
    NSLog(@"We are out of time.  Time to load up the car and go home.");
    
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
