//
//  ViewController.m
//  AOC1 Term 1302 Project3 
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

//Compaer (Bool) function
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

//DisplayAlertWithString Function
-(void)DisplayAlertWithString:(NSString*)alert
{
    UIAlertView *alertViewMsg = [[UIAlertView alloc] initWithTitle:@"Alert!" message:alert delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertViewMsg !=nil) {
        [alertViewMsg show];
    }
}

- (void)viewDidLoad
{
    //Call Append and return new string
    NSString *message = [self Append:@"AOC1 1302 Project 3" string2:@" Jason Bentley"];
        if (message !=nil) {
            [self DisplayAlertWithString:message];
        }
    
    //Add 2 NSIntegers and return
    int addedIntVal = [self Add:13 num2:42];
    
    //Convert NSInteger to NSNumber
    NSNumber *newNSNumber = [[NSNumber alloc] initWithInt:addedIntVal];
    
    //Convert NSNumber to NSString
    NSString *newString = [newNSNumber stringValue];
    
    //String to be Appended
    NSString *newMsg = [NSString stringWithFormat:@"The number is "];
    
    //Show the sum of the two numbers within an alert
    NSString *newMessage = [self Append:newMsg string2:newString];
        if (newMessage !=nil) {
            [self DisplayAlertWithString:newMessage];
        }
    
    //Compare and display
    NSInteger int1 = 24;
    NSInteger int2 = 24;
    BOOL compared = [self Compare:int1 int2:int2];
    NSString *compareMsg = [NSString stringWithFormat:@"Are %d and %d the same integer? %@", int1, int2, compared? @"YES":@"NO"];
        if (compared == YES) {
            [self DisplayAlertWithString:compareMsg];
        } else return;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
