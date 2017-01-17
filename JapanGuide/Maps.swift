//
//  Maps.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2017/01/17.
//  Copyright © 2017年 SFC. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class Maps: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var locationManager : CLLocationManager!

    @IBOutlet var maps: MKMapView!
    //var MyPins: MKPinAnnotationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.maps.delegate = self
        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
        let tokyoLocation = CLLocationCoordinate2DMake(35.6693873,139.6009526)
        // Drop a pin
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = tokyoLocation
        dropPin.title = "New York City"
        maps.addAnnotation(dropPin)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
