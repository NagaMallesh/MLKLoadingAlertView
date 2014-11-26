//
//  ViewController.m
//  MLKLoadingAlertView
//
//  Created by NagaMalleswar on 13/01/14.
//  Copyright (c) 2014 Nagamalleswar. All rights reserved.
//

#import "ViewController.h"
#import "MLKLoadingAlertView.h"

#define TITLE   @"Loading iOS Customised Alert View"
#define DELAY   10.0

@interface ViewController ()

@property(nonatomic,retain) MLKLoadingAlertView *loadingAlertView;

@end

@implementation ViewController

@synthesize loadingAlertView;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)showLoadingAlertForiOS7:(id)sender
{
    loadingAlertView = [[MLKLoadingAlertView alloc] initWithTitle:TITLE];
    [loadingAlertView show];
    
    // Dismiss alert view once your processing/loading is done.
    // In this example I am dismissing it after 10 seconds
    [self performSelector:@selector(dismissLoadingAlertView) withObject:nil afterDelay:DELAY];
}

- (void)dismissLoadingAlertView
{
    [loadingAlertView dismissWithClickedButtonIndex:-1 animated:YES];
}

@end
