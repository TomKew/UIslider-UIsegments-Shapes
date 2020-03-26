//
//  ViewController.swift
//  UIslider&UIsegments&Shapes
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Tom Kew-Goodale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tipDollar: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        /* Set the tint color of the minimum value */
    
        self.slider.minimumTrackTintColor = UIColor.red

        /* Set the tint color of the thumb */
        self.slider.maximumTrackTintColor = UIColor.green

        /* Set the tint color of the maximum value */
        self.slider.thumbTintColor = UIColor.black
        
    }
    
    
    @IBAction func mySlider(_ sender: Any) {
        var slideValue = Double(slider.value)
        tipDollar.text = ("$\(((slideValue*25)*100).rounded()/100)")
        
        
        slideValue = slideValue*100
        
        label.text = ("\(((slideValue*100).rounded()/100))" + "%")
    }
    


    
    
}

