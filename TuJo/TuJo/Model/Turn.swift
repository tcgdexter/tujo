//
//  Turn.swift
//  TuJo
//
//  Created by christian on 12/24/25.
//

import Foundation
import SwiftData

class Turn {
    var id: UUID = UUID()
    
    var abilitiesUsed: Int = 0
    var hasDrawn: Bool = false
    var hasAttachedEnergyFromHand: Bool = false
    var hasAttacked: Bool = false
    var hasPerformedCheckup: Bool = false
    var hasPlayedSupporter: Bool = false
    var hasPlayedStadium: Bool = false
    var hasRetreated: Bool = false
    var itemsPlayed: Int = 0

    var turnNumber: Int
    
    init(turnNumber: Int) {
        self.turnNumber = turnNumber
    }
}
