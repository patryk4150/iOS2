//
//  ViewController.swift
//  iOS2
//
//  Created by Patryk Cyrek on 21/10/2019.
//  Copyright © 2019 Patryk Cyrek. All rights reserved.
//
import MapKit
import UIKit
import CoreLocation

class ViewController: UIViewController {

    
    @IBOutlet weak var Mapy: MKMapView!
        @IBOutlet weak var Krakow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pokazKrakow(_ sender: Any) {
        let location = CLLocationCoordinate2DMake(50.0246289, 19.8924691)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: location, span: span)
            
        self.Mapy.setRegion(region, animated:true)
    
        
        let annotation = MKPointAnnotation()
        annotation.coordinate.latitude = location.latitude
        annotation.coordinate.longitude = location.longitude
        annotation.title = "Krakow"
        annotation.subtitle = "Kampus UJ"
        self.Mapy.addAnnotation(annotation)
    }

}


