//
//  gameVC.swift
//  livFit
//
//  Created by Akshat Gupta on 02/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class gameVC: UIViewController , MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet weak var mapView: MKMapView!
     var locationManager:CLLocationManager! = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.showsUserLocation = true
        if CLLocationManager.locationServicesEnabled() == true {
            if CLLocationManager.authorizationStatus() == .restricted ||
                CLLocationManager.authorizationStatus() == .denied ||
                CLLocationManager.authorizationStatus() ==  .notDetermined {
                locationManager.requestWhenInUseAuthorization()
            }
            locationManager.desiredAccuracy = 1.0
            locationManager.delegate = self
            locationManager.startUpdatingLocation()
        }else{
            print("on kro loc")
        }
        
    }
    
//    func determineCurrentLocation()
//    {
//        locationManager = CLLocationManager()
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestAlwaysAuthorization()
//
//        if CLLocationManager.locationServicesEnabled() {
//            //locationManager.startUpdatingHeading()
//            locationManager.startUpdatingLocation()
//        }
//    }
//
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation:CLLocation = locations[0] as CLLocation
        
        // Call stopUpdatingLocation() to stop listening for location updates,
        // other wise this function will be called every time when user location changes.
        //manager.stopUpdatingLocation()
        
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        self.mapView.setRegion(region, animated: true)
        
        // Drop a pin at user's Current Location
//                let myAnnotation: MKPointAnnotation = MKPointAnnotation()
//                myAnnotation.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude);
//                myAnnotation.title = "Current location"
//                mapView.addAnnotation(myAnnotation)
        
        //drop a pin at target position
        let targetAnnotation: MKPointAnnotation = MKPointAnnotation()
        targetAnnotation.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude + 0.005, userLocation.coordinate.longitude + 0.001);
        targetAnnotation.title = "Target location"
        mapView.addAnnotation(targetAnnotation)
        locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        print("Error \(error)")
    }
    @IBAction func dismissScreen(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    

}
