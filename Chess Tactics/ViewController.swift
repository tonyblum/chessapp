//
//  ViewController.swift
//  Chess Tactics
//
//  Created by tblum on 12/2/14.
//  Copyright (c) 2014 tblum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let problems = Problems()
    
    @IBOutlet weak var funFactLabel: UITextField!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //funFactLabel.text = problems.getRandom().answer
        imageLabel.image = problems.getRandom().problem
        funFactLabel.text = problems.getRandom().answer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let chosenProblem = problems.getRandom()
        // set text color to black
        funFactLabel.textColor = UIColor.blackColor()
        funFactLabel.text = chosenProblem.answer
        imageLabel.image = chosenProblem.problem
   }
    
    @IBAction func showSolution(sender: AnyObject) {
        //let chosenProblem = problems.getRandom()
        // set text color to white
        //unFactLabel.text = chosenProblem.answer
        funFactLabel.textColor = UIColor.whiteColor()
    }
    
}

