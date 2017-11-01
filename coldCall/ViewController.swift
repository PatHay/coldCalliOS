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

    let nameBank: [String] = [
    "Chuck", "Rodrigo", "Pat", "Elva"
    ]
    
    var random = Int(arc4random_uniform(UInt32(5)))
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUI(){
        nameLabel.text = nameBank[random]
        random = Int(arc4random_uniform(UInt32(4)))
    }
    
    
}

