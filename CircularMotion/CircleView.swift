//
//  CircleView.swift
//  CircularMotion
//
//  Created by RJS on 29/7/16.
//  Copyright © 2016 RJS. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    private var centerX: CGFloat { return bounds.midX }
    private var centerY: CGFloat { return bounds.midY }
    
    private let ballRadius = CGFloat(5)
    private let ballDistanceFromCenter = CGFloat(50)
    private var ballPosition = CGPoint(x: 0, y: 0) {
        didSet { setNeedsDisplay() }
    }
    
    var rotationAngle = CGFloat(270)
    
    
    override func drawRect(rect: CGRect) {
        
        // draw ball
        let path = UIBezierPath()
        
        path.addArcWithCenter(
            ballPosition,
            radius: ballRadius,
            startAngle: 0,
            endAngle: CGFloat(2*M_PI),
            clockwise: true
        )
        path.lineWidth = 1.0
        UIColor.blackColor().setStroke()
        path.stroke()
        
        // draw line to ball
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 1.0)
        CGContextMoveToPoint(context, centerX, centerY)
        CGContextAddLineToPoint(context, ballPosition.x, ballPosition.y)
        CGContextStrokePath(context)
    }
    
    
    func moveCircle(){
        let angleInRadians = rotationAngle * CGFloat(M_PI) / 180
        let x = centerX + ballDistanceFromCenter * cos(angleInRadians)
        let y = centerY + ballDistanceFromCenter * sin(angleInRadians)        
        ballPosition = CGPoint(x: x, y: y)
        
    }

}
