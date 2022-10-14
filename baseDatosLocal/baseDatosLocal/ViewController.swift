//
//  ViewController.swift
//  baseDatosLocal
//
//  Created by alumno on 12/10/22.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    @IBOutlet weak var busquedaTextField: UITextField!
    @IBOutlet weak var creacionTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func buscarDatos(_ sender: Any) {
        let realm = try!Realm() // hacer uso de realm
        // Usar ream para buscar (arrow functions)
        let persona = realm.objects(Persona.self)
        let busquedaDePersona = persona.where{
            $0.password == busquedaTextField.text!
        }
        if busquedaDePersona.count > 0 {
            resultadoLabel.text = busquedaDePersona[0].usuario
        }
        else {
            let alert = UIAlertController(title: "Error", message: "No se encontró ningún dato con el password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func agregarDatos(_ sender: Any) {
        // Creación objeto persona
        let persona = Persona(value: ["usuario": creacionTextField.text, "password": passwordTextField.text])
        
        // Guarda los datos del objeto persona en la BD local
        let realm = try!Realm()
        try! realm.write{
            realm.add(persona)
        }
        let alert = UIAlertController(title: "Alert", message: "Dato agregado correctamente", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class Persona: Object {
    @Persisted var nombre = ""
    @Persisted var usuario = ""
    @Persisted var password = ""
    @Persisted var mail = ""
    @Persisted var edad = ""
}

