//
//  FourthViewController.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "FourthViewController.h"
#import "MapPin.h"
@interface FourthViewController ()

@end
int UserLocationRangeOnce =0;
@implementation FourthViewController
@synthesize mapView;
@synthesize munecaRanch;
@synthesize labelCover;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
#define   IsIphone5     ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mapView.mapType = MKMapTypeStandard;
    self.mapView.delegate = self;
  //  [self.mapView setShowsUserLocation:YES];
   // [CLLocationManager requestWhenInUseAuthorization];
    UserLocationRangeOnce =1;
    mapView.showsUserLocation = TRUE;

    MKCoordinateRegion region = { {0.0, 0.0}, {0.0, 0.0}};
    region.center.latitude = 32.7799284;
    region.center.longitude = -96.7998592;
  //  region.span.latitudeDelta = 0.005f;
  //  region.span.longitudeDelta = 0.005f;
    [mapView setRegion:region animated:YES];

    MapPin *ann = [[MapPin alloc] init];
    ann.title = @"Adolphus Hotel";
    ann.subtitle = @"1321 Commerce St, Dallas, TX 75202";
    ann.coordinate = region.center;
    [mapView addAnnotation:ann];
    
    MKCoordinateRegion region2 = { {0.0, 0.0}, {0.0, 0.0}};
    region2.center.latitude = 32.7807758;
    region2.center.longitude = -96.7993548;
    //  region.span.latitudeDelta = 0.005f;
    //  region.span.longitudeDelta = 0.005f;
    [mapView setRegion:region2 animated:YES];
    
    MapPin *ann2 = [[MapPin alloc] init];
    ann2.title = @"Dallas Fish Market";
    ann2.subtitle = @"1501 Main St, Dallas, TX 75201";
    ann2.coordinate = region2.center;
    [mapView addAnnotation:ann2];
    
    MKCoordinateRegion region3 = { {0.0, 0.0}, {0.0, 0.0}};
    region3.center.latitude = 32.7914798;
    region3.center.longitude = -96.8005612;
    //  region.span.latitudeDelta = 0.005f;
    //  region.span.longitudeDelta = 0.005f;
    [mapView setRegion:region3 animated:YES];
    
    MapPin *ann3 = [[MapPin alloc] init];
    ann3.title = @"Federal Reserve Bank of Dallas";
    ann3.subtitle = @"2200 N Pearl St, Dallas, TX 75201";
    ann3.coordinate = region3.center;
    [mapView addAnnotation:ann3];
    
    
    
    MKCoordinateRegion region4 = { {0.0, 0.0}, {0.0, 0.0}};
    region4.center.latitude = 32.7788258;
    region4.center.longitude = -96.8277414;
    //  region.span.latitudeDelta = 0.005f;
    //  region.span.longitudeDelta = 0.005f;
    [mapView setRegion:region4 animated:YES];
    
    MapPin *ann4 = [[MapPin alloc] init];
    ann4.title = @"3015 at Trinity Groves";
    ann4.subtitle = @"3015 Gulden Ln, Dallas, TX 75212";
    ann4.coordinate = region4.center;
    [mapView addAnnotation:ann4];
    
    
    if(IsIphone5)
    {
      //  munecaRanch.frame = CGRectMake(0, 64, 320, 450);
        [munecaRanch setFrame:CGRectMake(0, 64, 320, 450)];
        NSLog(@"iphone 5");


    }
    else
    {
        [munecaRanch setFrame:CGRectMake(0, 64, 320, 362)];
        
    }

   /* MKCoordinateRegion region;
    region.center = mapView.userLocation.location.coordinate;
    NSLog(@"%f", self.mapView.userLocation.location.coordinate.latitude);
    //MKCoordinateSpan span;
    region.span.latitudeDelta  = 0.01f; // Change these values to change the zoom
    region.span.longitudeDelta = 0.01f;
    //region.span = span;
    
    [self.mapView setRegion:region animated:YES];*/
}

- (void)viewDidLayoutSubviews {
    if(IsIphone5)
    {
       // munecaRanch.frame = CGRectMake(0, 64, 320, 450);
        [munecaRanch setFrame:CGRectMake(0, 64, 320, 450)];
        [labelCover setFrame:CGRectMake(26, 273, 114, 52)];

        
        NSLog(@"iphone 5");

    }
    else
    {
        [munecaRanch setFrame:CGRectMake(0, 64, 320, 362)];
        [labelCover setFrame:CGRectMake(26, 227, 114, 52)];

    }
}
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    if (UserLocationRangeOnce == 1) {
    CLLocationCoordinate2D myLocation = [userLocation coordinate];
    MKCoordinateRegion zoomRegion = MKCoordinateRegionMakeWithDistance(myLocation, 11000, 11000);
    [self.mapView setRegion:zoomRegion animated:YES];
        UserLocationRangeOnce=0;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)setMap:(id)sender {
}
-(IBAction)getLocation:(id)sender {

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
