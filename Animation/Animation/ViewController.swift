//
//  ViewController.swift
//  Animation
//
//  Created by Vuppala,Sai Krishna on 3/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakemeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageOutlet.frame.origin.x = view.frame.maxX;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        imageOutlet.frame.origin.x = view.frame.maxX;
        
        happyOutlet.frame.origin.x = view.frame.width
        
        sadOutlet.frame.origin.x = view.frame.width
        
        angryOutlet.frame.origin.x = view.frame.width
        
        shakemeOutlet.frame.origin.x = view.frame.width
    }
    

    @IBAction func happyButtonclicked(_ sender: UIButton) {
        animateImage("happy")
     
    }
    
    
    @IBAction func sadButtonClicked(_ sender: Any) {
        animateImage("sad")
       
    }
    
    
    @IBAction func angryButtonClicked(_ sender: UIButton) {
        animateImage("angry")
        
    }
    
    
    @IBAction func shakemeButtonClicked(_ sender: UIButton) {
    }
    
    
    @IBAction func showButtonClicked(_ sender: UIButton) {
        
        
    }
    
    func animateImage(_ imageName: String){
        UIView.animate(withDuration: 1, animations:{
                   self.imageOutlet.alpha = 0;

               } )
        
        
    }
    
    
    
}

