//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ivan Svit on 7/24/19.
//  Copyright © 2019 Ivan Svit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCardImage: UIImageView!
    
    @IBOutlet weak var rightCardImage: UIImageView!
    
    @IBOutlet weak var leftScore: UILabel!
    
    @IBOutlet weak var rightScore: UILabel!
    
    var leftScorePlayer = 0
    var rightScorePlayer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealButtonTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image views
        leftCardImage.image = UIImage(named: "card\(leftNumber)")
        rightCardImage.image = UIImage(named: "card\(rightNumber)")
        
        // Left side wins
        if leftNumber > rightNumber {
            
            leftScorePlayer += 1
            leftScore.text = String(leftScorePlayer)
            
        }
        
        // Right side wins
        else if leftNumber < rightNumber {
            
            rightScorePlayer += 1
            rightScore.text = String(rightScorePlayer)
            
        }
        
        else {
            //Tie
        }
    }
    
    
}

