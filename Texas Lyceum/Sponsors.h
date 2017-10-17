//
//  Sponsors.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 7/28/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Sponsors : UIViewController {
    IBOutlet UIWebView *sponsorsWebView;
}

@property(nonatomic, retain) IBOutlet UIWebView *sponsorsWebView;

-(IBAction)EdinburgVisitWebsite:(id)sender;

@end
