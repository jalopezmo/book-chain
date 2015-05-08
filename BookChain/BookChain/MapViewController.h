//
//  MapViewController.h
//  BookChain
//
//  Created by Jaime López on 8/05/15.
//  Copyright (c) 2015 Jaime López. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyPoint.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>

@property (nonatomic,strong) IBOutlet MKMapView* myMap;
@property (nonatomic,strong) CLLocationManager *locationManager;

@end
