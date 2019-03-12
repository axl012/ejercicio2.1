//
//  ViewController.swift
//  Ejercicio2.1
//
//  Created by moviles on 05/03/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var table: UITableView!
    var cancion:Cancion?
    //Cntrl en Table y arrastrar a view controller source y Delegate
    
    var arreglo = ["Opcion1", "Opcion2", "Opcion3"]
    var arreglo2 : [Cancion] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Cuando carga la vista
    override func loadView() {
        super.loadView()
        cancion = Cancion(titulo: "emerald sword", artista: "rhapsody", duracion: "4:05", album: "basura.png")
        arreglo2.append(cancion!)
        arreglo2.append(Cancion(titulo: "lead us home", artista: "demon hunter", duracion: "3:00", album: "demon.jpg"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo2.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let celda = UITableViewCell()
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        celda.textLabel?.text = arreglo2[indexPath.row].titulo
        celda.imageView?.image = UIImage(named:  arreglo2[indexPath.row].album!)
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Imprimir el texto de la celda
        //print(arreglo[indexPath.row])
        let idRowSeleccionado = indexPath.row
        //Agregar nombre aPantalla2 a la conexion de view 1 a view 2
        self.performSegue(withIdentifier: "aPantalla2", sender: idRowSeleccionado)
        //self.performSegue(withIdentifier: "aPantalla2", sender: cancion)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aPantalla2" {
            let idRowSeleccionadoRecibido = sender as! Int
            let objPantalla2: ViewController2 = segue.destination as! ViewController2
            objPantalla2.cancionRecibo = arreglo2[idRowSeleccionadoRecibido]
        }
    }
    


}

