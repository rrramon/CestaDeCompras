//
//  ViewController.swift
//  cesta
//
//  Created by Ramon Ramos Rosales on 30/09/18.
//  Copyright © 2018 Ramon Ramos Rosales. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var nomtenis = ["nike negro", "nike blanco", "nike rojo", "nike azul", "nike amarillo"]
    var imatenis = [UIImage(named: "negro")!, UIImage(named: "blanco")!, UIImage(named: "rojo")!,UIImage(named: "azul")!, UIImage(named: "amarillo")! ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomtenis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.ima.image = imatenis[indexPath.row]
        cell.labe.text = nomtenis[indexPath.row]
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DcV = Storyboard.instantiateViewController(withIdentifier: "detallesViewController") as! detallesViewController
        
        DcV.getimage = imatenis[indexPath.row]
        DcV.getname = nomtenis[indexPath.row]
        
        self.navigationController?.pushViewController(DcV, animated: true)
    }
    
    


}

