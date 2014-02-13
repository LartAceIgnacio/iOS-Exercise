//
//  SegmentedControlViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/12/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "SegmentedControlViewController.h"

@interface SegmentedControlViewController ()

@end

@implementation SegmentedControlViewController

@synthesize lblName, segmentedControl;

-(NSString *)description
{
    return [NSString stringWithFormat:@"Segmented Control"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"Segmented Control"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)segmentedControlClick:(id)sender
{
    UIColor *color;
    
    if(segmentedControl.selectedSegmentIndex == 0) {
        color = [UIColor blackColor];
    }
    else if(segmentedControl.selectedSegmentIndex == 1) {
        color = [UIColor greenColor];
    }
    else if(segmentedControl.selectedSegmentIndex == 2) {
        color = [UIColor redColor];
    }
    else if(segmentedControl.selectedSegmentIndex == 3) {
        color = [UIColor blueColor];
    }
    
    [lblName setTextColor:color];
}

@end
