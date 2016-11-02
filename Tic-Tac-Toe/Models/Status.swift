//
//  Status.swift
//  Tic-Tac-Toe
//
//  Created by Alex Dejeu on 10/21/16.
//  Copyright © 2016 Do Good Technology. All rights reserved.
//

import Foundation

enum Status {
    case empty
    case hasPlayer(Player)
}

extension Status: Equatable{
    static func ==(lhs: Status, rhs: Status) -> Bool {
        switch (lhs, rhs) {
        case (.empty, .empty):
            return true
            
        case (let .hasPlayer(player1), let .hasPlayer(player2)):
            return player1 == player2
            
        default:
            return false
        }
    }
}
