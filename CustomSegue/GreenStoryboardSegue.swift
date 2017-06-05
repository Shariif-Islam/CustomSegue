//
//  GreenStoryboardSegue.swift
//  CustomSegue
//
//  Created by AdBox on 6/5/17.
//  Copyright © 2017 myth. All rights reserved.
//

import UIKit

class GreenStoryboardSegue: UIStoryboardSegue {
    
    override func perform() {
        scale()
    }
    
    func scale() {
    
        let destinationView = self.destination
        let fromView = self.source
        
        let containerView = fromView.view.superview
        let center = fromView.view.center
        
        destinationView.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        destinationView.view.center = center
        
        containerView?.addSubview(destinationView.view)
        
        UIView.animate(withDuration: 0.5, animations: {
            destinationView.view.transform = CGAffineTransform.identity
        }) { (success) in
        
            fromView.present(destinationView, animated: false, completion: nil)
        }
    }

}


class RedStoryboardSegue: UIStoryboardSegue {
    
    override func perform() {
        scale()
    }
    
    func scale() {
        
        let destinationView = self.destination
        let fromView = self.source
        
        fromView.view.superview?.insertSubview(destinationView.view, at: 0)
        
        UIView.animate(withDuration: 0.5, animations: {
            fromView.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        }) { (success) in
            
            fromView.dismiss(animated: false, completion: nil)
        }
    }
    
}
