//
//  FactBook.swift
//  Chess Tactics
//
//  Created by tblum on 12/6/14.
//  Copyright (c) 2014 tblum. All rights reserved.
//

import Foundation
import UIKit

struct Problems {
    
    let answersArray: [String] = [
        "problem_1.png",
        "problem_2.png",
        "problem_3.png",
        "problem_4.png",
        "problem_5.png",
        "problem_6.png",
        "problem_7.png",
        "problem_8.png",
        "problem_9.png",
        "1. Qg8 Rxg8 2. Nf7#"
    ]
    
    let chessProblems: [UIImage] =
    [ UIImage(named: "problem_0.png")!,
        UIImage(named: "problem_1.png")!,
        UIImage(named: "problem_2.png")!,
        UIImage(named: "problem_3.png")!,
        UIImage(named: "problem_4.png")!,
        UIImage(named: "problem_5.png")!,
        UIImage(named: "problem_6.png")!,
        UIImage(named: "problem_7.png")!,
        UIImage(named: "problem_8.png")!,
        UIImage(named: "problem_9.png")!
    ]
    
    func getRandom() -> (problem: UIImage, answer: String){
        var unsignedArrayCount = UInt32(answersArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return (chessProblems[randomNumber], answersArray[randomNumber])
        
    }
    
}