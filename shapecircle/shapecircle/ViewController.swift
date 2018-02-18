//
//  ViewController.swift
//  shapecircle
//
//  Created by Izati Ng on 8/2/18.
//  Copyright © 2018 bklv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shapeLayer = CAShapeLayer()
        
        let center = view.center
     
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: 0, endAngle: 1 * CGFloat.pi, clockwise: true)
        
//        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: 0, endAngle: 90, clockwise: true)
        
        shapeLayer.path = circularPath.cgPath
    
        view.layer.addSublayer(shapeLayer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

