//
//  GradientView.swift
//  Layers_&_Beziers
//
//  Created by Elmer Astudillo on 5/3/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import Foundation
import UIKit

class GradientView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
//        self.backgroundColor = UIColor.blue
        self.layer.addSublayer(gradient(bounds: UIScreen.main.bounds))
    }
    
    
    // Gradient border with transparent fill
    func gradient(bounds: CGRect) -> CAGradientLayer
    {
        let gradientLayer = CAGradientLayer()
        gradientLayer.name = "GradientLayer"
        gradientLayer.colors = colorSet()
        gradientLayer.frame = bounds
        //Make color gradient start from left to right
        
        return gradientLayer
    }
    
    func colorSet() -> [CGColor]
    {
        // Hex: 3023AE
        let colorOne = UIColor(red: 252.0/255.0, green: 217/255.0, blue: 97/255.0, alpha: 1.0)
        // Hex: C86DD7
        let colorTwo = UIColor(red: 247/255.0, green: 107/255.0, blue: 28/255.0, alpha: 1.0)
        let colorSet : [CGColor] = [colorOne.cgColor, colorTwo.cgColor]
        return colorSet
    }
}
