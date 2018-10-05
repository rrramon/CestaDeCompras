//
//  ViewController.swift
//  cesta
//
//  Created by Ramon Ramos Rosales on 30/09/18.
//  Copyright © 2018 Ramon Ramos Rosales. All rights reserved.
//

//cesta de compras version final
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    // imagenes
    var imatenis = [UIImage(named: "negro")!, UIImage(named: "blanco")!, UIImage(named: "rojo")!,UIImage(named: "azul")!, UIImage(named: "amarillo")! ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Datos de los productos
        Productos.append(Producto(nombre: "nike negro", precio: 1300, desc: "Tenis perfecto para cualquier ocación"))
        
        Productos.append(Producto(nombre: "nike blanco", precio: 1500, desc: "Tenis blanco para la escula"))
            
        Productos.append(Producto(nombre: "nike rojo", precio: 1250, desc: "Tenis liguero y de moda"))
                         
        Productos.append(Producto(nombre: "nike azul", precio: 1400, desc: "Tenis con el mejor estilo para tu dia "))
        
        Productos.append(Producto(nombre: "nike amarillo", precio: 1700, desc: "Tenis con el mejor color para hacerte notar"))
        
        
        
        
        
    }
    
    // funcion para mostrar en la vista los productos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.labe.text = "\(Productos[indexPath.row].nombre)"
        cell.ima.image = imatenis[indexPath.row]
        
        return cell
        
        
        
    }
    
    //funcion para mostrar las descripciones
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DcV = Storyboard.instantiateViewController(withIdentifier: "detallesViewController") as! detallesViewController
        
        DcV.idProducto = indexPath.row
        DcV.getname = "\(Productos[indexPath.row].nombre) \n \(Productos[indexPath.row].precio) \n \(Productos[indexPath.row].desc)"
        
        DcV.getimage = imatenis[indexPath.row]
        //DcV.getname = nomtenis[indexPath.row]
        
        self.navigationController?.pushViewController(DcV, animated: true)
    }
    
    
    
    
    


}

