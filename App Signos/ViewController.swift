//
//  ViewController.swift
//  App Signos
//
//  Created by teste on 02/01/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []

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
        
        
        //Configurar significado
        significadoSignos.append("O ariano...")
        significadoSignos.append("Touro...")
        signos.append("3")
        signos.append("4")
        signos.append("5")
        signos.append("6")
        signos.append("7")
        signos.append("8")
        signos.append("9")
        signos.append("10")
        signos.append("11")
        
        
    }


}

