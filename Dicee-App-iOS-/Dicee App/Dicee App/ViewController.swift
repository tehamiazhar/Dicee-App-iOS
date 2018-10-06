//
//  ViewController.swift
//  Dicee App
//
//  Created by Muhammad Tehami Azhar on 29/09/2018.
//  Copyright © 2018 Muhammad Tehami Azhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var dice1index : Int = 0
    var dice2index : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceUpdating()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func rollPressed(_ sender: UIButton) {
        
        diceUpdating()
    }
    
    override func motionEnded(_ motion: UIEventSubtype,
                     with event: UIEvent?) {
       
        diceUpdating()
    }
    
    func diceUpdating() {
        dice1index = Int(arc4random_uniform(6))
        dice2index = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[dice1index])
        diceImageView2.image = UIImage(named: diceArray[dice2index])
    }

}

