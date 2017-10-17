//
//  ThirdViewController.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ThirdViewController : UIViewController <MFMailComposeViewControllerDelegate> {
    IBOutlet UITableViewCell *tableContact;
}

@property(nonatomic, retain) IBOutlet UITableViewCell *tableContact;

//-(IBAction)tableTest:(id)sender;
@end
