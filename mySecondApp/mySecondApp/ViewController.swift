//
//  ViewController.swift
//  mySecondApp
//
//  Created by Mauricio Cuadros on 30/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var usuarioTextField: UITextField!
    @IBOutlet weak var contrasenaTextField: UITextField!
    
    
    @IBAction func botonUnoClick(_ sender: Any) {
        let alert = UIAlertController(
                    title: "¡Alerta!",
                    message: usuarioTextField.text,
                    preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(
            title: "Cerrar",
            style: UIAlertAction.Style.cancel))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tituloLabel.text = "Segunda Aplicación"
        tituloLabel.textColor = UIColor(red: 36/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }


}

