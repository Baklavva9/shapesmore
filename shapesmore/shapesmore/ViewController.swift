//
//  ViewController.swift
//  shapesmore
//
//  Created by Yoohoo and Company on 26/1/18.
//  Copyright © 2018 bklv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var yellowSquare: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        // how to draw with CGRect
        
        let frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        let blueSquare = UIView(frame: frame)
        blueSquare.backgroundColor = UIColor.blue
        
        view.addSubview(blueSquare)
    
        let smallFrame = CGRect(x: 10, y: 10, width: 30, height: 30)
        let blackSquare = UIView(frame: smallFrame)
        blackSquare.backgroundColor = UIColor.black

        blueSquare.addSubview(blackSquare)
        
        // how to customize a UIView shape - by declaring it as a variable outlet above
        
        yellowSquare.backgroundColor = UIColor.orange
        
        //
   
    }
    
    @IBDesignable
    class UberView: UIView {
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                layer.cornerRadius = cornerRadius
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                layer.borderWidth = borderWidth
            }
        }
        
        @IBInspectable var borderColor: UIColor = UIColor.black {
            didSet {
                layer.borderColor = borderColor.cgColor
            }
        }
    }
}

