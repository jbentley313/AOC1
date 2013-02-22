//
//  ViewController.m
//  Project4_Bentley_Jason
//
//  Created by theOwner on 2/22/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Username UILabel
    username = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 100.0f, 25.0f)];
    if (username != nil) {
        username.text = @"Username: ";
        username.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:username];
    }
    
    //Textfield for Username
    usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 210.0f, 25.0f)];
    if (usernameTextField != nil) {
        usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameTextField];
    }
    
    //Login Button
    login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (login != nil) {
        login.frame = CGRectMake(210.0f, 45.0f, 100.0f, 30.0f);
        [login setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:login];
    }
    
    
    //Username display and info label
    usernameDisplay = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 85.0f, 320.0f, 75.0f)];
    if (usernameDisplay != nil) {
        usernameDisplay.backgroundColor = [UIColor lightGrayColor];
        usernameDisplay.text = @"Please Enter Username";
        usernameDisplay.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:usernameDisplay];
    }
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
