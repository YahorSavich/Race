//
//  ViewController.swift
//  Race
//
//  Created by Виктория Савич on 5.10.21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var firstSplash: UIImageView!
    @IBOutlet weak var secondSplash: UIImageView!
    
    @IBAction func actionStart(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "RaceViewController")
        controller.modalPresentationStyle = .overFullScreen
            present(controller, animated: true)
    }
}

