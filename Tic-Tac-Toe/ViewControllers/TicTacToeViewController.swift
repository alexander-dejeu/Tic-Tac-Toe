//
//  TicTacToeViewController.swift
//  Tic-Tac-Toe
//
//  Created by Alex Dejeu on 10/21/16.
//  Copyright © 2016 Do Good Technology. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController, fieldViewDelegate {
    
    var boardView: BoardView! = nil
    var board : Board = Board()
    
    @IBOutlet weak var currentPlayerLabel: UILabel!

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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cellTappedAt(x: Int, y: Int){
        if(board.winner == nil){
            board.updateCellAtPosition(x: x, y: y)
            boardView.updateViewAt(player: board.getLastTurn(), x:x, y:y)
            updateUI()
        }
    }
    
    
    func updateUI(){
        if board.winner != nil{
            //TODO: Bad practice to check nil then unwrap?
            currentPlayerLabel.text = "The winner is: \(board.winner!.getName())"
        }
        else{
            currentPlayerLabel.text = board.getCurrentPlayer()
        }
    }

    @IBAction func resetButtonTapped(_ sender: AnyObject) {
        
        //Reset the data model + the view!
        print("reset button tapped")
        board.resetData()
        boardView.resetView()
        updateUI()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
