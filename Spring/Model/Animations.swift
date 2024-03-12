//
//  Animations.swift
//  Spring
//
//  Created by Алексей on 12.03.2024.
//

import Foundation

struct Animations {
    let preset: String
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> [Animations] {
        var animations: [Animations] = []
        
        let preset = DataStore.shared.presets
        
        for index in 0..<preset.count {
            let animation = Animations(
                preset: preset[index],
                duration: Double.random(in: 0.3...1),
                delay: Double.random(in: 0.5...1.5)
            )
            
            animations.append(animation)
        }
        
        return animations
    }
}
