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
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 1500, 1500);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here!!!";
    
    [self.mapView addAnnotation:point];
}

@end
