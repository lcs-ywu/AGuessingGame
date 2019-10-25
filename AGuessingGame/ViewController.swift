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
        
        //Make an object named 'synthesizer', which is an instance of the
        //class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
        
        //Make a string that contains what we want the conputer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
        
        //Make an object named 'utterance', which is an instance of the class
        //AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesizer.speak(utterance)
        
    }


}

