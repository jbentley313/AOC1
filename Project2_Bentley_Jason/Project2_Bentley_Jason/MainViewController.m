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
    self.view.backgroundColor = [UIColor blackColor];
    
    //Create Title Label
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 775.f, 30.f)];
    if (titleLabel != nil)
    {
        titleLabel.backgroundColor = [UIColor blueColor];
        titleLabel.text = @"The Hatchet";
        titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    //Create Subview for Title Label
    [self.view addSubview:titleLabel];
    
    //Create Author Label
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 310.f, 30.f)];
    if (authorLabel != nil)
    {
        authorLabel.backgroundColor = [UIColor whiteColor];
        authorLabel.text = @"Author:";
        authorLabel.textAlignment = NSTextAlignmentRight;
    }
    
    //Create Subview for Author Label
    [self.view addSubview:authorLabel];
    
    //Create Author Text Label
    authorTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(310, 40, 465.f, 30.f)];
    if (authorTextLabel != nil)
    {
        authorTextLabel.backgroundColor = [UIColor yellowColor];
        authorTextLabel.text = @"Gary Paulsen";
        authorTextLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    //Create Subview for Author Text
    [self.view addSubview:authorTextLabel];
    
    //Create Published Label
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 310.f, 30.f)];
    if (publishedLabel != nil)
    {
        publishedLabel.backgroundColor = [UIColor whiteColor];
        publishedLabel.text = @"Published:";
        publishedLabel.textAlignment = NSTextAlignmentRight;
    }
    
    //Create Subview for Published Label
    [self.view addSubview:publishedLabel];
    
    //Create Published Text Label
    publishedTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(310, 80, 465.f, 30.f)];
    if (publishedTextLabel != nil)
    {
        publishedTextLabel.backgroundColor = [UIColor yellowColor];
        publishedTextLabel.text = @"September 30th, 1987";
        publishedTextLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    //Create Subview for Author Text
    [self.view addSubview:publishedTextLabel];
    
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
