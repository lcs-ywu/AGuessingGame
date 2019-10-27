//
//  ViewController.swift
//  AGuessingGame
//
//  Created by James Wu on 2019-10-21.
//  Copyright © 2019 James Wu. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    //MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    
    
    @IBOutlet weak var submittedGuess: UITextField!
    //MARK: Initializers
    
    
    //MARK: Methods(functions)-Behaviours
    
    //Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        speak(message: "I'm thinking of a number between 1 and 100. Guess what it is."
        )
        
        //Report the target number to
         print("For testing purposes,the random number is \(targetNumber)")
    }
    
    //Will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //Obtain the guess value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        //For testing purposes, what was the guess?
        print("For testing purposes, the guess made is \(guessNumber)")
        //Give the appropiate feedback to the user
        if guessNumber > targetNumber {
            
          speak(message: "Guess lower next time.")
           
        } else if guessNumber < targetNumber{
            
          speak(message: "Guess higher next time.")
            
        } else {
            
          speak(message: "You are correct!")
            
        }
    }
    
    //A function that will speak whatever message is provided
    func speak(message: String) {
        //Make an object named 'synthesizer', which is an instance of the
        //class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
        //Make an object named 'utterance', which is an instance of the class
        //AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesizer.speak(utterance)
        
        //Print the message
        print(message)
    }
}

