//
//  ViewController.swift
//  health
//
//  Created by nttr on 2017/08/14.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

import YMCalendar

class ViewController: UIViewController {

    @IBOutlet   var calender: YMCalendarView?
    
    @IBOutlet   var calender2: YMCalendarView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // calender.allowsSelection=true
//        calender?.backgroundColor = UIColor(red:0.357, green:0,blue:0)
//        calender?.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

