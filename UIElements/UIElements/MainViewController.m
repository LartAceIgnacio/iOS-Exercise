//
//  MainViewController.m
//  UIElements
//
//  Created by Ace Ignacio on 2/12/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "MainViewController.h"
#import "ButtonViewController.h"
#import "ControlViewController.h"
#import "AlertViewController.h"
#import "StepperViewController.h"
#import "SegmentedControlViewController.h"
#import "TextViewController.h"
#import "PickerViewController.h"
#import "ImageViewController.h"
#import "ActionSheetViewController.h"
#import "Dummy1ViewController.h"
#import "Dummy2ViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize viewControllersArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        [self setTitle:@"UIElements"];
        viewControllersArray = [[NSMutableArray alloc] init];
        
        // Button
        ButtonViewController *bvc = [[ButtonViewController alloc]initWithNibName:@"ButtonViewController"
                                                                          bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:bvc
                                                                    forKey:@"Title"]];
        
        // Controls
        ControlViewController *cvc = [[ControlViewController alloc]initWithNibName:@"ControlViewController"
                                                                            bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:cvc
                                                                    forKey:@"Title"]];
        
        // Text
        TextViewController *tvc = [[TextViewController alloc]initWithNibName:@"TextViewController"
                                                                      bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:tvc
                                                                    forKey:@"Title"]];
        
        // Picker
        PickerViewController *pvc = [[PickerViewController alloc]initWithNibName:@"PickerViewController"
                                                                          bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:pvc
                                                                    forKey:@"Title"]];
        
        // Image
        ImageViewController *ivc = [[ImageViewController alloc]initWithNibName:@"ImageViewController"
                                                                        bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:ivc
                                                                    forKey:@"Title"]];
        
        // Alert
        AlertViewController *avc = [[AlertViewController alloc]initWithNibName:@"AlertViewController"
                                                                        bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:avc
                                                                    forKey:@"Title"]];
        
        // Segmented Control
        SegmentedControlViewController *scvc = [[SegmentedControlViewController alloc]initWithNibName:@"SegmentedControlViewController"
                           bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:scvc
                                                                    forKey:@"Title"]];

        // Stepper
        StepperViewController *svc = [[StepperViewController alloc]initWithNibName:@"StepperViewController"
                                                                            bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:svc
                                                                    forKey:@"Title"]];
        
        // Tab Bar
        UITabBarController *tabBarController = [[UITabBarController alloc]init];
        
        UIViewController *view1 = [[Dummy1ViewController alloc]init];
        UIViewController *view2 = [[Dummy2ViewController alloc]init];
        
        NSArray *container = [[NSArray alloc]initWithObjects:view1,view2, nil];
        
        [tabBarController setViewControllers:container animated:YES];
        
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:tabBarController 
                                                                    forKey:@"Title"]];
        
        // Action Sheet
        ActionSheetViewController *asvc = [[ActionSheetViewController alloc]initWithNibName:@"ActionSheetViewController"
                           bundle:nil];
        [viewControllersArray addObject:[NSDictionary dictionaryWithObject:asvc
                                                                    forKey:@"Title"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [viewControllersArray count];
    //return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    NSDictionary *dict = [NSDictionary dictionary];
    dict = [viewControllersArray objectAtIndex:[indexPath row]];
    [[cell textLabel]setText:[NSString stringWithFormat:@"%@",[dict objectForKey:@"Title"]]];
    [[cell detailTextLabel]setText:[NSString stringWithFormat:@"%@",[dict objectForKey:@"Title"]]];

    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    NSDictionary *selectedRow = [viewControllersArray objectAtIndex:[indexPath row]];
    UIViewController *vc = [selectedRow objectForKey:@"Title"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end