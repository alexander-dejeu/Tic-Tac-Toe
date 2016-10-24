//
//  BoardView.swift
//  Tic-Tac-Toe
//
//  Created by Alex Dejeu on 10/21/16.
//  Copyright © 2016 Do Good Technology. All rights reserved.
//

import UIKit

class BoardView: UIView {

    
    init(boardHeight: CGFloat, boardWidth: CGFloat) {
        let gameFrame = CGRect(x: 0, y: 0, width: boardWidth, height: boardHeight)
        super.init(frame: gameFrame)
        
        let rows = 3
        let colms = 3
        
        for r in 0..<rows{
            for c in 0..<colms{
                var tempFieldFrame = CGRect(x: CGFloat(c) * (boardWidth/3.0), y: CGFloat(r) * (boardHeight/3.0), width: boardWidth/3.0, height: boardHeight/3)
                var tempFieldView: FieldView = FieldView(frame: tempFieldFrame, xCord: c, yCord: r)
                tempFieldView.layer.borderWidth = 1
                tempFieldView.textlabel = UILabel(frame: CGRect(x: 0, y: 0, width: boardWidth/3.0, height: boardHeight/3.0))
                tempFieldView.addSubview(tempFieldView.textlabel)
                tempFieldView.textlabel.text = "X"
                tempFieldView.textlabel.adjustsFontSizeToFitWidth = true
                tempFieldView.textlabel.textAlignment = .center
                self.addSubview(tempFieldView)
            }
        }
        
    }
    


    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
