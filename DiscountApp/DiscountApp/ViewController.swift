//
//  ViewController.swift
//  DiscountApp
//
//  Created by Vuppala,Sai Krishna on 2/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Amount: UILabel!
    
    @IBOutlet weak var Discount: UILabel!
    
    @IBOutlet weak var AfterDiscount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func SubmitButton(_ sender: UIButton) {
        
        var amt = Double(Amount.text!)!
        var discount = Double (Discount.text!)!
        var result = Double(amt-(amt*(discount/100)))
        AfterDiscount.text = "Final Amount after discount is \(result)"
    }
    
    
}

