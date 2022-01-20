//
//  ViewController.swift
//  Hello
//
//  Created by Vuppala,Sai Krishna on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameOutlets: UITextField!
    
    @IBOutlet weak var GradeOutlet: UITextField!
    @IBOutlet weak var DisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        
        // Read the text from the textfield and store in a variable
        var name = NameOutlets.text!
        
        // Assign thr text to the display label in this format Hello, name!
        
        
        var grade =  GradeOutlet.text!
        
        DisplayLabel.text = "hello, \(name), Your grade is, \(grade)"
    

    }
    
}

