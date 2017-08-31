//
//  MainVC.swift
//  PokeFinder
//
//  Created by Tiago Do Couto on 31/08/17.
//  Copyright © 2017 Tiago Do Couto. All rights reserved.
//

import UIKit
import MapKit

class MainVC: UIViewController {
    
    //outlets
    @IBOutlet weak var mapView: MKMapView!
    
    //vars
    let locationManager =  CLLocationManager()

    //system functions
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        mapView.userTrackingMode = MKUserTrackingMode.follow
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    //actions
    @IBAction func findPokemons(_ sender: Any) {
    }
    
    //custom functions
    func locationAuthStatus(){
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        } else{
            locationManager.requestWhenInUseAuthorization()
        }
    }
}

extension MainVC: MKMapViewDelegate {
    
}

