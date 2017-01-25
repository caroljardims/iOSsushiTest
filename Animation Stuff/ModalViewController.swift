//
//  ModalViewController.swift
//  Animation Stuff
//
//  Created by Caroline Siqueira on 24/01/17.
//  Copyright © 2017 Caroline Siqueira. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var deliciousBtn: UIButton!
    @IBOutlet weak var dismissBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.deliciousBtn.layer.cornerRadius = 5
        self.initialConfig()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: { self.rightConfig() }, completion: nil)
    }
    
    func initialConfig() {
        self.deliciousBtn.alpha = 0.0
        self.dismissBtn.alpha = 0.0
    }
    
    func rightConfig() {
        self.deliciousBtn.alpha = 1
        self.dismissBtn.alpha = 0.5
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
}
