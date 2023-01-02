//
//  ViewController.swift
//  App Signos
//
//  Created by teste on 02/01/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configurar signos
        signos.append("Aries")
        signos.append("Touro")
        signos.append("Gemeos")
        signos.append("Cancer")
        signos.append("Leao")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpiao")
        signos.append("Capricornio")
        signos.append("Aquario")
        signos.append("Peixes")
        
    }


}

