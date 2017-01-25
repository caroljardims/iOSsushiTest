//
//  ScaleSegue.swift
//  Animation Stuff
//
//  Created by Caroline Siqueira on 23/01/17.
//  Copyright © 2017 Caroline Siqueira. All rights reserved.
//

import UIKit

class ScaleSegue: UIStoryboardSegue {
    
    override func perform() {
        scale()
    }
    
    func scale() {
        let dest = self.destination
        let src = self.source
        
        let container = src.view.superview
        let center = src.view.center
        
        dest.view.transform = CGAffineTransform(scaleX: 0.1, y: 1)
        dest.view.center = center
        
        container?.addSubview(dest.view)
        
        UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseOut, animations: {
            dest.view.transform = CGAffineTransform.identity
            self.transformation()
        }, completion: { success in
            src.present(dest, animated: false, completion: nil)
        })
    }
    
    func transformation(){
        let dest = self.destination
        dest.view.alpha = 1.0
    }
    

}
