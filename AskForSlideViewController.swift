//
//  AskForSlideViewController.swift
//  Animation Stuff
//
//  Created by Caroline Siqueira on 24/01/17.
//  Copyright © 2017 Caroline Siqueira. All rights reserved.
//

import UIKit

class AskForSlideViewController: UIViewController {
    
    
    @IBOutlet weak var overbtn: UIButton!
    @IBOutlet weak var sushilogo: UIImageView!
    @IBOutlet weak var centerView: UIView!
    let arrowImage:UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        initialAssets()
        sushilogo.isUserInteractionEnabled = true
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(self.moveThisThing))
        
        
        sushilogo.addGestureRecognizer(panGesture)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.5, delay: 0, options: [.curveEaseInOut, .repeat], animations: {
            self.rightAssets()
        }, completion: nil)
    }
    
    func initialAssets() {
        overbtn.alpha = 0.0
        centerView.layer.cornerRadius = 10
        arrowImage.image = UIImage(named: "upArrow")
        arrowImage.contentMode = .scaleAspectFit
        arrowImage.center = centerView.center
        arrowImage.alpha = 0.0
        arrowImage.frame = CGRect(x: self.centerView.frame.origin.x - 20, y: self.view.frame.maxY/2, width: 70, height: 100)
        self.centerView.insertSubview(arrowImage, at: 0)
    }
    
    func rightAssets() {
        arrowImage.frame.origin.y = self.centerView.frame.minY - arrowImage.frame.size.height
        arrowImage.alpha = 1.0
    }
    
    func moveThisThing() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.sushilogo.alpha = 0.0
            self.overbtn.alpha = 1.0
            self.arrowImage.isHidden = true
        }, completion: nil)
    }
    
}
