//
//  ViewController.swift
//  App Minhas Anotacoes
//
//  Created by teste on 03/01/23.
//

import UIKit

class ViewController: UIViewController {

    //configurando App
    @IBOutlet weak var textoCampo: UITextView!
    let chave = "minhaAnotacao"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        
    //salvando texto
        if let text = textoCampo.text{
            UserDefaults.standard.set(text, forKey: chave)
        }
    }
    //chamando texto salvo
    func recuperarAnotacao() -> String{
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
            
        return ""
    }
    
    //fechar teclado ao tocar na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //esconder barra
    override var prefersStatusBarHidden: Bool {
        true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoCampo.text = recuperarAnotacao()
    }


}

