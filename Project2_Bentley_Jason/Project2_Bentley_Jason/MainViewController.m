//
//  MainViewController.m
//  Project2_Bentley_Jason
//
//  Created by theOwner on 2/11/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{   //Change BG Color
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Create Title Label
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 775.f, 30.f)];
  
        titleLabel.backgroundColor = [UIColor blueColor];
        titleLabel.text = @"The Hatchet";
        titleLabel.textAlignment = NSTextAlignmentCenter;
    
    
    
    [self.view addSubview:titleLabel];
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
