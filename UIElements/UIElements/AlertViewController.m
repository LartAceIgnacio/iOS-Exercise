//
//  AlertViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/12/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController


-(NSString *)description
{
    return [NSString stringWithFormat:@"AlertView"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"AlertView"];
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

-(IBAction)btnClick:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"UIAlertView" message:@"Sample AlertView" delegate:self cancelButtonTitle:@"Others" otherButtonTitles:@"Ok", @"Cancel", nil];
    
    [alert show];
}

@end
