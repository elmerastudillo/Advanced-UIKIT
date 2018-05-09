//
//  ViewController.swift
//  Mobile-7-Frames-Bounds-Colors
//
//  Created by Elmer Astudillo on 5/1/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
//         self.view = ChessBoard(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view = RainbowView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))

//        self.view.backgroundColor = UCO
        // First screen Red view
//        let view = UIView(frame: CGRect(x: 20, y: 20, width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height - 40))
//
//        view.backgroundColor = UIColor.red
//        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

