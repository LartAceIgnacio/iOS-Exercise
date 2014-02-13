//
//  ImageViewController.h
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *img;

@property BOOL isFull;

-(void)handleTap;

@end