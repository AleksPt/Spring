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
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private var animation = Animations.getRandomAnimation()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        descriptionLabel.text = animation.description
    }

    @IBAction func runAnimation(_ sender: UIButton) {
        descriptionLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.delay = animation.delay
        animationView.duration = animation.duration
        animationView.animate()
        
        animation = Animations.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

