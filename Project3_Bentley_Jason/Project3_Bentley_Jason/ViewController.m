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

//DisplayAlertWithString Function
-(void)DisplayAlertWithString:(NSString*)alert
{
    UIAlertView *alertViewMsg = [[UIAlertView alloc] initWithTitle:@"Hi!" message:alert delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertViewMsg !=nil) {
        [alertViewMsg show];
    }

}

//

 




- (void)viewDidLoad
{
    //Call Append and return new string
    NSString *message = [self Append:@"AOC1 1302 Project 2" string2:@" Jason Bentley"];
    
    //Display the new string
    [self DisplayAlertWithString:message];
    
    
    //Add 2 NSIntegers and return
    int addedIntVal = [self Add:13 num2:42];
    
    //Convert NSInteger to NSNumber
    NSNumber *newNSNumber = [[NSNumber alloc] initWithInt:addedIntVal];
    
    //Convert NSNumber to NSString
    NSString *newString = [newNSNumber stringValue];
    

    NSString *newMsg = [NSString stringWithFormat:@"The number is "];
    
//    NSString *lastMsg = [self Add]
    
    //Show the sum of the two numbers within an alert
    NSString *newMessage = [self Append:newMsg string2:newString];
    [self DisplayAlertWithString:newMessage];
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
