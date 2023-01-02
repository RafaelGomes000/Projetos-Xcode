//
//  ViewController.swift
//  App Signos
//
//  Created by teste on 02/01/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var dataSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configuração signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        //configuração mês
        dataSignos.append("21 de março a 20 de abril")
        dataSignos.append("21 de abril a 20 de maio")
        dataSignos.append("21 de maio a 20 de junho")
        dataSignos.append("21 de junho a 22 de julho")
        dataSignos.append("23 de julho a 22 de agosto")
        dataSignos.append("23 de agosto a 22 de setembro")
        dataSignos.append("23 de setembro a 22 de outubro")
        dataSignos.append("23 de outubro a 21 de novembro")
        dataSignos.append("22 de novembro a 21 de dezembro")
        dataSignos.append("22 de dezembro a 20 de janeiro")
        dataSignos.append("21 de janeiro a 19 de fevereiro")
        dataSignos.append("19 de fevereiro a 20 de março")
        
    }

    //configuração TableView
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        //configuração AlertController
        let alertaController = UIAlertController(title: "Data do signo", message: dataSignos [indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true)
        
        
    }
    
}

