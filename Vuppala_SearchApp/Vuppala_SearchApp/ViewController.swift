//
//  ViewController.swift
//  Vuppala_SearchApp
//
//  Created by Vuppala,Sai Krishna on 3/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var search: UIButton!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    @IBOutlet weak var prevImage: UIButton!
    
    @IBOutlet weak var nextImage: UIButton!
    
    @IBOutlet weak var resetbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchTextField(_ sender: UITextField) {
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func showNextImagesBtn(_ sender: UIButton) {
    }
    @IBAction func showPrevImageBtn(_ sender: UIButton) {
    }
    @IBAction func resetButtonClicked(_ sender: UIButton) {
    }
}

