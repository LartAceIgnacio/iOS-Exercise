//
//  ControlViewController.h
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ControlViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblSliderValue;
@property (strong, nonatomic) IBOutlet UILabel *lblSwitchValue;
@property (strong, nonatomic) IBOutlet UILabel *lblSwitchName;

@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UISwitch *switchCtrl;

-(IBAction)sliderValueChange:(id)sender;
-(IBAction)switchValueChange:(id)sender;

@end
