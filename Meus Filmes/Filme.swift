//
//  Filme.swift
//  Meus Filmes
//
//  Created by teste on 02/01/23.
//

import UIKit

class Filme{
    
    var titulo: String
    var descricao: String
    var imagem: UIImage
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
