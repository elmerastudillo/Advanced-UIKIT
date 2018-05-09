//
//  ViewController.swift
//  Motion
//
//  Created by Elmer Astudillo on 5/8/18.
//  Copyright © 2018 Elmer Astudillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createBottomBoxesAnimatedBounceWithLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var colors = [UIColor.red, UIColor.orange, UIColor.cyan, UIColor.blue, UIColor.yellow]
    func createBottomBoxesAnimated() {
        for i in 0...4 {
            let view = UIView(frame: CGRect(x: CGFloat(i) * self.view.frame.width / 5, y: self.view.bounds.maxY, width: self.view.frame.width / 5, height: self.view.frame.width / 5))
            view.backgroundColor = colors[i]
            self.view.addSubview(view)
            
            let delay = 0.25 * CGFloat(i)
            UIView.animate(withDuration: 1, delay: TimeInterval(delay), options: [], animations: {
                    view.frame = CGRect(x: CGFloat(i) * self.view.frame.width / 5, y: self.view.bounds.maxY - self.view.frame.width / 5, width: self.view.frame.width / 5, height: self.view.frame.width / 5)
            }, completion: nil)

        }
        
    }
    
    func createBottomBoxesAnimatedBounce() {
        for i in 0...4 {
            let view = UIView(frame: CGRect(x: CGFloat(i) * self.view.frame.width / 5, y: self.view.bounds.maxY, width: self.view.frame.width / 5, height: self.view.frame.width / 5))
            view.backgroundColor = colors[i]
            self.view.addSubview(view)
            
            let delay = 0.25 * CGFloat(i)
            
            UIView.animate(withDuration:1,
                           delay: TimeInterval(delay),
                           usingSpringWithDamping: 0.2,
                           initialSpringVelocity: 0.1,
                           options: [],
                           animations: {
                            //Do all animations here
                            view.frame = CGRect(x: CGFloat(i) * self.view.frame.width / 5, y: self.view.bounds.maxY - self.view.frame.width / 5, width: self.view.frame.width / 5, height: self.view.frame.width / 5)
            }, completion: {
                //Code to run after animating
                (value: Bool) in
            })
        }
    }
        
    func createBottomBoxesAnimatedBounceWithLabels() {
        for i in 0...4 {
            let view = UIView(frame: CGRect(x: CGFloat(i) * self.view.frame.width / 5, y: self.view.bounds.maxY, width: self.view.frame.width / 5, height: self.view.frame.width / 5))
            view.backgroundColor = colors[i]
            self.view.addSubview(view)
            
            let delay = 0.25 * CGFloat(i)
            
            UIView.animate(withDuration:1,
                           delay: TimeInterval(delay),
                           usingSpringWithDamping: 0.2,
                           initialSpringVelocity: 0.1,
                           options: [],
                           animations: {
                            //Do all animations here
                            view.frame = CGRect(x: CGFloat(i) * self.view.frame.width / 5, y: self.view.bounds.maxY - self.view.frame.width / 5, width: self.view.frame.width / 5, height: self.view.frame.width / 5)
            }, completion: {
                //Code to run after animating
                (value: Bool) in
            })
        }
        
        let label1 = UILabel(frame: CGRect(x: self.view.bounds.minX, y: self.view.frame.height - self.view.frame.width / 5 - 30, width: self.view.frame.width, height: 30))
        let label2 = UILabel(frame: CGRect(x: self.view.bounds.minX, y: self.view.frame.height - self.view.frame.width / 5 - 60, width: self.view.frame.width, height: 30))
        
        label1.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        label1.alpha = 0.0
        label2.backgroundColor = UIColor.lightGray
        label2.alpha = 0.0
        
        UIView.animate(withDuration: 0.6, delay: 1.9, options: [], animations: {
            label1.alpha = 1.0
        }, completion: nil)
        
        UIView.animate(withDuration: 0.7, delay: 1.3, options: [], animations: {
            label2.alpha = 1.0
        }, completion: nil)
        
        let gradient = CAGradientLayer()
        let color1 = UIColor(red: 252/255, green: 217/255, blue: 97/255, alpha: 1)
        let color2 = UIColor(red: 247/255, green: 107/255, blue: 28/255, alpha: 1)
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.colors = [color1.cgColor, color2.cgColor]
        
        let view = UIView(frame: CGRect(x: 0 - self.view.frame.width, y: self.view.frame.height - self.view.frame.width / 5 - 65, width: self.view.frame.width, height: 5))

        UIView.animate(withDuration: 2.0, delay: 2.3, options: [], animations: {
            view.frame = CGRect(x: self.view.bounds.minX, y: self.view.frame.height - self.view.frame.width / 5 - 65, width: self.view.frame.width, height: 5)
        }, completion: nil)
        view.layer.addSublayer(gradient)
        gradient.frame = view.bounds
        self.view.addSubview(view)
        self.view.addSubview(label1)
        self.view.addSubview(label2)
    }
    
    func squareAnimationView() {
        var x : CGFloat = 10
        var y : CGFloat = 10
        for _ in 1...4 {
            let view = UIView(frame: CGRect(x: x, y: y, width: self.view.bounds.width / 2 - 10, height: self.view.bounds.height / 4 - 10))
            view.backgroundColor = UIColor.blue
            self.view.addSubview(view)
            print("add view")
            x += self.view.bounds.width / 2
            y += self.view.bounds.height / 8
        }
        
        
    }
    
    func transformationView() {
        let view = UIView(frame: CGRect(x: 20, y: 20, width: self.view.frame.width - 40, height: self.view.frame.height - 40))
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 25.0
        self.view.addSubview(view)
        
        UIView.animateKeyframes(withDuration: 5.00, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.05, animations: {
                view.frame = CGRect(x: self.view.bounds.midX - 20, y: self.view.bounds.midY, width: 50, height: 50)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.05, animations: {
                view.frame = CGRect(x: self.view.bounds.midX - 20, y: self.view.bounds.midY - 150, width: 50, height: 80)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.05, animations: {
                 view.frame = CGRect(x: self.view.bounds.minX + 60, y: self.view.bounds.midY - 150, width: 300, height: 80)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.05, animations: {
                view.frame = CGRect(x: self.view.bounds.minX + 60, y: self.view.bounds.midY - 150, width: 300, height: 300)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.9, relativeDuration: 0.05, animations: {
                view.frame = CGRect(x: self.view.bounds.midX - 25, y: self.view.bounds.maxY - 90, width: 50, height: 50)
                view.backgroundColor = UIColor.blue
            })
        }) { (_) in
            print("Im done")
        }
    }
}
