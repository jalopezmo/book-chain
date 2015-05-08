//
//  MapViewController.m
//  BookChain
//
//  Created by Jaime López on 8/05/15.
//  Copyright (c) 2015 Jaime López. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myMap.delegate = self;
    MyPoint *place1 = [[MyPoint alloc] initWithLatitude:4.6178 andLongitude:-74.0760 andTitle:@"Árbol de tinta"];
    MyPoint *place2 = [[MyPoint alloc] initWithLatitude:4.6278 andLongitude:-74.0860 andTitle:@"La madriguera del conejo"];
    MyPoint *place3 = [[MyPoint alloc] initWithLatitude:4.6078 andLongitude:-74.0660 andTitle:@"Teatro ditirambo"];
    
    [_myMap addAnnotations:@[place1,place2,place3]];
    
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    
    [_locationManager requestAlwaysAuthorization];
    
    [_myMap setShowsUserLocation:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    MKCoordinateRegion zoomRegion = MKCoordinateRegionMakeWithDistance([userLocation coordinate],300,300);
    [_myMap setRegion:zoomRegion animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
