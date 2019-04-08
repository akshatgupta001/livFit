//
//  ActivityVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ActivityVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager:CLLocationManager! = CLLocationManager()
    

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    let alert = UIAlertController(title: "Alert", message: "Workout too small to be recorded", preferredStyle: UIAlertController.Style.alert)
    
    @IBOutlet weak var timeLabel: UILabel!
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                self.dismiss(animated: true, completion: nil)
                
            case .cancel:
                print("cancel")
                self.dismiss(animated: true, completion: nil)
                
            case .destructive:
                print("destructive")
                self.dismiss(animated: true, completion: nil)
                
                
            }}))
        
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
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        //determineCurrentLocation()
    }
    
    @IBAction func return_to_home(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //determine location
    
    func determineCurrentLocation()
    {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            //locationManager.startUpdatingHeading()
            locationManager.startUpdatingLocation()
        }
    }
   
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation:CLLocation = locations[0] as CLLocation
        
        // Call stopUpdatingLocation() to stop listening for location updates,
        // other wise this function will be called every time when user location changes.
        //manager.stopUpdatingLocation()
        
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        self.mapView.setRegion(region, animated: true)
        
        // Drop a pin at user's Current Location
//        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
//        myAnnotation.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude);
//        myAnnotation.title = "Current location"
//        mapView.addAnnotation(myAnnotation)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        print("Error \(error)")
    }
    @IBAction func playPressed(_ sender: Any) {
        playButton.isHidden = true
        pauseButton.isHidden = false
        stopButton.isHidden = false
        
        if(isPlaying) {
            return
        }
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    @objc func UpdateTimer() {
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
    @IBAction func pausePressed(_ sender: Any) {
        pauseButton.isHidden = true
        playButton.isHidden = false
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
    }
    @IBAction func stopPressed(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        counter = 0.0
        timeLabel.text = String(counter)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    

}
