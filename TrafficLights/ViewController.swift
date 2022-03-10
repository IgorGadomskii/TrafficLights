//
//  ViewController.swift
//  TrafficLights
//
//  Created by Macbook on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    
    @IBOutlet weak var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.alpha = 0.3
        redColor.layer.cornerRadius = 50
        
        yellowColor.alpha = 0.3
        yellowColor.layer.cornerRadius = 50
        
        greenColor.alpha = 0.3
        greenColor.layer.cornerRadius = 50
        
    }
/*
 Был вариант решения через switch, но этот вариант мне показался проще и обходится уже существующими свойствами, без введения новых.
 */
    @IBAction func changeTrafficLight() {
        
        if redColor.alpha == 1.0 {
            yellowColor.alpha = 1.0
            redColor.alpha = 0.3
            changeLightButton.setTitle("Next", for: .normal)
        } else if yellowColor.alpha == 1.0 {
            greenColor.alpha = 1.0
            yellowColor.alpha = 0.3
            changeLightButton.setTitle("Go!", for: .normal)
        } else {
            greenColor.alpha = 0.3
            redColor.alpha = 1.0
            changeLightButton.setTitle("Next", for: .normal)
        }
    }
}

