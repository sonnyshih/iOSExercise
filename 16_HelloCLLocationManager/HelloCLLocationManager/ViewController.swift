//
//  ViewController.swift
//  HelloCLLocationManager
//
//  Created by sonny on 2020/6/3.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager:CLLocationManager?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager?.requestWhenInUseAuthorization()
        locationManager?.delegate = self
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest  // 定位精穩度
        locationManager?.activityType = .automotiveNavigation   // 活動模試
        locationManager?.startUpdatingLocation()    // 手機移動時更新位置資訊
        
        if let coordinate = locationManager?.location?.coordinate {
        
            //縮放
            let xScale:CLLocationDegrees = 0.01
            let yScale:CLLocationDegrees = 0.01
            let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: yScale, longitudeDelta: xScale)
    
            let region = MKCoordinateRegion(center: coordinate, span: span)
            map.setRegion(region, animated: true)
        }
        
        map.userTrackingMode = .followWithHeading   //設定地圖畫面移動的方式
        
    }

    override func viewDidDisappear(_ animated: Bool) {
        locationManager?.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print("----------------------")
        print(locations[0].coordinate.latitude)
        print(locations[0].coordinate.longitude)
    }

}

