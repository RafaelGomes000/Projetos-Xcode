//
//  ViewController.swift
//  App Minhas Anotacoes
//
//  Created by teste on 03/01/23.
//

import UIKit

class ViewController: UIViewController {

    //Configurando App
    @IBOutlet weak var textoCampo: UITextView!
    let chave = "minhaAnotacao"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        
        //Guardando dados
        if let text = textoCampo.text{
            UserDefaults.standard.set(text, forKey: chave)
        }
    }
    
    func recuperarAnotacao() -> String{
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
            
        return ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoCampo.text = recuperarAnotacao()
    }


}

