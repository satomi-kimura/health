//
//  ViewController.swift
//  count2
//
//  Created by nttr on 2017/08/23.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num:Int = 0
    @IBOutlet var label: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func purasu(){
        num=num+1
        label.text = String(num)
    }
    
    
    @IBAction func hiku(){
        num=num-1
        label.text = String(num)
    }
    
    @IBAction func purasu(){
        num=num+1
        label.text = String(num)
    }
    
    @IBAction func purasu(){
        num=num+1
        label.text = String(num)
    }
    
    

}

