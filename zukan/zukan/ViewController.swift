//
//  ViewController.swift
//  zukan
//
//  Created by nttr on 2017/07/19.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table:UITableView!
    let tests = ["deresute","garupa","mirisita","emusute"]

    override func viewDidLoad() {
        table.delegate = self
        table.dataSource = self
        
        let nib = UINib(nibName: "table", bundle: Bundle.main)
        table.register(nib, forCellReuseIdentifier: "Cell")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //imput number of row for tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tests.count
    }
    
    ////////////////////////MANAGE TO DO FROM   HERE!!!!!!!!!!!!!!!!/////////////////////////////////////////////
    //imput data for table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

