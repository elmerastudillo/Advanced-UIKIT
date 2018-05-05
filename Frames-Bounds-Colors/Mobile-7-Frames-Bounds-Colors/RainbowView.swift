//
//  RainbowView.swift
//  Mobile-7-Frames-Bounds-Colors
//
//  Created by Elmer Astudillo on 5/1/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import Foundation
import UIKit

class RainbowView : UIView {
    
    var colors : [UIColor]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.white
        colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.red]
        
        var yCoord = 0
        for i in colors! {
            let barView = UIView(frame: CGRect(x: 0, y: yCoord, width: Int(UIScreen.main.bounds.width), height: 100))
            barView.backgroundColor = i
            
            self.addSubview(barView)
            yCoord += 100
        }
    }
}
