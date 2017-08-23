//
//  detailViewController.swift
//  Stopwatch
//
//  Created by nttr on 2017/07/20.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet var memoTXT: UITextView!
    var selectedMemo: String!
    var selectedRow: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memoTXT.text = selectedMemo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func deleteMemo(){
        let ud = UserDefaults.standard
        if( ud.array(forKey: "memoarr")) != nil{
            var saveMemoArray = ud.array(forKey: "memoarr") as! [String]
            saveMemoArray.remove(at: selectedRow)
            ud.set(saveMemoArray, forKey: "memoarr")
            ud.synchronize()
            
            //return
            self.navigationController?.popViewController(animated: true)
            
        }
        
    }

}
