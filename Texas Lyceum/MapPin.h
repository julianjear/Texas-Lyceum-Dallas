//
//  MapPin.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 6/7/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface MapPin : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy)  NSString *title;
@property (nonatomic, copy)  NSString *subtitle;


@end
