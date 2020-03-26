//
//  SelectViewController.swift
//  UIslider&UIsegments&Shapes
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Tom Kew-Goodale. All rights reserved.
//


import UIKit

class SelectViewController: UIViewController {


    @IBOutlet weak var sgementedControl: UISegmentedControl!
    
    var triangleLayer : CAShapeLayer?
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        
    }
    
@IBOutlet weak var triangleView: UIView!
        func setUpTriangle(){
        let heightWidth = triangleView.frame.size.width
        let path = CGMutablePath()

        path.move(to: CGPoint(x: 0, y: heightWidth))
        path.addLine(to: CGPoint(x:heightWidth/2, y: heightWidth/2))
        path.addLine(to: CGPoint(x:heightWidth, y:heightWidth))
        path.addLine(to: CGPoint(x:0, y:heightWidth))

        let shape = CAShapeLayer()
        shape.path = path
        shape.fillColor = UIColor.blue.cgColor

        triangleLayer = shape
        triangleView.layer.insertSublayer(shape, at: 0)
            
            
    }
    

    func setUpSquare(){
        let heightWidth = triangleView.frame.size.width
        let path = CGMutablePath()

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: heightWidth))
        path.addLine(to: CGPoint(x:heightWidth, y:heightWidth))
       
        path.addLine(to: CGPoint(x:heightWidth, y:0))
        path.addLine(to: CGPoint(x:0, y:0))

        let shape = CAShapeLayer()
        shape.path = path
        shape.fillColor = UIColor.red.cgColor
        
        triangleLayer = shape
        triangleView.layer.insertSublayer(shape, at: 0)
    }
    
 
     func setUpPie(){
           let heightWidth = triangleView.frame.size.width
           let path = UIBezierPath()

           path.move(to: CGPoint(x:heightWidth/2, y: heightWidth/2))
           //path.addLine(to: CGPoint(x:heightWidth/2, y: heightWidth/2))
           //path.addLine(to: CGPoint(x:heightWidth, y:heightWidth))
        path.addArc(withCenter: CGPoint(x:heightWidth/2, y: heightWidth/2), radius: 100, startAngle: .pi/3.75, endAngle:.pi/1.25 , clockwise: true)

           let shape = CAShapeLayer()
        shape.path = path.cgPath
           shape.fillColor = UIColor.brown.cgColor

           triangleLayer = shape
           triangleView.layer.insertSublayer(shape, at: 0)
               
               
       }
    
    func setUpCircle(){
        
        let path = UIBezierPath(ovalIn: triangleView.bounds)

       

        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.fillColor = UIColor.green.cgColor

        triangleLayer = shape
        triangleView.layer.insertSublayer(shape, at: 0)
            
            
    }
    
@IBAction func SelectChanged(_ sender: Any) {
    switch sgementedControl.selectedSegmentIndex
    {
    case 0:
        triangleLayer?.removeFromSuperlayer()
        setUpSquare()
    case 1:
        triangleLayer?.removeFromSuperlayer()
        setUpCircle()
    case 2:
        triangleLayer?.removeFromSuperlayer()
        setUpTriangle()
    case 3:
        triangleLayer?.removeFromSuperlayer()
        setUpPie()
    default:
        break
    }
}

}
