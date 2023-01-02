//
//  ViewController.swift
//  Meus Filmes
//
//  Created by teste on 02/01/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        var filme: Filme
        
        filme = Filme(titulo: "007 - Spectre", descricao: "descricao 1", imagem: UIImage(named: "filme1")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 2", descricao: "descricao 2", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 4", descricao: "descricao 4", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 5", descricao: "descricao 5", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 6", descricao: "descricao 6", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 7", descricao: "descricao 7", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 8", descricao: "descricao 8", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 9", descricao: "descricao 9", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 10", descricao: "descricao 10", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes [indexPath.row]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem
        
        return celula
    }


}

