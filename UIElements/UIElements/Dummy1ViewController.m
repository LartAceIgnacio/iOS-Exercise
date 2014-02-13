//
//  Dummy1ViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Dummy1ViewController.h"

@interface Dummy1ViewController ()

@end

@implementation Dummy1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem *tbi = [self tabBarItem];
        
        [tbi setTitle:@"View1"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor greenColor]];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
