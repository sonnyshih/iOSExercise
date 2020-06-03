//
//  ViewController.swift
//  HelloMKMapView
//
//  Created by sonny on 2020/6/3.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func adMeAnnotation(_ sender: UILongPressGestureRecognizer) {
        let touchPoint = sender.location(in: mapView)
        let touchCoordinate:CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = touchCoordinate
        annotation.title = "New Place"
        annotation.subtitle = "One Day, I wanna be here"
        mapView.addAnnotation(annotation)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 設定經緯度
        let latitude:CLLocationDegrees = 48.858547  // 經度
        let longitude:CLLocationDegrees = 2.294524  // 緯度
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        // 設定放大縮小
        let xScale:CLLocationDegrees = 0.01
        let yScale:CLLocationDegrees = 0.01
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: yScale, longitudeDelta: xScale)
    
        // 指定地點
        let region:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
    
        // 顯示地圖
        mapView.setRegion(region, animated: true)
        
        // 地圖顯示方式
        // mapView.mapType = .satellite
        
        // 顯示大頭針
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Eiffel Tower"
        annotation.subtitle = "I was here once"
        mapView.addAnnotation(annotation)
    }


}

