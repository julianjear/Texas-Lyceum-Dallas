//
//  FirstViewController.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface FirstViewController : UIViewController <MFMailComposeViewControllerDelegate, UITableViewDataSource, UITableViewDelegate>  {
    IBOutlet UIWebView *thingsToDoWebView;
    IBOutlet UIActivityIndicatorView *thingsToDoActivityIndicator;
    IBOutlet UINavigationBar *navigationThingsToDo;
    
    IBOutlet UIWebView *babysitterWebView;
    IBOutlet UIActivityIndicatorView *babysitterActivityIndicator;
    IBOutlet UINavigationBar *navigationBabysitter;
    
    IBOutlet UIButton *McAllenButton;
    IBOutlet UIButton *EdinburgButton;
    IBOutlet UIButton *SouthPadreButton;
    IBOutlet UIButton *MissionButton;
    IBOutlet UIButton *PharrButton;
    
    IBOutlet UILabel *labelCell;
    
    IBOutlet UITextView *textViewDescription;

    IBOutlet UITextView *homeTextView;
    IBOutlet UIScrollView *homeScroller;

}

@property(nonatomic, retain) IBOutlet UIWebView *thingsToDoWebView;
@property(nonatomic, retain) IBOutlet UIActivityIndicatorView *thingsToDoActivityIndicator;
@property(nonatomic, retain) IBOutlet UINavigationBar *navigationThingsToDo;

@property(nonatomic, retain) IBOutlet UIWebView *babysitterWebView;
@property(nonatomic, retain) IBOutlet UIActivityIndicatorView *babysitterActivityIndicator;
@property(nonatomic, retain) IBOutlet UINavigationBar *navigationBabysitter;

@property (strong, nonatomic) IBOutlet UIButton *McAllenButton;
@property (nonatomic, retain) IBOutlet UIButton *EdinburgButton;
@property (nonatomic, retain) IBOutlet UIButton *SouthPadreButton;
@property (nonatomic, retain) IBOutlet UIButton *MissionButton;
@property (nonatomic, retain) IBOutlet UIButton *PharrButton;

@property (nonatomic, retain) IBOutlet UILabel *labelCell;

@property (nonatomic, retain) IBOutlet UITextView *textViewDescription;
@property (nonatomic, retain) IBOutlet UITextView *homeTextView;


-(IBAction)McAllenLink:(id)sender;
-(IBAction)EdinburgLink:(id)sender;
-(IBAction)SouthPaderIslandLink:(id)sender;
-(IBAction)PharrLink:(id)sender;
-(IBAction)MissionLink:(id)sender;

-(IBAction)careLink:(id)sender;
-(IBAction)sitterCityLink:(id)sender;

-(IBAction)jearLink:(id)sender;
-(IBAction)texasLyceumLink:(id)sender;

-(IBAction)facebookLink:(id)sender;
-(IBAction)twitterLink:(id)sender;

-(IBAction)emailButton:(id)sender;

@end
