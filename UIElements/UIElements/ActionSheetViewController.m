//
//  ActionSheetViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "ActionSheetViewController.h"

@interface ActionSheetViewController ()

@end

@implementation ActionSheetViewController

@synthesize lblRate;

-(NSString *)description
{
    return [NSString stringWithFormat:@"ActionSheet"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"ActionSheet"];
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

-(IBAction)rateApp:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:@"Rate this App" delegate:self cancelButtonTitle:@"Cancel button" destructiveButtonTitle:nil otherButtonTitles:@"Rate 1 stars",@"Rate 2 Stars", @"Rate 3 Stars", @"Rate 4 Stars", @"Rate 5 Stars", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex)
    {
        case 0:
            self.lblRate.text = @"You've rated 1 star.";
            break;
        case 1:
            self.lblRate.text = @"You've rated 2 stars.";
            break;
        case 2:
            self.lblRate.text = @"You've rated 3 stars.";
            break;
        case 3: self.lblRate.text = @"You've rated 4 stars.";
            break;
        case 4: self.lblRate.text = @"You've rated 5 stars.";
            break;
        case 5: self.lblRate.text = @"You haven't rate this app yet.";
            break; 
    } 
}

@end
