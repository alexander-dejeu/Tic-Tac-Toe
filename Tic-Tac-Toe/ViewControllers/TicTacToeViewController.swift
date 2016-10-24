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
        print("x: \(boardView.frame.origin.x) and y: \(boardView.frame.origin.y)")
        
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
        print("never will get called")
        board.updateCellAtPosition(x: x, y: y)
//        boardView.updateViewAt(x:x, y:y)
        updateUI()
    }
    
    
    func updateUI(){
        if board.winner != nil{
            currentPlayerLabel.text = "The winner is..."
        }
        else{
            currentPlayerLabel.text = board.getCurrentPlayer()
        }
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
