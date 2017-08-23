//
//  ViewController.swift
//  gatya
//
//  Created by nttr on 2017/07/13.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 100000
    @IBOutlet var money: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ud = UserDefaults.standard
        ud.set(number, forKey: "Money")
        ud.synchronize()

        money.text = "所持金: "+String(number) + "円"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func makeram(){
        let ud = UserDefaults.standard
        number  = ud.integer(forKey: "Money")
        number = number - 300
        ud.set(number, forKey: "Money")
        ud.synchronize()
    }
}

