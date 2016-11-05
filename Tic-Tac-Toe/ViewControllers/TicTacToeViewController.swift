//
//  TicTacToeViewController.swift
//  Tic-Tac-Toe
//
//  Created by Alex Dejeu on 10/21/16.
//  Copyright © 2016 Do Good Technology. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController, FieldViewDelegate {
    
    var boardView: BoardView! = nil
    var board : Board = Board()
    
    @IBOutlet weak var currentPlayerLabel: UILabel!

    
    //MARK: ViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView = BoardView(boardHeight: 300, boardWidth: 300)
        boardView.center = view.center
        
        // Set all of the fieldView Delegates
        for arrays in boardView.fieldViews{
            for element in arrays{
                element.delegate = self
            }
        }
        view.addSubview(boardView)

        updateUI()
    }

    
    //MARK: Actions
    func cellTappedAt(x: Int, y: Int){
        if board.winner == nil{
            board.updateCellAtPosition(x: x, y: y)
            boardView.updateViewAt(player: board.getLastTurn(), x:x, y:y)
            updateUI()
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: AnyObject) {
        //Reset the data model + the view!
        board.resetData()
        boardView.resetView()
        updateUI()
    }
    
    
    //MARK: Helpers
    func updateUI(){
        if board.winner != nil{
            //TODO: Bad practice to check nil then unwrap?
            currentPlayerLabel.text = "The winner is: \(board.winner!.rawValue)"
        }
        else{
            currentPlayerLabel.text = board.currentTurn.rawValue
        }
    }

}
