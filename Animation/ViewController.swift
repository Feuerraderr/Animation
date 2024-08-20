//
//  ViewController.swift
//  Animation
//
//  Created by Владислав Белов on 18.08.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var coreAnimationView: UIView!
    
    private var isAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) { [unowned self] in
                if !isAnimating {
                    coreAnimationView.frame.origin.x -= 40
                    isAnimating.toggle()
                }
            }
    }
    
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        sender.animation = "pop"
        sender.curve = "easeIn"
        sender.animate()
        
        springAnimationView.animation = "shake"
        springAnimationView.animate()
    }
    
}

