//
//  Card.swift
//  Concentration
//
//  Created by Jose Delaguarda on 7/10/18.
//  Copyright © 2018 DLGTECH. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var indentifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return identifierFactory
    }
    
    init(indentifier : Int){
        self.indentifier = Card.getUniqueIdentifier()
    }
}
