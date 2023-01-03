//
//  CadastroTarefaViewController.swift
//  App Lista de Tarefas
//
//  Created by teste on 03/01/23.
//

import UIKit

class CadastroTarefaViewController: UIViewController {
    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        if let campoTarefa = tarefaCampo.text{
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
