//
//  Board.swift
//  Tic-Tac-Toe
//
//  Created by Alex Dejeu on 10/21/16.
//  Copyright © 2016 Do Good Technology. All rights reserved.
//

import Foundation

struct Board {
    var winner : Player? = nil
    var currentTurn: Player = .X
    var boardValues: [[Status]] = [[.empty, .empty, .empty],
                                   [.empty, .empty, .empty],
                                   [.empty, .empty, .empty]]
    
    func getCurrentPlayer() -> String{
        switch currentTurn {
        case .O:
            return "O"
        case .X:
            return "X"
        }
    }
    
    
}
