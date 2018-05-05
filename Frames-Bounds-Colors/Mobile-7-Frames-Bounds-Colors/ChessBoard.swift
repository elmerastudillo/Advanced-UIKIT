//
//  RedView.swift
//  Mobile-7-Frames-Bounds-Colors
//
//  Created by Elmer Astudillo on 5/1/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import Foundation
import UIKit

class ChessBoard: UIView {
                                            
    override init(frame: CGRect) {
        super.init(frame: frame)
      
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var yCoord : CGFloat = 0
        let screen = UIScreen.main.bounds
        self.backgroundColor = UIColor.white
        for i in 0...8 {
            var xCoord: CGFloat = 0
            var isBLack = true
            if i % 2 == 0 {
                isBLack = false
            }
            for _ in 0...8 {
                let checkerBox = UIView(frame:CGRect(x: xCoord, y: yCoord, width: screen.width / 8, height: screen.width / 8))
                
                if isBLack {
                    checkerBox.backgroundColor = UIColor.black
                    isBLack = false
                } else {
                    isBLack = true
                }
                
                self.addSubview(checkerBox)
                
                xCoord = xCoord + (screen.width / 8)
            }
            yCoord = yCoord + (screen.width / 8)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
