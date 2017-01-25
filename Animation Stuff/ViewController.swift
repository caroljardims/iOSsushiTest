//
//  ViewController.swift
//  Animation Stuff
//
//  Created by Caroline Siqueira on 23/01/17.
//  Copyright © 2017 Caroline Siqueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initialConfig()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            self.rightConfig()
        }, completion: nil)
    }
    
    func initialConfig(){
        self.view.backgroundColor = UIColor.white
    }

    func rightConfig(){
        self.view.backgroundColor = UIColor.orange
    }


}

