//
//  ViewController.m
//  GoogleMapProject
//
//  Created by lab on 10/15/18.
//  Copyright © 2018 com.digicon.www. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView{
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:23.8103 longitude:90.4125 zoom:6];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    self.view = mapView;
    
    GMSMarker *marker = [[GMSMarker alloc]init];
    marker.position = CLLocationCoordinate2DMake(23.8103, 90.4125);
    marker.title = @"Dhaka";
    marker.snippet = @"Capital City Of Bangladesh";
    marker.map = mapView;
}


@end
