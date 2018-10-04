//
//  Concentration.swift
//  Concentration
//
//  Created by Jose Delaguarda on 7/10/18.
//  Copyright © 2018 DLGTECH. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int){
        
    }
    init(numberOfPairOfCards: Int){
        for _ in 1...numberOfPairOfCards{
            let card = Card(indentifier: 4)
            cards += [card, card]
            
        }
        
}
}
