//
//  ButtonViewController.h
//  UIElements
//
//  Created by Ace Ignacio on 2/12/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *button;

-(IBAction)btnStandardClick:(id)sender;
-(IBAction)btnCustomClick:(id)sender;

@end

