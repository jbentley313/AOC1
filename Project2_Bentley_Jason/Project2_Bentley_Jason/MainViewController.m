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
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 768.f, 30.f)];
    if (titleLabel != nil)
    {
        titleLabel.backgroundColor = [UIColor blueColor];
        titleLabel.text = @"The Hatchet";
        titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    //Create Subview for Title Label
    [self.view addSubview:titleLabel];
    
    //Create Author Label
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 210.f, 30.f)];
    if (authorLabel != nil)
    {
        authorLabel.backgroundColor = [UIColor whiteColor];
        authorLabel.textColor = [UIColor purpleColor];
        authorLabel.text = @"Author:";
        authorLabel.textAlignment = NSTextAlignmentRight;
    }
    
    //Create Subview for Author Label
    [self.view addSubview:authorLabel];
    
    //Create Author Text Label
    authorTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(210, 40, 558.f, 30.f)];
    if (authorTextLabel != nil)
    {
        authorTextLabel.backgroundColor = [UIColor yellowColor];
        authorTextLabel.textColor = [UIColor redColor];
        authorTextLabel.text = @"Gary Paulsen";
        authorTextLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    //Create Subview for Author Text
    [self.view addSubview:authorTextLabel];
    
    //Create Published Label
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 210.f, 30.f)];
    if (publishedLabel != nil)
    {
        publishedLabel.backgroundColor = [UIColor orangeColor];
        publishedLabel.textColor = [UIColor greenColor];
        publishedLabel.text = @"Published:";
        publishedLabel.textAlignment = NSTextAlignmentRight;
    }
    
    //Create Subview for Published Label
    [self.view addSubview:publishedLabel];
    
    //Create Published Text Label
    publishedTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(210, 80, 558.f, 30.f)];
    if (publishedTextLabel != nil)
    {
        publishedTextLabel.backgroundColor = [UIColor lightGrayColor];
        publishedTextLabel.textColor = [UIColor magentaColor];
        publishedTextLabel.text = @"September 30th, 1987";
        publishedTextLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    //Create Subview for Published Text
    [self.view addSubview:publishedTextLabel];
    
    //Create Summary Label
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 110.f, 30.f)];
    if (summaryLabel != nil)
    {
        summaryLabel.backgroundColor = [UIColor brownColor];
        summaryLabel.textColor = [UIColor cyanColor];
        summaryLabel.text = @"Summary:";
        summaryLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    //Create Subview for Summary Label
    [self.view addSubview:summaryLabel];
    
    //Create Summary Text Label
    summaryTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 768.f, 100.f)];
    if (summaryTextLabel != nil)
    {
        summaryTextLabel.backgroundColor = [UIColor colorWithRed:0 green:0.8 blue:0 alpha:1]; /*#00cc00*/
        summaryTextLabel.textColor = [UIColor colorWithRed:0.651 green:0 blue:0 alpha:1]; /*#a60000*/
        summaryTextLabel.numberOfLines = 3;
        summaryTextLabel.text = @"A boy is flying in a small plane in Northern Canada when the pilot has a heart attack. He tries to land the plane, but crashes into a river. Left with only a hatchet and an emergency radio, he survives his ordeal by hunting, making shelter, and making fire.";
        summaryTextLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    //Create Subview for Summary Text Label
    [self.view addSubview:summaryTextLabel];
    
    //NSString
    NSString *itemString[] = {@"hatchet", @"plane", @"radio", @"pilot", @"firewood"};
    
    //NSArray
    NSArray *arrayFromStrings  = [NSArray arrayWithObjects : itemString count:5];
                                
    //NSMutable String
    NSMutableString *itemMuteSrg = [[NSMutableString alloc] initWithCapacity : 5];
    //Loop thru array into M<utableString
    for (int j = 0; j < [arrayFromStrings count]; j++)
    {
        [itemMuteSrg appendString:[arrayFromStrings objectAtIndex : j]];
        //add 'and' after index 3
        if (j == 3) {
            [itemMuteSrg appendFormat:@", and "];
        //add ', ' after any index other than 4
        }else if (j != 4) {
            [itemMuteSrg appendFormat:@", "];
        }
    }
    
    //Create ListofItems Label
    listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 270, 110.f, 30.f)];
    if (listLabel != nil)
    {
        listLabel.backgroundColor = [UIColor colorWithRed:1 green:0.251 blue:0.251 alpha:1]; /*#ff4040*/
        listLabel.textColor = [UIColor colorWithRed:1 green:0.698 blue:0.451 alpha:1]; /*#ffb273*/
        listLabel.text = @"List of Items:";
        listLabel.textAlignment = NSTextAlignmentLeft;
    }
    
    //Create Subview for listLabel
    [self.view addSubview:listLabel];
    
    //Create Mute Label to display list
    muteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 310, 768.f, 50.f)];
    if (muteLabel != nil)
    {
        muteLabel.backgroundColor = [UIColor colorWithRed:1 green:0.451 blue:0.451 alpha:1]; /*#ff7373*/
        muteLabel.textColor = [UIColor colorWithRed:0.522 green:0 blue:0.294 alpha:1]; /*#85004b*/
        muteLabel.text = itemMuteSrg;
        muteLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    //Create subview for muteLabel
    [self.view addSubview:muteLabel];
    
    
    
    

    
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
