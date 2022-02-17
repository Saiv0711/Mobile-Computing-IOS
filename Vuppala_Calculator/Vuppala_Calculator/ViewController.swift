//
//  ViewController.swift
//  Vuppala_Calculator
//
//  Created by Vuppala,Sai Krishna on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    
                var a:Double = -1.1
                var b:Double = 0
                var result:Double = 0
                var operation = "+"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
    @IBAction func ButtonAC(_ sender: UIButton) {
        
        DisplayLabel.text  = ""
                a = 0
                b = 0

    }
    
    
    @IBAction func ButtonC(_ sender: UIButton) {
        
        DisplayLabel.text = ""
    }
    
    
    @IBAction func ChangeSign(_ sender: UIButton) {
        
        if(DisplayLabel.text?.first == "-"){
            DisplayLabel.text?.removeFirst()
        }
        else{
            DisplayLabel.text = "-\(DisplayLabel.text!)"
        }

    }
    
    @IBAction func ButtonDivison(_ sender: UIButton) {
        
        operation = "/"
        a = Double(DisplayLabel.text!)!
        DisplayLabel.text = ""

    }
    
    @IBAction func Button7(_ sender: UIButton) {
        
        DisplayLabel.text = DisplayLabel.text!  + "7"
    }
    
    @IBAction func Button8(_ sender: UIButton) {
    
        DisplayLabel.text = DisplayLabel.text!  + "8"
    }
    
    @IBAction func Button9(_ sender: UIButton) {
        
        DisplayLabel.text = DisplayLabel.text!  + "9"
    }
    
    @IBAction func ButtonMultiplicatioon(_ sender: UIButton) {
        
            operation = "*"
            a = Double(DisplayLabel.text!)!
            DisplayLabel.text = ""

    }
    
    
    @IBAction func Button4(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text!  + "4"
    }
    

    
    @IBAction func Button5(_ sender: UIButton) {
        
        DisplayLabel.text = DisplayLabel.text!  + "5"
    }
    
    @IBAction func Button6(_ sender: UIButton) {
        
        DisplayLabel.text = DisplayLabel.text!  + "6"
    }
    
    @IBAction func ButtonSubtraction(_ sender: UIButton) {
        
        operation = "-"
        a = Double(DisplayLabel.text!)!
        DisplayLabel.text = ""

    }
    
    @IBAction func Button1(_ sender: UIButton) {
        
        DisplayLabel.text = DisplayLabel.text!  + "1"
    }
    
    @IBAction func Button2(_ sender: UIButton) {
        
        DisplayLabel.text = DisplayLabel.text!  + "2"
    }
    
    @IBAction func Button3(_ sender: UIButton) {
    
        DisplayLabel.text = DisplayLabel.text!  + "3"
    }
    
    @IBAction func ButtonAddition(_ sender: UIButton) {
        
        operation = "+"
        a = Double(DisplayLabel.text!)!
        DisplayLabel.text = ""

    }
    
    @IBAction func Button0(_ sender: UIButton) {
   
        DisplayLabel.text = DisplayLabel.text!  + "0"
    }
    
    @IBAction func ButtonDot(_ sender: UIButton) {
        
        if(!DisplayLabel.text!.contains("."))
            {
                DisplayLabel.text = DisplayLabel.text! + "."
                return
            }

    }
    
    @IBAction func ButtonPercentage(_ sender: UIButton) {
        
        operation = "%"
        a = Double(DisplayLabel.text!)!
        DisplayLabel.text = ""



    }
    
    @IBAction func ButtonEqual(_ sender: UIButton) {
    
        b = Double(DisplayLabel.text!)!
                             
                             switch operation {
                             case "+":
                                 result = a+b
                                 DisplayLabel.text = String(result)
                             case "-":
                                 result = a-b
                                 DisplayLabel.text = String(result)
                             case "*":
                                 result = a*b
                                 DisplayLabel.text = String(result)
                             case "/":
                                 result = a/b
                                 if(b == 0){
                                     DisplayLabel.text="Error"
                                 }
                                 else{
                                 let newres = round(result*100000)/100000
                                     DisplayLabel.text = String(newres)
                                 }
                             case "%":


                result = a.truncatingRemainder(dividingBy: b)
                                 let result2 = round(result*10)/10
                                 
                                 DisplayLabel.text = String(result2)
                             default:
                                 DisplayLabel.text = "ERROR"

    }
        let splitresponse = DisplayLabel.text!.components(separatedBy: ".")
                     let testresponse = DisplayLabel.text
                     if(!(testresponse == "Error")){
                     if(splitresponse[1] == "0"){
                         DisplayLabel.text = splitresponse[0]
                     }
                     }

    
    
    
}

}
