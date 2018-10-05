//
//  carritoViewController.swift
//  cesta
//
//  Created by Ramon Ramos Rosales on 04/10/18.
//  Copyright © 2018 Ramon Ramos Rosales. All rights reserved.
//

import UIKit

class carritoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Carrito.count
    }
    //funcion que mada a las celdas lo comprado
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCarrito", for: indexPath)
        cell.textLabel?.text = "\(Productos[indexPath.row].nombre) \t\t\t\t\t\t\t\t \(Productos[indexPath.row].precio)"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
