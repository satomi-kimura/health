//
//  ViewController.swift
//  test
//
//  Created by nttr on 2017/07/13.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var namearr:[String] = ["tomoe", "aoi", "mutumi"]
    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    
    @IBAction func ran(){
        number = Int(arc4random_uniform(100))
        label .text = String(number)
        self.performSegue(withIdentifier: "toSecond", sender : nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus(){
        number += 1
        label.text = String(number)
    }
    @IBAction func reset (){
        number = 0;
        label.text = String(number)
    }
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
    }

    
    
}

