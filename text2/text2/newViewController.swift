//
//  newViewController.swift
//  text2
//
//  Created by nttr on 2017/07/14.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class newViewController: UIViewController {

    var num: Int = 0
    var selectedName: String  = " "
    @IBOutlet var selectedLabel: UILabel!

//    @IBOutlet weak var LB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedLabel.text = selectedName
        
        // Do any additional setup after loading the view.
//        
//        let ud = UserDefaults.standard
//        num = ud.integer(forKey: "Number")
//        LB.text = String(num)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
