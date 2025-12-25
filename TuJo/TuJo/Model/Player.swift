//
//  Player.swift
//  TuJo
//
//  Created by christian on 12/24/25.
//

import Foundation
import SwiftData

@Model
class Player {
    var number: Int
    var name: String?
    
    init(number: Int) {
        self.number = number
    }
}
