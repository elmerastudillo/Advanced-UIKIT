//
//  SkylineView.swift
//  Layers_&_Beziers
//
//  Created by Elmer Astudillo on 5/3/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import Foundation
import UIKit

//
//  GradientView.swift
//  Layers_&_Beziers
//
//  Created by Elmer Astudillo on 5/3/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import Foundation
import UIKit

class SkylineView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        translatesAutoresizingMaskIntoConstraints = false
        createBezierPath()
        self.layoutIfNeeded()
    
    }
    
    func createBezierPath() {
        let shape = CAShapeLayer()
        shape.fillColor = UIColor.white.cgColor
        let path = UIBezierPath()
        let startPoint = CGPoint(x: bounds.minX, y: bounds.midY)
        path.move(to: startPoint)
        
//        let endPoint = CGPoint(x: bounds.maxX, y: bounds.midY)
//        path.addLine(to: endPoint)
        path.addCurve(to: CGPoint(x: bounds.minX + 60 ,y: bounds.midY), controlPoint1: CGPoint(x: bounds.minX - 100, y: bounds.midY), controlPoint2: CGPoint(x: bounds.minX - 80, y:300))
        path.move(to: CGPoint(x: bounds.minX + 60 ,y: bounds.midY))
        path.addCurve(to: CGPoint(x: bounds.maxX / 2 + 40 ,y: bounds.midY + 20), controlPoint1: CGPoint(x: bounds.minX + 80 ,y: bounds.midY + 40), controlPoint2: CGPoint(x: 70, y:bounds.midY + 100))
//        path.addCurve(to: CGPoint(x: bounds.minX + 300 ,y: bounds.midY), controlPoint1: CGPoint(x: bounds.minX, y: bounds.midY), controlPoint2: CGPoint(x: 70, y:10))
//        path.addCurve(to: CGPoint(x: bounds.minX + 300 ,y: bounds.midY), controlPoint1: CGPoint(x: bounds.minX, y: bounds.midY), controlPoint2: CGPoint(x: 70, y:10))
        
        let circlePath = UIBezierPath(arcCenter: .zero, radius: 50, startAngle: 0, endAngle: CGFloat.pi / 2, clockwise: true)
    
        
        shape.path = path.cgPath
        shape.lineWidth = 5
        shape.strokeColor = UIColor.blue.cgColor
        
        
        layer.addSublayer(shape)
    }
    
    func drawCircle() -> () {
        let halfSize:CGFloat = min( bounds.size.width/2, bounds.size.height/2)
        let desiredLineWidth:CGFloat = 1
        
        let circlePath = UIBezierPath(
            arcCenter: CGPoint(x:halfSize,y:halfSize),
            radius: CGFloat( halfSize - (desiredLineWidth/2) ),
            startAngle: CGFloat(0),
            endAngle:CGFloat(Double.pi * 2),
            clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = desiredLineWidth
        
        layer.addSublayer(shapeLayer)
    }
}

