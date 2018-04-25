//
//  ViewController.swift
//  LottieAnimEX
//
//  Created by Apple on 14/04/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let animationView = LOTAnimationView(contentsOf: URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/PinJump.json")!)
        
         let animationView = LOTAnimationView(name: "phoenix_team")
            animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width/2 )
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
        animationView.animationSpeed = 0.5
        
//        let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
//        animationView.transform = minimizeTransform
//        UIView.animate(withDuration: 3.5, delay: 3.0, options: [.curveEaseIn, .repeat], animations: {
//            animationView.transform = CGAffineTransform.identity
//        }, completion: nil)
        
         animationView.loopAnimation = true
            
            view.addSubview(animationView)
            
            animationView.play()
        
        let animationView2 = LOTAnimationView(name: "balloons_animation")
        animationView2.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height )
        animationView2.center = self.view.center
        animationView2.contentMode = .scaleAspectFill
        
        animationView2.loopAnimation = true
        
        animationView.animationSpeed = 1
        
        view.addSubview(animationView2)
        
        animationView2.play()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

