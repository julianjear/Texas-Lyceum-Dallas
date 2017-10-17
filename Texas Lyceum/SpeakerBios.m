//
//  SpeakerBios.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 8/3/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "SpeakerBios.h"

@interface SpeakerBios ()

@end

@implementation SpeakerBios
@synthesize bioTextView;

@synthesize buttonSpeaker1;
@synthesize buttonSpeaker2;
@synthesize buttonSpeaker3;
@synthesize buttonSpeaker4;
@synthesize buttonSpeaker5;
@synthesize buttonSpeaker6;
@synthesize buttonSpeaker7;
@synthesize bioTextViewOnePerson;
@synthesize imageSpeaker;
@synthesize bioMariachi;
@synthesize mariachiPicture;
@synthesize imageSpeakerSingle;
@synthesize buttonSpeakerTexasNew1;
@synthesize buttonSpeakerTexasNew2;
@synthesize buttonSpeakerTexasNew3;
@synthesize buttonSpeakerTexasNew4;


#define   IsIphone5     ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

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
    // Do any additional setup after loading the view.
    if(IsIphone5)
    {
        bioTextView.frame = CGRectMake(10, 130, 300, 370);
        imageSpeakerSingle.frame = CGRectMake(10, 65, 70, 56);

        buttonSpeaker1.frame = CGRectMake(0, 157, 320, 50);
        buttonSpeaker2.frame = CGRectMake(0, 206, 320, 50);
        buttonSpeaker3.frame = CGRectMake(0, 254, 320, 50);
        buttonSpeaker4.frame = CGRectMake(0, 305, 320, 50);
        buttonSpeaker5.frame = CGRectMake(0, 355, 320, 50);
        buttonSpeaker6.frame = CGRectMake(0, 405, 320, 50);
        buttonSpeaker7.frame = CGRectMake(0, 455, 320, 50);

    }
    else
    {
        buttonSpeakerTexasNew1.frame = CGRectMake(0, 152, 320, 70);
        buttonSpeakerTexasNew2.frame = CGRectMake(0, 222, 320, 70);
        buttonSpeakerTexasNew3.frame = CGRectMake(0, 292, 320, 70);
        buttonSpeakerTexasNew4.frame = CGRectMake(0, 362, 320, 70);

///185
         bioTextView.frame = CGRectMake(10, 120, 300, 310);
         imageSpeakerSingle.frame = CGRectMake(10, 65, 70, 56);


        bioTextViewOnePerson.frame = CGRectMake(10, 255, 295, 200);
        imageSpeaker.frame = CGRectMake(10, 165, 85, 90);
        bioMariachi.frame = CGRectMake(13, 335, 295, 105);
        mariachiPicture.frame = CGRectMake(5, 160, 310, 180);

    }
    [bioTextViewOnePerson setUserInteractionEnabled:YES];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
