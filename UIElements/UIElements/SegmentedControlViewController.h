//
//  SegmentedControlViewController.h
//  UIElements
//
//  Created by Ace Ignacio on 2/12/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentedControlViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblName;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

-(IBAction)segmentedControlClick:(id)sender;

@end
