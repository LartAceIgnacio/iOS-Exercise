//
//  PickerViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

@synthesize picker,colorArray, lblName;

-(NSString *)description
{
    return [NSString stringWithFormat:@"Picker"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"Picker"];
        self.colorArray = [[NSArray alloc]initWithObjects:@"Black",@"Red",@"Blue",@"Yellow",@"Violet", nil];
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

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.colorArray objectAtIndex:row];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 5;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch(row)
    {
            
        case 0:
            lblName.textColor = [UIColor blackColor];
            break;
        case 1:
            lblName.textColor = [UIColor redColor];
            break;
        case 2:
            lblName.textColor = [UIColor blueColor];
            break;
        case 3:
            lblName.textColor = [UIColor yellowColor];
            break;
        case 4:
            lblName.textColor = [UIColor purpleColor];
            break;
    }
    
}

@end
