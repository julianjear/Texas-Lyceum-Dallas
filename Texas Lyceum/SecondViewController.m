//
//  SecondViewController.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "SecondViewController.h"
#import "SessionViewController.h"
#import "FourthViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
#define   IsIphone5     ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [scheduleScroller setScrollEnabled:YES];
    if(IsIphone5)
    {
        [scheduleScroller setContentSize:CGSizeMake(320, 720)];
       // scheduleScroller.frame = CGRectMake(0, 121, 320, 453);

    }
    else
    {
        [scheduleScroller setContentSize:CGSizeMake(320, 808)];
        scheduleScroller.frame = CGRectMake(0, 80, 320, 453);
        

    }
}

-(void)goToNext:(id)sender {
    
}
- (void)viewDidLayoutSubviews {
    if(IsIphone5)
    {
        [scheduleScroller setContentSize:CGSizeMake(320, 720)];
        
    }
    else
    {
        [scheduleScroller setContentSize:CGSizeMake(320, 808)];
    }}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
