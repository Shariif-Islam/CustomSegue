//
//  ViewController.swift
//  CustomSegue
//
//  Created by AdBox on 6/5/17.
//  Copyright © 2017 myth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func repareForUnwind(segue:UIStoryboardSegue) {
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        
        let segue = RedStoryboardSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        
        segue.perform()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

