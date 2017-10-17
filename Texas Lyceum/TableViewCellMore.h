//
//  TableViewCellMore.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 5/7/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface TableViewCellMore : UITableViewCell <MFMailComposeViewControllerDelegate>


@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *ThumbImage;

-(IBAction)cellContact:(id)sender;

@end
