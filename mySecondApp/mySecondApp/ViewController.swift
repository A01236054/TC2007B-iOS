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
    @IBOutlet weak var numeroSuperior: UITextField!
    @IBOutlet weak var numeroInferior: UITextField!
    
    @IBAction func suma(_ sender: Any) {
        MostrarAlerta(titulo: "Suma", mensaje: resultado(sign: +))
    }

    @IBAction func resta(_ sender: Any) {
        MostrarAlerta(titulo: "Resta", mensaje: resultado(sign: -))
    }
    
    @IBAction func multiplicacion(_ sender: Any) {
        MostrarAlerta(titulo: "Multiplicación", mensaje: resultado(sign: *))
    }
    
    
    @IBAction func division(_ sender: Any) {
        MostrarAlerta(titulo: "División", mensaje: resultado(sign: /))
    }
    
    @IBAction func botonUnoClick(_ sender: Any) {
        MostrarAlerta(titulo: "Texto en usuario:", mensaje: usuarioTextField.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tituloLabel.text = "Segunda Aplicación"
        tituloLabel.textColor = UIColor(red: 36/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }

    func MostrarAlerta(titulo: String, mensaje: String) {
        let alert = UIAlertController(
                    title: titulo,
                    message: mensaje,
                    preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(
            title: "Cerrar",
            style: UIAlertAction.Style.cancel))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func resultado(sign: (Double,Double)->Double) -> String{
        let numUno = Double(numeroSuperior.text!)
        let numDos = Double(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        if (numUno != nil && numDos != nil) {
            mensaje = String(sign(numUno!, numDos ?? 0))
        }
        return mensaje
    }
}

