//
//  ViewController.swift
//  HomeWork202
//
//  Created by Андрей Блинов on 30.05.2023.
//

import UIKit

enum Light {
    case red
    case orange
    case green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var orangeLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var nextLightButton: UIButton!
    
    private let lightOf: CGFloat = 0.4
    private let lightOn: CGFloat = 1
    private var currentLight: Light = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightOf
        orangeLight.alpha = lightOf
        greenLight.alpha = lightOf
        
        nextLightButton.layer.cornerRadius = 15
        redLight.layer.cornerRadius = redLight.frame.width / 2
        orangeLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        orangeLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }

    @IBAction func changeLightButtonTapped(_ sender: UIButton) {
        if nextLightButton.currentTitle == "START" {
            nextLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = lightOn
            greenLight.alpha = lightOf
            currentLight = .orange
        case .orange:
            redLight.alpha = lightOf
            orangeLight.alpha = lightOn
            currentLight = .green
        case .green:
            orangeLight.alpha = lightOf
            greenLight.alpha = lightOn
            currentLight = .red
        }
        
    }
    
}

