//
//  MLKLoadingAlertView.m
//  MLKLoadingAlertView
//
//  Created by NagaMalleswar on 13/01/14.
//  Copyright (c) 2014 Nagamalleswar. All rights reserved.
//

#import "MLKLoadingAlertView.h"

#define ACTIVITY_INDICATOR_CENTER   CGPointMake(130, 90)

@implementation MLKLoadingAlertView

- (id)initWithTitle:(NSString *)title
{
    if ( self = [super init] )
    {
        self.title = title;
        self.message = @"\n\n";
        
        [self setDelegate:self];
    }
    
    return self;
}

// You can Customise this based on your requirement by adding subviews.
- (void)didPresentAlertView:(UIAlertView *)alertView
{
    NSArray *subviews = [UIApplication sharedApplication].keyWindow.rootViewController.presentedViewController.view.subviews;
    
    if( subviews.count >= 1 )
    {
        // iOS while presenting an alertview uses a presening view controller. That controller's view has several subviews. I have picked one
        // subview from it which has frame similar to the alertview frame.
        UIView *presentedView = [subviews objectAtIndex:0];
        
         UIActivityIndicatorView *customActivityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        [customActivityIndicator startAnimating];
        customActivityIndicator.center = ACTIVITY_INDICATOR_CENTER;
        
        [presentedView addSubview:customActivityIndicator];
    }
}

@end
