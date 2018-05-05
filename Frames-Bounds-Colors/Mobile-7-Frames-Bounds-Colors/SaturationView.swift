//
//  SaturationView.swift
//  Mobile-7-Frames-Bounds-Colors
//
//  Created by Elmer Astudillo on 5/1/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import Foundation
import UIKit

class SaturationView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let screen = UIScreen.main.bounds
        self.backgroundColor = UIColor.white
        var sat: CGFloat = 1
        
        var point = CGPoint(x: 0, y: 0)
        
        for _ in 0...8 {
            let view = UIView(frame: CGRect(x: point.x, y: point.y, width: screen.width - (point.x * 2), height: screen.height - (point.x * 2)))
            
            self.addSubview(view)
            
            let backgroundView = UIView(frame: view.frame)
            backgroundView.backgroundColor = UIColor.white
            view.backgroundColor = UIColor.red.withAlphaComponent(sat)
            self.insertSubview(backgroundView, belowSubview: view)
            sat = sat - (1/6)
            
            point.x = point.x + 20
            point.y = point.y + 20
        }
    }
}
