//
//  StepperViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/12/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "StepperViewController.h"

@interface StepperViewController ()

@end

@implementation StepperViewController

@synthesize stepper,lblName;

-(NSString *)description
{
    return [NSString stringWithFormat:@"Stepper"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"Stepper"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    stepper.value = 17.0;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)stepperClick:(id)sender
{
    [lblName setFont:[UIFont systemFontOfSize:stepper.value]];
}

@end
