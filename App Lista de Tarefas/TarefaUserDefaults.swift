//
//  TarefaUserDefaults.swift
//  App Lista de Tarefas
//
//  Created by teste on 03/01/23.
//

import UIKit

class TarefaUserDefaults{
    
    let chave = "listaTarefa"
    var tarefas: [String] = []
    
    func salvar(tarefa: String){
        
        //Recuperar tarefa ja salva
        tarefas = listar()
        
        //Salvar tarefa
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String>{
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil{
            return dados as! Array<String>
        }
        
        else{
            return[]
        }
    }
    
}
