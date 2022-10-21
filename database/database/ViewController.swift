//
//  ViewController.swift
//  database
//
//  Created by alumno on 19/10/22.
//

import UIKit
import PostgresClientKit

class ViewController: UIViewController {
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var consultaTextField: UITextField!
    
    @IBAction func consultaProgres(_ sender: Any) {
        do {
            var configuration = PostgresClientKit.ConnectionConfiguration()
            configuration.host = "127.0.0.1"
            configuration.database = "postgres"
            configuration.user = "postgres"
            configuration.ssl = false
            configuration.port = 5430
            
            let connection = try PostgresClientKit.Connection(configuration: configuration)
            defer { connection.close() }

            //let text = "SELECT * FROM accounts;"
            let text = consultaTextField.text!
            let statement = try connection.prepareStatement(text: text)
            defer { statement.close() }

            let cursor = try statement.execute()
            defer { cursor.close() }

            for row in cursor {
                let columns = try row.get().columns
                let userId = try columns[0].int()
                let userName = try columns[1].string()
                let password = try columns[2].string()
                let email = try columns[3].string()
                let created = try columns[4].timestamp()
                let lastLogin = try columns[5].timestamp()
            
                resultadoLabel.text = "userId: \(userId) \nuserName:  \(userName) \npassword: \(password) \nemail: \(email)"
            }
        } catch {
            print(error) // better error handling goes here
            resultadoLabel.text = error.localizedDescription
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

