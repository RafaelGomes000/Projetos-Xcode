//
//  ViewController.swift
//  App Salvar Dados
//
//  Created by teste on 03/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UserDefaults.standard.set("azul", forKey: "corFundo")
        //var texto = UserDefaults.standard.object(forKey: "corFundo")
        //print(texto)
        
        //var comidas: [String] = ["Pizza", "Torta", "Lasanha"]
        //UserDefaults.standard.set(comidas, forKey: "comidas")
        
        UserDefaults.standard.removeObject(forKey: "corFundo")
        
        var comidas = UserDefaults.standard.object(forKey: "corFundo")
        print(comidas)
    }


}

