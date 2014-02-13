//
//  ControlViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "ControlViewController.h"

@interface ControlViewController ()

@end

@implementation ControlViewController

@synthesize lblSliderValue,lblSwitchValue,slider,switchCtrl,lblSwitchName;

-(NSString *)description
{
    return [NSString stringWithFormat:@"Control"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"Control"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    lblSliderValue.text = [NSString stringWithFormat:@"Slider value %.2f",slider.value];
    
     // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sliderValueChange:(id)sender
{
    lblSliderValue.text = [NSString stringWithFormat:@"Slider value %.2f",slider.value];
}

-(IBAction)switchValueChange:(id)sender
{
    if(switchCtrl.on) {
        lblSwitchValue.text = @"On";
        lblSwitchName.hidden = NO;
    }
    else {
        lblSwitchValue.text = @"Off";
        lblSwitchName.hidden = YES;
    }
    
}

@end
