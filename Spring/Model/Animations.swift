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
    
    var description: String {
        return """
        preset: \(preset)
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animations {
        Animations(
            preset: DataStore.shared.presets.randomElement() ?? "slideLeft",
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 0.2...0.5)
        )
    }
}
