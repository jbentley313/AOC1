//
//  ViewController.m
//  Project4_Bentley_Jason
//  AOC1 Term 1302 Project4
//
//  Created by theOwner on 2/22/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "ViewController.h"

#define LoginButton 0
#define DateButton 1
#define InfoButton 2

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
    logButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (logButton != nil) {
        logButton.tag = LoginButton;
        logButton.frame = CGRectMake(220.0f, 45.0f, 90.0f, 30.0f);
        [logButton setTitle:@"Login" forState:UIControlStateNormal];
        [logButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:logButton];
    }
    
    //Date Button
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil) {
        dateButton.tag = DateButton;
        dateButton.frame = CGRectMake(10.0f, 200.0f, 90.0f, 35.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    //Info Button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil) {
        infoButton.tag = InfoButton;
        infoButton.frame = CGRectMake(0.0f, 350.0f, 30.0f, 30.0f);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    
 
    //Username display and Info label
    usernameDisplay = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 85.0f, 320.0f, 75.0f)];
    if (usernameDisplay != nil) {
            usernameDisplay.text = @"Please Enter Username";
            usernameDisplay.textAlignment = NSTextAlignmentCenter;
            usernameDisplay.backgroundColor = [UIColor colorWithRed:0.231 green:0.639 blue:0.816 alpha:1] /*#3ba3d0*/;
            usernameDisplay.numberOfLines = 0;
            [self.view addSubview:usernameDisplay];
        
    }
    
    //UILabel for info
    infoDisplay = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 380.0f, 320.0f, 75.0f)];
    infoDisplay.numberOfLines = 0;
    [self.view addSubview:infoDisplay];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Click events
- (void)onClick:(UIButton*)clickedButton
{
    //Login btn events
    if (clickedButton.tag == LoginButton) {
        int count = usernameTextField.text.length;
        if (count == 0) {
            usernameDisplay.text = @"Username cannot be empty";
        } else {
            updatedUserText = usernameTextField.text;
            updatedDisplayText = [[NSString alloc] initWithFormat:@"User: %@ has been logged in", updatedUserText];
            usernameDisplay.text = updatedDisplayText;
            usernameTextField.text = nil;
            //hide keyboard after click
            [usernameTextField resignFirstResponder];
        }
    //Date btn events
    } else if (clickedButton.tag == DateButton) {
        date = [NSDate date];
        dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil) {
            [dateFormatter setDateStyle:NSDateFormatterLongStyle];
            [dateFormatter setTimeStyle:NSDateFormatterFullStyle];
            dateText = [dateFormatter stringFromDate:date];
            dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:dateText delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            [dateAlert show];
        }
    //Info btn events toggle
    } else if (clickedButton.tag == InfoButton) {
        int infoCount = infoDisplay.text.length;
        if (infoCount == 0) {
            updatedInfoText = [[NSString alloc] initWithFormat:@"This application was created by: Jason Bentley"];
            infoDisplay.text = updatedInfoText;
        } else {
            infoDisplay.text = nil;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
