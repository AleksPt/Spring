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
    @IBOutlet weak var descriptionTextView: UILabel!
    
    private let animations = Animations.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 10
        animationButton.tintColor = .black
        
        descriptionTextView.text = """
                                preset:\n\(animations.randomElement()?.preset ?? "")\n
                                duration:\n\(animations.randomElement()?.duration ?? 0)\n
                                delay:\n\(animations.randomElement()?.delay ?? 0)
                                """
    }

    @IBAction func runAnimation(_ sender: SpringButton) {
        guard let animations = animations.randomElement() else { return }
        descriptionTextView.text = """
                                preset:\n\(animations.preset)\n
                                duration:\n\(animations.duration)\n
                                delay:\n\(animations.delay)
                                """
    }
    
}

