//
//  Match.swift
//  TuJo
//
//  Created by christian on 12/24/25.
//

import Foundation
import SwiftData

@Model
class Match {
    var id: UUID = UUID()
    
    var turns: [Turn] = []
    
    var trackingOpponent: Bool = false
    var turnNumber: Int = 0
    
    var player1HasSpecialCondition: Bool = false
    var player2HasSpecialCondition: Bool = false
    var showingCheckupAlert: Bool = false
    
    var winner: Player? = nil
    
    init() { }
    
    func completeCheckUpAlert() {
        showingCheckupAlert = false
    }
    
    func nextTurn() {
        turnNumber += 1
        let nextTurn = Turn(turnNumber: turnNumber)
        turns.append(nextTurn)
    }
}


