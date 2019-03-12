//
//  Cancion.swift
//  Ejercicio2.1
//
//  Created by moviles on 06/03/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import Foundation
class Cancion {
    var titulo : String?
    var artista : String?
    var duracion : String?
    var album : String?
    
    init(titulo: String, artista: String, duracion: String, album: String) {
        self.titulo = titulo
        self.artista = artista
        self.duracion = duracion
        self.album = album
    }
    
    func pausar()  {
        print("Cancion pausada")
    }
    
    func reproducir()  {
        print("Cancion en reproducción")
    }
    
    func eliminar()  {
        print("Cancion eliminada")
    }
    
    
}
