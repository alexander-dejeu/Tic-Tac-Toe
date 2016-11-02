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
    
    mutating func updateCellAtPosition(x: Int, y: Int) {
        switch boardValues[y][x]{
        case .empty:
            boardValues[y][x] = .hasPlayer(currentTurn)
            updateCurrentTurn()
            
        default:
            print("already a value set at \(x), \(y)")
            
        }
        checkIfWinner()
        print(winner)
    }
    
    mutating func checkIfWinner(){
        //check if any vertical winners exist
        for i in 0..<3{
            if(boardValues[0][i] == boardValues[1][i] && boardValues[1][i] == boardValues[2][i] ){
                
                // TODO: Ask Nik about this vs.  The new proposed style.
                if case let .hasPlayer(p) = boardValues[1][i] {
                    winner = p
                    //Bad practice?
                    return
                }
            }
            //check if any horizontal winners exist
            if(boardValues[i][0] == boardValues[i][1] && boardValues[i][1] == boardValues[i][2] ){
                if case let .hasPlayer(p) = boardValues[1][i] {
                    winner = p
                    return
                }

            }
        }
        
        
        //Check if any top left to bottom right diagonal winner exist
        if (boardValues[0][0] == boardValues[1][1] && boardValues[2][2] == boardValues[1][1]){
            if case let .hasPlayer(p) = boardValues[1][1] {
                winner = p
                return
            }
        }
        //Check if top right to bottom left diagonal winner exists
        if (boardValues[0][2] == boardValues[1][1] && boardValues[2][0] == boardValues[1][1]){
            if case let .hasPlayer(p) = boardValues[1][1] {
                winner = p
                return
            }
        }
        
        
        
        //check if any diagonal winners exist
    }
    
    
    
    mutating func updateCurrentTurn(){
        if currentTurn == .O{
            currentTurn = .X
        }
        else{
            currentTurn = .O
        }
    }
    
    
}
