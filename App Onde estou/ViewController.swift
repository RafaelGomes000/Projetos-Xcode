//
//  ViewController.swift
//  App Onde estou
//
//  Created by teste on 05/01/23.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapa: MKMapView!
    var gerenciadorLocalizacao = CLLocationManager()
    
    
    @IBOutlet weak var velocidadeLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var enderecoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gerenciadorLocalizacao.delegate = self
        gerenciadorLocalizacao.desiredAccuracy = kCLLocationAccuracyBest
        gerenciadorLocalizacao.requestWhenInUseAuthorization()
        gerenciadorLocalizacao.startUpdatingLocation()
    }
    
    //passando localizacao
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var localizacaoUsuario = locations.last!
        
        let longitude = localizacaoUsuario.coordinate.longitude
        let latitude = localizacaoUsuario.coordinate.latitude
        
        longitudeLabel.text = String(longitude)
        latitudeLabel.text = String(latitude)
        
        velocidadeLabel.text = String(localizacaoUsuario.speed)
    }
    
    //Alerta para autorizar localizaçao
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status != CLAuthorizationStatus.authorizedWhenInUse{
            
            //mensagem alerta
            var alertaController = UIAlertController(title: "Permissao de localizaçap", message: "Necessário parmissao para acesso a sua localizaçao. Por favor habilite.", preferredStyle: .alert)
            
            //opcao configurar
            var acaoConfigurar = UIAlertAction(title: "Abrir configuraçao", style: .default, handler: {(alertaConfiguracoes) in
                
                if let configuracoes = NSURL(string: UIApplication.openSettingsURLString){
                    UIApplication.shared.open(configuracoes as URL)
                }
                
            })
            
            //opcao cancelar
            var acaoCancelar = UIAlertAction(title: "Cancelar", style: .default, handler: nil)
            
            alertaController.addAction(acaoConfigurar)
            alertaController.addAction(acaoCancelar)
            
            present(alertaController, animated: true)
        }
    }


}

