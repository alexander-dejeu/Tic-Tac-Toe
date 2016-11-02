//
//  Player.swift
//  Tic-Tac-Toe
//
//  Created by Alex Dejeu on 10/21/16.
//  Copyright © 2016 Do Good Technology. All rights reserved.
//

import Foundation

enum Player {
    case X
    case O
    
    func getName() -> String {
        switch self{
        case .X:
            return "X"
        case .O:
            return "O"
        }
    }
}
