//
//  ViewController.swift
//  CourseDisplayApp3
//
//  Created by Vuppala,Sai Krishna on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayImage: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var semoffered: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network security", "Fall 2022"],["img02", "44643", "IOS", "Spring 2022"],["img03", "44646", "Data Straming", "Fall 2022"]]
    
    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(imageNum: imageNumber)
        
        previousButton.isEnabled = false
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func previousButtonClicked(_ sender: UIButton) {
        
        nextButton.isEnabled = true
        
        imageNumber -= 1
        updateUI(imageNum: imageNumber)
        
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
    }
    
    @IBAction func NextButtonClicked(_ sender: Any) {
        
        imageNumber += 1
        updateUI(imageNum: imageNumber)
        
        previousButton.isEnabled = true
        
        if(imageNumber == courses.count-1)
        {
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(imageNum:Int){
        DisplayImage.image = UIImage(named:courses[imageNum][0])
        crsNum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        semoffered.text = courses[imageNum][3]
        
    }
}

