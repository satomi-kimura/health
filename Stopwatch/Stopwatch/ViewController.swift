//
//  ViewController.swift
//  Stopwatch
//
//  Created by nttr on 2017/07/20.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    var memoArr = [String]()
    @IBOutlet var memoTableView:   UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memoTableView.dataSource = self
        memoTableView.delegate = self
        loadMemo()
    }
    override func viewWillAppear(_ animated: Bool) {
        loadMemo()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell")!
        cell.textLabel?.text = memoArr[indexPath.row]
        return cell
    }
    
    func loadMemo(){
        let ud = UserDefaults.standard
        if ud.array(forKey: "memoarr") != nil {
            memoArr = ud.array(forKey: "memoarr") as! [String]
            memoTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "toDetail"{
        let dVC = segue.destination as! detailViewController
        let sIP = memoTableView.indexPathForSelectedRow!
        
        dVC.selectedMemo = memoArr[sIP.row]
        dVC.selectedRow = sIP.row
        }
     }
    
}

