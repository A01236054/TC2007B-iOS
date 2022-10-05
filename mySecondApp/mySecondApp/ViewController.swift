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
        let numUno = Double(numeroSuperior.text!)
        let numDos = Double(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        
        if (numUno != nil && numDos != nil) {
            let resultado = (numDos ?? 0) + (numUno ?? 0)
            mensaje = String(resultado)
        }
        
        
        let alert = UIAlertController(
                    title: "¡Suma!",
                    message: mensaje,
                    preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(
            title: "Cerrar",
            style: UIAlertAction.Style.cancel))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func resta(_ sender: Any) {
        let numUno = Double(numeroSuperior.text!)
        let numDos = Double(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        
        if (numUno != nil && numDos != nil) {
            let resultado = (numUno ?? 0) - (numDos ?? 0)
            mensaje = String(resultado)
        }
        
        
        let alert = UIAlertController(
                    title: "¡Resta!",
                    message: mensaje,
                    preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(
            title: "Cerrar",
            style: UIAlertAction.Style.cancel))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func multiplicacion(_ sender: Any) {
        let numUno = Double(numeroSuperior.text!)
        let numDos = Double(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        
        if (numUno != nil && numDos != nil) {
            let resultado = (numDos ?? 0) * (numUno ?? 0)
            mensaje = String(resultado)
        }
        
        
        let alert = UIAlertController(
                    title: "¡Multiplicación!",
                    message: mensaje,
                    preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(
            title: "Cerrar",
            style: UIAlertAction.Style.cancel))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func division(_ sender: Any) {
        //let dividendo = numeroInferior.text
        //let divisor = numeroSuperior.text
        
        let numDos = Double(numeroSuperior.text!)
        let numUno = Double(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        
        if (numUno != nil && numDos != nil) {
            let resultado = (numUno ?? 0) / (numDos ?? 0)
            mensaje = String(resultado)
        }
        
        
        let alert = UIAlertController(
                    title: "¡División!",
                    message: mensaje,
                    preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(
            title: "Cerrar",
            style: UIAlertAction.Style.cancel))
        
        self.present(alert, animated: true, completion: nil)
    }
    
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

