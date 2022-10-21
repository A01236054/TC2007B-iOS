//
//  ImagenViewController.swift
//  appMultimedia
//
//  Created by Mauricio Cuadros on 21/10/22.
//

import UIKit

class ImagenViewController: UIViewController {
    
    func Mostrar(identifier: String) {
           let storyBoard = UIStoryboard(name: "Main", bundle: nil)
           let viewController = storyBoard.instantiateViewController(withIdentifier:  identifier)
           viewController.modalPresentationStyle = .fullScreen
           self.present(viewController, animated: true)
    }
    
    
    @IBAction func mostrarVideo(_ sender: Any) {
        Mostrar(identifier: "VideoViewController")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

