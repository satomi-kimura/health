//
//  newViewController.swift
//  Stopwatch
//
//  Created by nttr on 2017/07/20.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class newViewController: UIViewController {

    
    @IBOutlet   var memotxt: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(){
        let inputTXT = memotxt.text
        let ud = UserDefaults.standard
        
        if ud.array(forKey: "memoarr") != nil{
            var saveMemoArray = ud.array(forKey: "memoarr") as!  [String]
            
            if(inputTXT != nil){
                saveMemoArray.append(inputTXT!)
            } else{
                print("no data!!!!")
            }
            ud.set(saveMemoArray, forKey: "memoarr")
        }else {
          var newMemoArray = [String]()
                if inputTXT != nil{
                    newMemoArray.append(inputTXT!)
                }else {
                print ("nodata!!")
            }
        ud.set(newMemoArray, forKey: "memoarr")
        }
        ud.synchronize()
        self.dismiss(animated: true, completion: nil)
    }
        
}
