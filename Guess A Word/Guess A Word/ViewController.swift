//
//  ViewController.swift
//  Guess A Word
//
//  Created by Vuppala,Sai Krishna on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var lettersEntered: UITextField!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    var words = [["SWIFT", "Programming Language"],
               ["DOG", "Animal"],
               ["CYCLE", "Two wheeler"],
               ["MACBOOK", "Apple device"]]
      
      var count = 0;
      var word = ""
      var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        checkButton.isEnabled = false;
        
    }
    
    @IBAction func checkButtonClicked(_ sender: Any) {
    }
    

    @IBAction func playAgainClicked(_ sender: UIButton) {
    }
    
    
    @IBAction func enterLabelChanged(_ sender: UITextField) {
    }
    
}

