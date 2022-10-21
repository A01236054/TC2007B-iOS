//
//  MainViewController.swift
//  mySecondApp
//
//  Created by Mauricio Cuadros on 14/10/22.
//

import UIKit
import AVKit

class MainViewController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    func Mostrar(identifier: String) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier:  identifier)
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)
    }
    
    @IBAction func mostrarCalculadora(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func mostrarImagen(_ sender: Any) {
        Mostrar(identifier: "ImagenViewController")
    }
    
    @IBAction func mostrarVideo(_ sender: Any) {
        if let ruta = Bundle.main.path(forResource: "BigBuckBunny", ofType: "mp4") {
            let player = AVPlayerViewController()
            let videoUrl = URL(filePath: ruta)
            let video = AVPlayer(url: videoUrl)
            player.player = video
            present(player, animated: true, completion: {
                video.play()
            })
        }
        else {
            let alert = UIAlertController(
                        title: "Error",
                        message: "No se encontró el video",
                        preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(
                title: "Cerrar",
                style: UIAlertAction.Style.cancel))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
}
