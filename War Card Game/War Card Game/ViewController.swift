//
//  ViewController.swift
//  War Card Game
//
//  Created by Michael Hsu on 5/28/16.
//  Copyright © 2016 Michael Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //assistant editor, control click on object and drag here to create an object
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    // Creating an array for cards
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.winnerLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //touch up inside means the user touches the screen and lifts finger inside of the boundaries
    //this method executes an action when the button is pressed
    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Random number generator
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        let secondRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct string with random number
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        // UIImage is a class -> this is creating a new object of a class
        // When the play button is tapped, this sets the firstCardImageView value equal to another image
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        // Determine the higher card
        if (firstRandomNumber > secondRandomNumber) {
            
            // TODO: first card is larger
            self.playerScore += 1
            
            // Update labels, converts the player's score into a String, then changes text to that String
            self.playerScoreLabel.text = String(self.playerScore)
        }
        else if (firstRandomNumber == secondRandomNumber) {
            
            // TODO: numbers are equal
        }
        else {
            
            // TODO: second card is larger
            self.enemyScore += 1
            
            // Update labels, converts the computer's score into a String, then changes text to that String
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
        
        // End game
        if (self.playerScore == 10 && self.enemyScore < 10) {
            
            self.firstCardImageView.hidden = true
            self.secondCardImageView.hidden = true
            self.playRoundButton.hidden = true
            self.logo.hidden = true
            
            //TODO: player wins
            self.winnerLabel.hidden = false
        }
        else if (self.playerScore < 10 && self.enemyScore == 10) {
            self.firstCardImageView.hidden = true
            self.secondCardImageView.hidden = true
            self.playRoundButton.hidden = true
            self.logo.hidden = true
            
            //TODO: computer wins
            self.winnerLabel.text = "Computer Wins!"
            self.winnerLabel.hidden = false
        }
    }

}

