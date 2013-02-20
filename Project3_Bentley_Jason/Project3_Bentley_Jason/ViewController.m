//
//  ViewController.m
//  Project3_Bentley_Jason
//
//  Created by theOwner on 2/18/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Add Function
-(NSInteger)Add:(NSInteger)num1 num2:(NSInteger)num2
{
    return  (num1 + num2);
    
}

//Bool function
-(BOOL)Compare:(NSInteger)int1 int2:(NSInteger)int2
{
    if (int2 == int1) {
        return YES;
    }
    else {
        return NO;
    }
}

//Append Function
-(NSString*)Append:(NSString*)string1 string2:(NSString*)string2
{   //MutableString
    NSMutableString *appendFun = [[NSMutableString alloc] initWithString:string1];
    NSString *appendedString = [appendFun stringByAppendingString:string2];
    return appendedString;
}





- (void)viewDidLoad
{
    [self Add:3 num2:3];
    [self Append:@"hello" string2:@"I'm Jason"];
//    [self Compare:1 num2:1];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
