//
//  detallesViewController.swift
//  cesta
//
//  Created by Ramon Ramos Rosales on 30/09/18.
//  Copyright © 2018 Ramon Ramos Rosales. All rights reserved.
//

import UIKit

class detallesViewController: UIViewController {
    
    var idProducto : Int = 0
    var getname = String()
    var getimage = UIImage()
    
    
    @IBOutlet weak var imaregre: UIImageView!
    @IBOutlet weak var laberegre: UILabel!
    

    @IBAction func presionado(_ sender: UIButton) {
        Carrito.append(idProducto)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        imaregre.image = getimage
        laberegre.text = getname

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
