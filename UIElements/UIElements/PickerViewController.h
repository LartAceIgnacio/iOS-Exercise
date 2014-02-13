//
//  PickerViewController.h
//  UIElements
//
//  Created by Ace Ignacio on 2/13/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property NSArray *colorArray;
@property (strong, nonatomic) IBOutlet UILabel *lblName;

@end
