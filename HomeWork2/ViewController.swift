//
//  ViewController.swift
//  HomeWork2
//
//  Created by Юрий Краснов on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRGB: UIView!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorValue.text = String(redColorSlider.value)
        greenColorValue.text = String(greenColorSlider.value)
        blueColorValue.text = String(blueColorSlider.value)
        
        viewRGB.layer.cornerRadius = 10
    }
    
    func changeRGB() {
        viewRGB.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func redColorSliderAction() {
        redColorValue.text =
            String(round(redColorSlider.value * 100) / 100)
        greenColorValue.text =
            String(round(greenColorSlider.value * 100) / 100)
        blueColorValue.text =
            String(round(blueColorSlider.value * 100) / 100)
        
        changeRGB()
    }
    
    }


