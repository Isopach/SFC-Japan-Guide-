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
    var annotation:MKAnnotation!
    
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
            
            let tokyoLocation = CLLocationCoordinate2DMake(35.6693873,139.6009526)
            // Drop a pin
            let tokyoPin = MKPointAnnotation()
            tokyoPin.coordinate = tokyoLocation
            tokyoPin.title = "Tokyo"
            maps.addAnnotation(tokyoPin)    }
            
                   }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        var view = mapView.dequeueReusableAnnotationViewWithIdentifier("tokyoPin")
        if view == nil {
            view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "tokyoPin")
            view?.canShowCallout = true
            view?.rightCalloutAccessoryView = UIButton(type: .DetailDisclosure)
        } else {
            view?.annotation = annotation
        }
        return view
    }
    
    var selectedAnnotation: MKPointAnnotation!
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if control == view.rightCalloutAccessoryView {
            selectedAnnotation = view.annotation as? MKPointAnnotation
            performSegueWithIdentifier("tokyoRestaurants", sender: self)
        }
    }
    
    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
