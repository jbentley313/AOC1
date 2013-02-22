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
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 25.0f)];
    if (username != nil) {
        username.text = @"Username: ";
        username.backgroundColor = [UIColor yellowColor];
        username.textAlignment = NSTextAlignmentCenter;
    }
    [self.view addSubview:username];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
