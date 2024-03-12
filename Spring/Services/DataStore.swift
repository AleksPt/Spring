//
//  DataStore.swift
//  Spring
//
//  Created by Алексей on 12.03.2024.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let presets = [
        "pop",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing"
    ]
    
    private init() {}
}
