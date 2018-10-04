//
//  ViewController.swift
//  Concentration
//
//  Created by Jose Delaguarda on 7/9/18.
//  Copyright © 2018 DLGTECH. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var game = Concentration(numberOfPairOfCards: (cardButtons.count + 1) / 2)
    
    var flipCount = 0{
        didSet{
            flipsCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipsCountLabel: UILabel!
    
   
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices = ["👻","🍆","👻","🍆"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
    
    }else {
    print("chosen card was not in cardButtons")
    
    }
        
}
    func updateViewFromModel(){
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTittle(emoji(for: card),
                for: UIControlState.normal)
                button.backgroundColor =
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) :#colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)}
        }
    }
   
}




