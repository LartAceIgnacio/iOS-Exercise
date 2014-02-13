//
//  ActionSheetViewController.h
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionSheetViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnRate;
@property (strong, nonatomic) IBOutlet UILabel *lblRate;

-(IBAction)rateApp:(id)sender;

@end
