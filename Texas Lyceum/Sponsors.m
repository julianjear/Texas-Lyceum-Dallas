//
//  Sponsors.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 7/28/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "Sponsors.h"

@interface Sponsors ()

@end

@implementation Sponsors
@synthesize sponsorsWebView;
int EdinburgSponsorInt = 0;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (EdinburgSponsorInt == 1) {
        [sponsorsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://edinburg.com"]]];
        EdinburgSponsorInt=0;
       // self.navigationThingsToDo.topItem.title =@"Edinburg";
  
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)EdinburgVisitWebsite:(id)sender {
   // [sponsorsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://edinburg.com"]]];
    EdinburgSponsorInt = 1;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
