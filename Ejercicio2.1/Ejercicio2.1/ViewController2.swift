//
//  ViewController2.swift
//  Ejercicio2.1
//
//  Created by moviles on 05/03/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var nombreRowRecibido : String?
    var cancionRecibo : Cancion?
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var autor: UILabel!
    @IBOutlet weak var duracion: UILabel!
   // @IBOutlet weak var album: UILabel!
    @IBOutlet weak var album: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.text = cancionRecibo?.titulo!
        autor.text = cancionRecibo?.artista!
        duracion.text = cancionRecibo?.duracion
        album.image = UIImage(named: cancionRecibo!.album!)
       // album.text = cancionRecibo?.album
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        super.loadView()
        //cancion = Cancion()
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
