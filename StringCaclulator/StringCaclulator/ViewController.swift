//
//  ViewController.swift
//  StringCaclulator
//
//  Created by Vuppala,Sai Krishna on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    var operand1 = -1.1;
    var operand2 = -1.1
    var calOperator = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Button6(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "6"
        if operand1 == -1.1{
            operand1 = 6
        }
        else{
            operand2 = 6
        }
        
    }
    
    @IBAction func Button9(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "9"
        if operand2 == -1.1{
            operand2 = 9
        }
        else{
            operand1 = 9
        }
    }
    
    
    @IBAction func ButtonPlus(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "+"
        if calOperator == ""{
            calOperator = "+"
        }

    }
    
    @IBAction func ButtonEqual(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "="
        if calOperator == "+"{
            DisplayLabel.text = DisplayLabel.text! + "\(operand1+operand2)"
        }

    }
    
}

