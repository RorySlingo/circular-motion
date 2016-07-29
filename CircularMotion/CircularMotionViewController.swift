//
//  ViewController.swift
//  CircularMotion
//
//  Created by RJS on 29/7/16.
//  Copyright © 2016 RJS. All rights reserved.
//

import UIKit

class CircularMotionViewController: UIViewController {

    @IBOutlet weak var cv: CircleView!
    
    override func viewDidAppear(animated: Bool) {
        cv.moveCircle()
    }
    
    @IBAction func incrementAngle() {
        cv.rotationAngle += CGFloat(10)
        cv.moveCircle()
    }
}

