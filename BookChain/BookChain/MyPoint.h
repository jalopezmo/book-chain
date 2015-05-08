//
//  MyPoint.h
//  BookChain
//
//  Created by Jaime López on 8/05/15.
//  Copyright (c) 2015 Jaime López. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MyPoint : NSObject <MKAnnotation>

@property (nonatomic,readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic,readonly) NSString* title;

-(id)initDefault;
-(id)initWithLatitude:(float)latitude andLongitude:(float)longitude andTitle:(NSString*)title;
-(void)createAnnotationWithCoordinate:(CLLocationCoordinate2D) coor andTitle:(NSString*)title;


@end
