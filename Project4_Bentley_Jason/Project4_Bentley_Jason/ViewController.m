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
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil) {
        button.tag = 0;
        button.frame = CGRectMake(220.0f, 45.0f, 90.0f, 30.0f);
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    //Extra Button
//    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    if (button != nil) {
//        button.tag = 1;
//        button.frame = CGRectMake(90.0f, 45.0f, 90.0f, 30.0f);
//        [button setTitle:@"Login2" forState:UIControlStateNormal];
//        [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
//        [self.view addSubview:button];
//    }
    
    //Username display and info label
    usernameDisplay = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 85.0f, 320.0f, 75.0f)];
    
    
    if (usernameDisplay != nil) {
        int count = usernameTextField.text.length;
        if (count == 0) {usernameDisplay.text = @"Please Enter Username";
            usernameDisplay.textAlignment = NSTextAlignmentCenter;
            usernameDisplay.backgroundColor = [UIColor lightGrayColor];
            [self.view addSubview:usernameDisplay];
        }
    }
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Click events
- (void)onClick:(UIButton*)clickedButton
{
    if (clickedButton.tag == 0) {
        int count = usernameTextField.text.length;
        if (count == 0) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Whoops!" message:@"Enter your username" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [alertView show];
        } else {
            NSString *updatedUserText = usernameTextField.text;
            NSString *updatedDisplayText = [[NSString alloc] initWithFormat:@"User: %@ has been logged in", updatedUserText];
            usernameDisplay.text = updatedDisplayText;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Whoops!" message:@"Enter your username" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
//[alertView show];
//

@end
