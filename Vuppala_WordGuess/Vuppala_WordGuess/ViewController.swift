//
//  ViewController.swift
//  Vuppala_WordGuess
//
//  Created by student on 3/31/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    @IBOutlet weak var guessALetterButton: UIButton!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    var words = [["CARDS","Used to play"],
                      ["PHONE","used to operate"],["LAPTOP","Used to work"],["APPLE","used for Eating"],["KNIFE","used for cutting"]]
   let maxNumOfWrongGuesses = 10
    var guessesleft = 11
    var clueword = ""
    var wordguess = ""
    var noOfGuessCount = 0
    var wordGuessed = 0
    var wordMissed = 0
    var guessedLetters = ""
    var indexOfWord  = 0
    var images = ["cards","phone","laptop","apple","knife"]
    
    func formatWordField() {
        var revealedWord = ""
        guessedLetters += guessLetterField.text!
        
        for letter in wordguess {
            if guessedLetters.contains(letter) {
                revealedWord = revealedWord + " \(letter)"
            } else {
                revealedWord += " _"
            }
        }
        revealedWord.removeFirst()
        userGuessLabel.text = revealedWord
    }
    func letterGuessed() {
        formatWordField()
        noOfGuessCount += 1
        guessesleft = guessesleft - 1
        let currentLetterGuessed = guessLetterField.text!
        let revealedWord = userGuessLabel.text!
        if guessesleft == 0 {
            playAgainButton.isHidden = false
            guessLetterField.isEnabled = false
            guessALetterButton.isEnabled = false
            guessCountLabel.text = "You have used all the available guesses, Please start again"
            wordMissed += 1
            updateCount()
            updateImages()
        } else if !revealedWord.contains("_") {
            playAgainButton.isHidden = false
            guessLetterField.isEnabled = false
            guessALetterButton.isEnabled = false
            guessCountLabel.text = "You won! It took you \(noOfGuessCount) attempts to guess the word!"
            wordGuessed += 1
            updateCount()
            updateImages()
        } else {
            let guess = ( noOfGuessCount == 1 ? "Guess" : "Guesses")
            guessCountLabel.text = "You have made \(noOfGuessCount) \(guess)"
        }
        if (wordGuessed + wordMissed) == words.count {
            guessCountLabel.text = "Congratulations, You are done, Please start over again ?"
            updateImages()
        }
    }
    @IBAction func guessLetterPressed(_ sender: Any) {
        letterGuessed()
        updateInterfaceAfterGuess()
        let letter = guessLetterField.text
        if letter?.isEmpty == true{
            guessALetterButton.isEnabled = false
        }
        else{
            
            guessALetterButton.isEnabled = true
        }
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        imageView.isHidden = true
        indexOfWord += 1
        if indexOfWord == words.count {
            indexOfWord = 0
            wordGuessed = 0
            wordMissed = 0
            updateCount()
        }
        wordguess = words[indexOfWord][0]
        clueword = words[indexOfWord][1]
        hintLabel.text = "HINT: " + clueword
        playAgainButton.isHidden = true
        guessLetterField.isEnabled = true
        guessALetterButton.isEnabled = false
        guessesleft = maxNumOfWrongGuesses + 1
        guessedLetters = ""
        formatWordField()
        guessCountLabel.text = "You have Made Zero Guessess"
        noOfGuessCount = 0
    }
    func updateImages(){
        if(guessesleft == 0){
            imageView.isHidden = false
            imageView.image = UIImage(named: images[5])
            let originalImageFrame = imageView.frame
            let widthShrink: CGFloat = 10
            let heightShrink: CGFloat = 10
            let newFrame = CGRect(
            x: imageView.frame.origin.x + widthShrink,
            y: imageView.frame.origin.y + heightShrink,
            width: imageView.frame.width - widthShrink,
            height: imageView.frame.height - heightShrink)
            imageView.frame = newFrame
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0,  animations: {
                            self.imageView.frame = originalImageFrame
                        })
        }
        else{
            imageView.isHidden = false
            imageView.image = UIImage(named: images[indexOfWord])
            let originalImageFrame = imageView.frame
            let widthShrink: CGFloat = 10
            let heightShrink: CGFloat = 10
            let newFrame = CGRect(
            x: imageView.frame.origin.x + widthShrink,
            y: imageView.frame.origin.y + heightShrink,
            width: imageView.frame.width - widthShrink,
            height: imageView.frame.height - heightShrink)
            imageView.frame = newFrame
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0,  animations: {
                            self.imageView.frame = originalImageFrame
                        })
        }

    
    }
        
    func updateCount(){
            wordsMissedLabel.text = "Total number of words guessed wrongly: \(wordMissed)"
            wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordGuessed)"
            wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - (wordGuessed + wordMissed))"
        }
    func updateInterfaceAfterGuess(){
            guessLetterField.resignFirstResponder()
            guessLetterField.text = ""
        }
    

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wordguess = words[indexOfWord][0]
        clueword = words[indexOfWord][1]
        hintLabel.text = "HINT: " + clueword
        totalWordsLabel.text = "Total number of words in game: \(words.count)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count)"
        formatWordField()
        guessALetterButton.isEnabled = false
        playAgainButton.isHidden = true
        
        
    }

    
    @IBAction func guessLetterText(_ sender: Any) {
        if let letterGuessed = guessLetterField.text?.last {
            guessLetterField.text = "\(letterGuessed)"
            guessALetterButton.isEnabled = true
        } else {
            
            guessALetterButton.isEnabled = false
        }
    }
    
       
        
    
    
    
    
    
    
    
    

    
    
    
    
    
    
}




