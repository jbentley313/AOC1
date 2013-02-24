//
//  ViewController.h
//  Project4_Bentley_Jason
//
//  Created by theOwner on 2/22/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    UILabel *username;
    UITextField *usernameTextField;
    UILabel *usernameDisplay;
    UIButton *logButton;
    UIButton *dateButton;
    NSString *dateText;
    UIButton *infoButton;
    UILabel *infoDisplay;
    NSString *updatedUserText;
    NSString *updatedDisplayText;
    NSDate *date;
    NSDateFormatter *dateFormatter;
    NSString *updatedInfoText;
    UIAlertView *dateAlert;
    
    
    
}

@end
