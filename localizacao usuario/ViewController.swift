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

    //atualizando localizacao em tempo real
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let localizacaoUsuario: CLLocation = locations.last!
        
        //monta exibicao do mapa
        let latitude: CLLocationDegrees = localizacaoUsuario.coordinate.latitude
        let longitute: CLLocationDegrees = localizacaoUsuario.coordinate.longitude
                    
        //Definindo zoom no mapa
        let deltaLatitude: CLLocationDegrees = 0.008
        let deltaLongitude: CLLocationDegrees = 0.008
                    
        //Chamando coordenadas e zoom
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitute)
                    
        //Armazenando coordenadas
        let regiao: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: areaVisualizacao)
                    
        //Definindo localizacao
        mapa.setRegion(regiao, animated: true)
              
    }

}

