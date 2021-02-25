//
//  ViewController.swift
//  colorFinder
//
//  Created by 廖昱晴 on 2021/2/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var redValue = 255
    var greenValue = 255
    var blueValue = 255
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redText.text = "R:\(redValue)"
        greenText.text = "G:\(greenValue)"
        blueText.text = "B:\(blueValue)"
        redSlider.value = Float(redValue)
        greenSlider.value = Float(greenValue)
        blueSlider.value = Float(blueValue)
        changedBackgroundColor()
    }

    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = Int(sender.value)
        changedBackgroundColor()
        redText.text = "R:\(redValue)"
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = Int(sender.value)
        changedBackgroundColor()
        greenText.text = "G:\(greenValue)"
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = Int(sender.value)
        changedBackgroundColor()
        blueText.text = "B:\(blueValue)"
    }
    
    func changedBackgroundColor() {
        view.backgroundColor = UIColor(red: CGFloat(redValue) / 255, green: CGFloat(greenValue) / 255, blue: CGFloat(blueValue) / 255, alpha: 1)
    }
    
}

