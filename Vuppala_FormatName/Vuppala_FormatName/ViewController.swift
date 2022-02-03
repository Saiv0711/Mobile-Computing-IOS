//
//  ViewController.swift
//  Vuppala_FormatName
//
//  Created by Vuppala,Sai Krishna on 1/28/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
   
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var DetailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var FN = firstNameTextField.text!
        var LN = lastNameTextField.text!
       
        var result = FN.prefix(1) + LN.prefix(1)
        var final = result.uppercased()
        
        fullNameLabel.text = "Full Name: \(FN) , \(LN)"
        initialsLabel.text = "initials: \(final)"
        DetailLabel.text = "Details"
        
        
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        DetailLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
}
    


