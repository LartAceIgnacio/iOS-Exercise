//
//  ImageViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

@synthesize img,isFull;

-(NSString *)description
{
    return [NSString stringWithFormat:@"ImageView"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"Image"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    tapGesture.numberOfTapsRequired = 2;
    [img setUserInteractionEnabled:YES];
    [img addGestureRecognizer:tapGesture];

    img.userInteractionEnabled = YES;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)handleTap
{
    if(isFull) {
        NSLog(@"Resize to small");
        img.frame = CGRectMake(20, 157, 280, 195);
        isFull = NO;
    } else {
        NSLog(@"Resize to full");
        img.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        isFull = YES;
    }
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    /*UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    
    if(CGRectContainsPoint(img.frame, location)){
        NSLog(@"tapped on image");
    }
    else{
        NSLog(@"Just tapped");
    }
    
    for(UITouch *t in touches) {
        //Is this a double tap?
        if([t tapCount] > 1) {
            [self handleTap];
            return;
        }
    }
     */
}
 
- (void)singleTapAction:(UIGestureRecognizer *)singleTap
{
  }

@end
