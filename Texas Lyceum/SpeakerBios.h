//
//  SpeakerBios.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 8/3/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpeakerBios : UIViewController {
    IBOutlet UITextView *bioTextView;
    IBOutlet UITextView *bioTextViewOnePerson;
    IBOutlet UITextView *bioMariachi;

    IBOutlet UIImageView *imageSpeaker;
    IBOutlet UIImageView *mariachiPicture;
    IBOutlet UIImageView *imageSpeakerSingle;

    IBOutlet UIButton *buttonSpeaker1;
    IBOutlet UIButton *buttonSpeaker2;
    IBOutlet UIButton *buttonSpeaker3;
    IBOutlet UIButton *buttonSpeaker4;
    IBOutlet UIButton *buttonSpeaker5;
    IBOutlet UIButton *buttonSpeaker6;
    IBOutlet UIButton *buttonSpeaker7;

    IBOutlet UIButton *buttonSpeakerTexasNew1;
    IBOutlet UIButton *buttonSpeakerTexasNew2;
    IBOutlet UIButton *buttonSpeakerTexasNew3;
    IBOutlet UIButton *buttonSpeakerTexasNew4;

}

@property(nonatomic, retain) IBOutlet UITextView *bioTextView;
@property(nonatomic, retain) IBOutlet UITextView *bioTextViewOnePerson;
@property(nonatomic, retain) IBOutlet UITextView *bioMariachi;

@property(nonatomic, retain) IBOutlet UIImageView *imageSpeaker;
@property(nonatomic, retain) IBOutlet UIImageView *mariachiPicture;
@property(nonatomic, retain) IBOutlet UIImageView *imageSpeakerSingle;

@property(nonatomic, retain) IBOutlet UIButton *buttonSpeaker1;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeaker2;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeaker3;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeaker4;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeaker5;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeaker6;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeaker7;

@property(nonatomic, retain) IBOutlet UIButton *buttonSpeakerTexasNew1;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeakerTexasNew2;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeakerTexasNew3;
@property(nonatomic, retain) IBOutlet UIButton *buttonSpeakerTexasNew4;

@end
