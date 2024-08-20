//
//  Extension + UIButton.swift
//  Animation
//
//  Created by Владислав Белов on 18.08.2024.
//
import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 0.7
        pulse.duration = 0.6
        
        layer.add(pulse, forKey: nil)
    }
}
