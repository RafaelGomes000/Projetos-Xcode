//
//  ViewController.swift
//  Trabalhando com Mapas Aula
//
//  Created by teste on 04/01/23.
//

import UIKit
import MapKit

    class ViewController: UIViewController, MKMapViewDelegate {
        
    @IBOutlet weak var mapa: MKMapView!
        
    override func viewDidLoad() {
            super.viewDidLoad()
            
            //Definindo coordenadas
            let latitude: CLLocationDegrees = 41.89351
            let longitute: CLLocationDegrees = 12.48277
            
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
            
            //Criando marcaçao no mapa
            let anotacao = MKPointAnnotation()
            
            anotacao.coordinate = localizacao
            anotacao.title = "Monte Capitolino"
            anotacao.subtitle = "Praça no cime projetada por Michelangelo, cercada de museus e com vista para o Fórum Romano"
            
            mapa.addAnnotation(anotacao)
        }
    }


