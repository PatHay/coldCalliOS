//
//  ViewController.swift
//  coldCall
//
//  Created by Patrick Hayes on 10/31/17.
//  Copyright © 2017 Patrick Hayes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    
    let nameBank: [String] = [
    "Chuck", "Rodrigo", "Pat", "Elva"
    ]
    
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        
        let random = Int(arc4random_uniform(UInt32(4)))
        let random2 = Int(arc4random_uniform(5)+1)
        nameLabel.text = nameBank[random]
        numberLabel.text = String(random2)
        
        if random2 <= 2{
            numberLabel.textColor = UIColor.red
        } else if random2 == 5{
            numberLabel.textColor = UIColor.green
        } else {
            numberLabel.textColor = UIColor.orange
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func updateUI(){
//        nameLabel.text = nameBank[random]
//        numberLabel.text = String(random2)
//        random = Int(arc4random_uniform(UInt32(4)))
//        random2 = Int(arc4random_uniform(5)+1)
//    }
    
    
}

