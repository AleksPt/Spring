//
//  ViewController.swift
//  Spring
//
//  Created by Алексей on 12.03.2024.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationButton: SpringButton!
    
    private let animations = Animations.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 10
        animationButton.tintColor = .black
    }

    @IBAction func runAnimation(_ sender: SpringButton) {
        
    }
    
}

