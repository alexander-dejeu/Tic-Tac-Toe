//
//  FieldView.swift
//  Tic-Tac-Toe
//
//  Created by Alex Dejeu on 10/21/16.
//  Copyright © 2016 Do Good Technology. All rights reserved.
//

import UIKit

class FieldView: UIView {

    var xCord: Int
    var yCord: Int
    
    var textlabel : UILabel!
    
    
    init(frame: CGRect, xCord: Int, yCord: Int) {
        
        self.xCord = xCord
        self.yCord = yCord
        
        super.init(frame: frame)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer:)))
        self.addGestureRecognizer(tapGesture)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleTap(recognizer: UITapGestureRecognizer){
        print("tapped on: x = \(xCord), y = \(yCord)")
        //Have to tell the view controller to update the model!
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
