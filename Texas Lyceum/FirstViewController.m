//
//  FirstViewController.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "FirstViewController.h"
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import "STTwitter.h"
@interface FirstViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet NSMutableArray *twitterFeed;

@end

@implementation FirstViewController
@synthesize thingsToDoWebView;
@synthesize thingsToDoActivityIndicator;
@synthesize navigationThingsToDo;

@synthesize babysitterWebView;
@synthesize babysitterActivityIndicator;
@synthesize navigationBabysitter;

@synthesize McAllenButton;
@synthesize PharrButton;
@synthesize MissionButton;
@synthesize SouthPadreButton;
@synthesize EdinburgButton;
@synthesize labelCell;
@synthesize homeTextView;

@synthesize textViewDescription;
int McAllenInt = 0;
int PharrInt = 0;
int EdinburgInt = 0;
int SouthPadreInt = 0;
int MissionInt = 0;

int CareInt = 0;
int SitterCityInt = 0;

int jearInt = 0;
int texasLyceumInt = 0;

int facebookInt = 0;
int twitterInt = 0;

#define   IsIphone5     ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )


/*-(void) twitterTimeline {
    ACAccountStore *account = [[ACAccountStore alloc]init];
    ACAccountType *accountType = [account accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    [account requestAccessToAccountsWithType:accountType options:nil completion:^(BOOL granted, NSError *error) {
        if (granted == YES) {
            
            NSArray *arrayOfAccounts = [account accountsWithAccountType:accountType];
            
            if ([arrayOfAccounts count] > 0) {
                ACAccount *twitterAccount = [arrayOfAccounts lastObject];
                NSURL *requestAPI = [NSURL URLWithString:@"http://api.twitter.com/1.1/statuses/user_timeline.json"];
            }
        } else {
            NSLog(@"%@", [error localizedDescription]);
        }
    
    }];
}*/


- (void)viewDidLoad
{
    [super viewDidLoad];
    [homeScroller setContentSize:CGSizeMake(320, 610)];
    STTwitterAPI *twitter = [STTwitterAPI twitterAPIAppOnlyWithConsumerKey:@"wRvhgdi5VR9N52lyQCHDp5RE7" consumerSecret:@"PY79rVMfO9YQ68TCAVpjTMwLztfzOFCwUMxzckVDHNz8i6mygD"];
    
    [twitter verifyCredentialsWithSuccessBlock:^(NSString *username) {
       [twitter getUserTimelineWithScreenName:@"TexasLyceum" successBlock:^(NSArray *statuses) {
           self.twitterFeed = [NSMutableArray arrayWithArray:statuses];
           [self.tableView reloadData];
       } errorBlock:^(NSError *error) {
           NSLog(@"%@", error.debugDescription);

       }];
    } errorBlock:^(NSError *error) {
        NSLog(@"%@", error.debugDescription);
    }];
    
    
	// Do any additional setup after loading the view, typically from a nib.
    if (McAllenInt == 1) {
          [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bigtex.com"]]];
        McAllenInt=0;
        self.navigationThingsToDo.topItem.title =@"Dallas";
    }
    if (PharrInt == 1) {
        [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://pharr-tx.gov/business/pharr-edc/"]]];
        PharrInt=0;
        self.navigationThingsToDo.topItem.title =@"Pharr";

    }
    if (EdinburgInt == 1) {
          [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.visitdallas.com/things-to-do/"]]];
        EdinburgInt=0;
        self.navigationThingsToDo.topItem.title =@"Dallas";

    }
    if (SouthPadreInt == 1) {
          [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.sopadre.com"]]];
        SouthPadreInt=0;
        self.navigationThingsToDo.topItem.title =@"South Padre";

    }
    if (MissionInt == 1) {
        [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.missionchamber.com"]]];
        MissionInt=0;
        self.navigationThingsToDo.topItem.title =@"Mission";
}
    
    if (CareInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.care.com/babysitters/mcallen-tx"]]];
        CareInt=0;
        self.navigationBabysitter.topItem.title =@"Care";
    }
    if (SitterCityInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.sittercity.com/babysitters/tx/mcallen.html"]]];
        SitterCityInt=0;
        self.navigationBabysitter.topItem.title =@"Sittercity";
    }
    if (jearInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.jeardev.com"]]];
        jearInt=0;
        self.navigationBabysitter.topItem.title =@"JEAR";
    }
    if (texasLyceumInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.texaslyceum.org/"]]];
        texasLyceumInt=0;
        self.navigationBabysitter.topItem.title =@"Texas Lyceum";
    }
    if (facebookInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.facebook.com/texaslyceum"]]];
        facebookInt=0;
        self.navigationBabysitter.topItem.title =@"Facebook";
    }
    if (twitterInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://twitter.com/TexasLyceum"]]];
        twitterInt=0;
        self.navigationBabysitter.topItem.title =@"Twitter";
    }
    if(IsIphone5)
    {
        
    }
    else
    {
        McAllenButton.frame = CGRectMake(25, 89, 275, 65);
        EdinburgButton.frame = CGRectMake(25, 157, 275, 65);
        SouthPadreButton.frame = CGRectMake(25, 225, 275, 65);
        MissionButton.frame = CGRectMake(25, 290, 275, 65);
        PharrButton.frame = CGRectMake(25, 357, 275, 65);
        
        textViewDescription.frame = CGRectMake(19, 265, 280, 136);

    }

    
#define K_LAUNCHED_BEFORE @"launchedBefore"
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    BOOL launchedBefore = [defaults boolForKey: K_LAUNCHED_BEFORE];
    if (!launchedBefore)
    {
        //Do first-time initialization
        launchedBefore = TRUE;
        [defaults setBool: launchedBefore forKey: K_LAUNCHED_BEFORE];
        [defaults synchronize];
        NSLog(@"first laaungh");
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Attendees"
                                                       message: @"Must register to attend"
                                                      delegate: self
                                             cancelButtonTitle:@"Dismiss"
                                             otherButtonTitles:nil];
        
        
        [alert show];
        
        
        //[guide1 show];
        
    } else {
        NSLog(@"second");
        
        
    }

}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    [self becomeFirstResponder];
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark Table View Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.twitterFeed.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    NSInteger idx = indexPath.row;
    NSDictionary *t = self.twitterFeed[idx];
   // UIImage
  //  NSDictionary *i = self.twitterFeed[idx];

   // cell.textLabel.text = t[@"text"];
      //UIImage *imageLogo = [UIImage imageNamed:@"Texas Lyceum Logo New TableView.jpg"];
   // imageView.frame = CGRectMake(0, 0, 100, 100);
   // cell.imageView.image = [UIImage imageNamed:@"Texas Lyceum Logo New TableView.jpg"];
    cell.textLabel.text = t[@"text"];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Texas Lyceum Logo New.jpg"]];
    [imageView setFrame:CGRectMake(5.0, 10.0, 80.0, 65.0)];
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    [cell addSubview:imageView];


    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)viewDidLayoutSubviews {
    if(IsIphone5)
    {
        
    }
    else
    {
        homeTextView.frame = CGRectMake(0, 145, 320, 205);
        homeScroller.frame = CGRectMake(0, 15, 320, 350);

      /*  CGRect      buttonFrame;
        buttonFrame.size = CGSizeMake(275, 65);
        McAllenButton.frame = buttonFrame;
        EdinburgButton.frame = buttonFrame;
        SouthPadreButton.frame = buttonFrame;
        MissionButton.frame = buttonFrame;
        PharrButton.frame = buttonFrame;*/

    }}

-(IBAction)McAllenLink:(id)sender {
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://mcallencvb.com"]];
  //  [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mcallencvb.com"]]];
    McAllenInt = 1;
}
-(IBAction)EdinburgLink:(id)sender {
   // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://edinburg.com"]];
  //  [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://edinburg.com"]]];
    EdinburgInt = 1;
}
-(IBAction)SouthPaderIslandLink:(id)sender {
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sopadre.com"]];
  //  [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.sopadre.com"]]];
    SouthPadreInt =1;
}

-(void)webViewDidStartLoad:(UIWebView *) webView {
    [thingsToDoActivityIndicator startAnimating];
    [babysitterActivityIndicator startAnimating];

}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [thingsToDoActivityIndicator stopAnimating];
    [babysitterActivityIndicator stopAnimating];


}

-(IBAction)jearLink:(id)sender {
    jearInt = 1;
}
-(IBAction)texasLyceumLink:(id)sender {
    texasLyceumInt = 1;
}
-(IBAction)careLink:(id)sender {
    CareInt = 1;
}
-(IBAction)sitterCityLink:(id)sender {
    SitterCityInt =1;
}
-(IBAction)PharrLink:(id)sender {
    //[thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://pharr-tx.gov/business/pharr-edc/"]]];
    PharrInt =1;

}

-(IBAction)facebookLink:(id)sender {
    facebookInt = 1;
}
-(IBAction)twitterLink:(id)sender {
    twitterInt = 1;
}

-(IBAction)MissionLink:(id)sender {
    //[thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.missionchamber.com"]]];
    MissionInt =1;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)emailButton:(id)sender {
    NSString *emailTitle = @"Texas Lyceum Meeting";
    // Email Content
    NSString *messageBody = @"";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"jdarling@mcallen.net"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
}


@end
