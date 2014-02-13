//
//  AlertViewController.h
//  UIElements
//
//  Created by Ace Ignacio on 2/12/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnAlertView;

-(IBAction)btnClick:(id)sender;

@end
