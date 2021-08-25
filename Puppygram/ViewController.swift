//
//  ViewController.swift
//  Puppygram
//
//  Created by Alumne on 27/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var switchItem: UISwitch!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var counter : Double = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressBar.progress = 1.0
        activityIndicator.startAnimating()
        label.text = "\(Int(counter))"
    }

    @IBAction func colorHandler(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0 {
            label.textColor = UIColor.black
        }
        else {
            label.textColor = UIColor.blue
        }
    }
    
    @IBAction func handleOnOff(_ sender: Any) {
        if switchItem.isOn {
            progressBar.progress = 1.0
            activityIndicator.startAnimating()
        }
        else {
            progressBar.progress = 0.0
            activityIndicator.stopAnimating()
        }
    }
    
    @IBAction func handleSlideBar(_ sender: Any) {
        let size = (slider.value * 50)+0
        label.font = UIFont.systemFont(ofSize:CGFloat(size))
    }
    
   
  
    @IBAction func changeNumber(_ sender: Any) {
        counter = stepper.value
        label.text = "\(Int(counter))"
    }
    
    
    
    
    

}

