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

class Maps: UIViewController, CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager!

    @IBOutlet var maps: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        self.maps.setRegion(region, animated: true)
    }

}
