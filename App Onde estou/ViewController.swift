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
        let localizacaoUsuario = locations.last!
        
        let longitude = localizacaoUsuario.coordinate.longitude
        let latitude = localizacaoUsuario.coordinate.latitude
        
        let deltaLatitude: CLLocationDegrees = 0.003
        let deltaLongitude: CLLocationDegrees = 0.003
        
        longitudeLabel.text = String(longitude)
        latitudeLabel.text = String(latitude)
        
        velocidadeLabel.text = String(localizacaoUsuario.speed)
        
        
        let areaAproximacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let regiao: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: areaAproximacao)
        
        //mostrando localizacao na tela
        mapa.setRegion(regiao, animated: true)
        
        //endereco
        CLGeocoder().reverseGeocodeLocation(localizacaoUsuario) { (detalhesLocal, erro) in
            
            if erro == nil{
                
                if let dadosLocal = detalhesLocal?.first{
                    var thoroughfare = ""
                    if dadosLocal.thoroughfare != nil{
                    thoroughfare = dadosLocal.thoroughfare!
                        
                    var subThoroughfare = ""
                    if dadosLocal.subThoroughfare != nil{
                    thoroughfare = dadosLocal.subThoroughfare!
                    }
                    
                }else{
                    
                    print(erro)
                    
                }
                
            }
        }
    }
    
    //Alerta para autorizar localizaçao
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status != CLAuthorizationStatus.authorizedWhenInUse{
            
            //mensagem alerta
            let alertaController = UIAlertController(title: "Permissao de localizaçap", message: "Necessário parmissao para acesso a sua localizaçao. Por favor habilite.", preferredStyle: .alert)
            
            //opcao configurar
            let acaoConfigurar = UIAlertAction(title: "Abrir configuraçao", style: .default, handler: {(alertaConfiguracoes) in
                
                if let configuracoes = NSURL(string: UIApplication.openSettingsURLString){
                    UIApplication.shared.open(configuracoes as URL)
                }
                
            })
            
            //opcao cancelar
            let acaoCancelar = UIAlertAction(title: "Cancelar", style: .default, handler: nil)
            
            alertaController.addAction(acaoConfigurar)
            alertaController.addAction(acaoCancelar)
            
            present(alertaController, animated: true)
        }
    }


}

