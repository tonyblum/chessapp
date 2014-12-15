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
        "1. Rxc5 if black plays Rxc5 2. Re8# ",
        "problem_1",
        "1. Qg8+ Rxg8 2.Nf7#",
        "problem_4.png",
        "1. Qxf8 Kxf8 2. Bc5+ Kg8 3. Re8#",
        "1. Qxe6 Nxe6 Nh6# or 1. Qh6 forcing Qf4 2. Qxf4+-",
        "problem_7.png",
        "1. b3 cxb3 2. a3 bxa3 3. c3 +-",
        "1. Nxe5 +-",
        "1. Bxe6 fxe6 2. Nxe6 Kg8 3. Nxd8 +-"
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