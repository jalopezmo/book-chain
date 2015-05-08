//
//  MyPoint.m
//  BookChain
//
//  Created by Jaime López on 8/05/15.
//  Copyright (c) 2015 Jaime López. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint

-(id)initDefault {
    self = [super init];
    if(self) {
        _coordinate = CLLocationCoordinate2DMake(4.5098, -74.0735);
        _title = @"La madriguera del conejo";
        /*
        _coordinate2 = CLLocationCoordinate2DMake(4.5178, -74.0760);
        _title2 = @"Árbol de tinta";
        _coordinate3 = CLLocationCoordinate2DMake(4.5208, -74.0730);
        _title3 = @"Teatro Ditirambo";
         */
    }
    
    return self;
}

-(id)initWithLatitude:(float)latitude andLongitude:(float)longitude andTitle:(NSString*)title{
    self = [super init];
    if(self) {
        _coordinate = CLLocationCoordinate2DMake(latitude, longitude);
        _title = title;
    }
    
    return self;
}

-(void)createAnnotationWithCoordinate:(CLLocationCoordinate2D)coor andTitle:(NSString *)newTitle {
    _coordinate = coor;
    _title = newTitle;
}

@end
