//
//  ViewController.swift
//  localizacao usuario
//
//  Created by teste on 04/01/23.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapa: MKMapView!
    var gerenciadorLocal = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gerenciadorLocal.delegate = self
        //presicao de localizacao
        gerenciadorLocal.desiredAccuracy = kCLLocationAccuracyBest
        
        //solicitacao de localizacao do usuario
        gerenciadorLocal.requestWhenInUseAuthorization()
        
        //inicio de atualizacao da localizacao do usuario
        gerenciadorLocal.startUpdatingLocation()
    }


}

