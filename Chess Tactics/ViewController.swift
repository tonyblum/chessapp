//
//  ViewController.swift
//  Chess Tactics
//
//  Created by tblum on 12/2/14.
//  Copyright (c) 2014 tblum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let factBook = FactBook()
    let problemBook = ProblemBook()
    
    @IBOutlet weak var funFactLabel: UITextField!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
        //imageLabel.image = problemBook.randomProblem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        funFactLabel.text = factBook.randomFact()
        imageLabel.image = problemBook.randomProblem()
    }
    
}

