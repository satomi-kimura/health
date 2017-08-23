//
//  ViewController.swift
//  test3
//
//  Created by nttr on 2017/07/19.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nameArray: [String] = ["tomoe", "aoi", "haru"]
    var num: Int = 0
    @IBOutlet var label: UILabel!
    
    @IBAction func tasu(){
        num += 1
        label.text = String(num)
    }
    @IBAction func hiku(){
        num -= 1
        label.text = String(num)
    }
    @IBAction func zero(){
        num = 0
        label.text = String(num)
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

