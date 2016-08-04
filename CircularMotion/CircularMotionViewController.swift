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
    @IBOutlet weak var angleInDegrees: UILabel!
    

    override func viewDidAppear(animated: Bool) {
        cv.moveCircle()
        angleInDegrees.text = String(Int(cv.rotationAngle))
    }

    
    @IBAction func incrementAngle() {
        cv.rotationAngle += CGFloat(10)
        cv.moveCircle()
        angleInDegrees.text = String(Int(cv.rotationAngle))
    }
}

