//
//  TableViewController.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 6/23/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface TableViewController : UITableViewController <MFMailComposeViewControllerDelegate>

-(IBAction)cellContact:(id)sender;
@end
