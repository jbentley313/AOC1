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
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 25.0f)];
    if (username != nil) {
        username.text = @"Username: ";
//        username.backgroundColor = [UIColor yellowColor];
        username.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:username];
    }
    
    
    //Textfield for Username
    usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 400.f, 25.0f)];
    if (usernameTextField != nil) {
        usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameTextField];
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
