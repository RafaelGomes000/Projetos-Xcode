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
        signos.append("Sargitario")
        signos.append("Capricornio")
        signos.append("Aquario")
        signos.append("Peixes")
        
        
        //Configurar significado
        significadoSignos.append("O ariano...")
        significadoSignos.append("Touro...")
        significadoSignos.append("3")
        significadoSignos.append("4")
        significadoSignos.append("5")
        significadoSignos.append("6")
        significadoSignos.append("7")
        significadoSignos.append("8")
        significadoSignos.append("9")
        significadoSignos.append("10")
        significadoSignos.append("11")
        
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
}

