//
//  RaceViewController.swift
//  Race
//
//  Created by Виктория Савич on 5.10.21.
//

import UIKit

class RaceViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        backGround()
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        backGround()
    }
    
    func backGround() {
        let backGroundImage = UIImage(named: "road")
        let backGroundImageView = UIImageView(image: backGroundImage)
        let backGroundImageView2 = UIImageView(image: backGroundImage)
        backGroundImageView.frame = CGRect(x:
                                            self.view.frame.origin.x, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height)
        backGroundImageView.contentMode = .scaleToFill
        self.view.addSubview(backGroundImageView)
        
        backGroundImageView2.frame = CGRect(x:
                                                self.view.frame.origin.x, y: -1 * self.view.frame.size.height, width: self.view.frame.size.width, height: self.view.frame.size.height)
        backGroundImageView2.contentMode = .scaleToFill
        self.view.addSubview(backGroundImageView2)
        
        UIView.animate(withDuration: 10, delay: 0, options: [ .repeat, .curveLinear], animations: {
            backGroundImageView.frame = backGroundImageView.frame.offsetBy(dx: 0.0, dy: backGroundImageView.frame.size.height)
       
            backGroundImageView2.frame = backGroundImageView2.frame.offsetBy(dx: 0.0, dy: backGroundImageView2.frame.size.height)
        })
        
        print(backGroundImageView.frame)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var firstCar: UIImageView!
//    @IBOutlet var viewRace: UIView!
   
    
    
//    @IBAction func actionButtonStartRAce(_ sender: UIButton) {
//        UIView.animate(withDuration: 2, delay: 0.5) {
//            self.viewRace.frame = CGRect(x: self.viewRace.frame.minX, y: self.viewRace.frame.minY + 850, width: self.viewRace.frame.width, height: self.viewRace.frame.height)
//        }
        
        //    completion: { isFinished in
        //                    self.view.setNeedsLayout()
        //                    self.view.layoutIfNeeded()
        //
        //                }
//    }
    
    
    @IBAction func actionSwipeRight(_ sender: Any) {
        if view.frame.maxX > 150 {
            firstCar.frame = CGRect(x: firstCar.frame.origin.x + 150, y: firstCar.frame.origin.y, width: firstCar.frame.width, height: firstCar.frame.height)
        }
    }
    @IBAction func actionSwipeLeft(_ sender: Any) {
        if view.frame.maxX > 150 {
            firstCar.frame = CGRect(x: firstCar.frame.origin.x - 150, y: firstCar.frame.origin.y, width: firstCar.frame.width, height: firstCar.frame.height)
        }
    }
    @IBAction func actionSwipeUp(_ sender: Any) {
        if view.frame.maxX > 50 {
            firstCar.frame = CGRect(x: firstCar.frame.origin.x, y: firstCar.frame.origin.y - 50, width: firstCar.frame.width, height: firstCar.frame.height)
        }
    }
    @IBAction func actionSwipeDown(_ sender: Any) {
        if view.frame.maxX > 50 {
            firstCar.frame = CGRect(x: firstCar.frame.origin.x, y: firstCar.frame.origin.y + 50, width: firstCar.frame.width, height: firstCar.frame.height)
        }
    }
    
}

