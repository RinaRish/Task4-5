//
//  MapViewController.m
//  TwitterApplication
//
//  Created by Catherine Trishina on 18/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//


#import "MapViewController.h"

@interface MapViewController ()

@property (nonatomic, weak) IBOutlet MKMapView *mapView;

@end

@implementation MapViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
     self.mapView.delegate = self;
       

   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 34.42666168;
    zoomLocation.longitude= 53.20986404;
    //Moscow                    Bryansk
    //55.755786                 53.20986404;
    //37.617633                 34.42666168
    CLLocationCoordinate2D location;
    location.latitude = [[self.loc objectAtIndex:0] floatValue];
    location.longitude = [[self.loc objectAtIndex:1] floatValue];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 100000, 100000);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = location;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here!!!";
    
    [self.mapView addAnnotation:point];
}

@end
