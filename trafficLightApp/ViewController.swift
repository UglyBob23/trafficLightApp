//
//  ViewController.swift
//  trafficLightApp
//
//  Created by Владимир Паутов on 12.11.2019.
//  Copyright © 2019 Владимир Паутов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var changeLightButton: UIButton!
    
    var clickCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.backgroundColor = .red
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.backgroundColor = .yellow
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = redLight.frame.size.width / 2
        greenLight.backgroundColor = .green
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = redLight.frame.size.width / 2
        changeLightButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func changeLightButtonPressed() {
        
        switch clickCounter {
        case 0:
            changeLightButton.setTitle("Next", for: .normal)
            redLight.alpha = 1
            clickCounter += 1
        case 1:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            clickCounter += 1
        case 2:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            clickCounter += 1
        case 3:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            clickCounter = 1
        default:
            break
        }
        
    }
    
    
}

