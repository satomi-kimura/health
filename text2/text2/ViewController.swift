//
//  ViewController.swift
//  text2
//
//  Created by nttr on 2017/07/14.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var food: UITableView!
//    var foods = ["curry","chocolate","cake","icecream"]
//    var foods_images = [UIImage(named: "coco.jpg"),UIImage(named: "sushi.jpg"),UIImage(named: "coco.jpg"),UIImage(named: "coco.jpg")]

//    var foods = [["name" : "Curry", "imageName": "coco.jpg"],["name" : "Sushi", "imageName": "sushi.jpg"],
  //                                      ["name" : "Cake", "imageName": "coco.jpg"],["name" : "Icecream", "imageName": "coco.jpg"]]
    
    var foods = [["name" : "Curry"],[ "name": "sushi"],
                 ["name" : "Cake"],["name" : "Icecream"]]
    
    
//    var number: Int = 0
//    @IBOutlet var label: UILabel!
//    @IBOutlet var intxt: UITextField!
//    var sample: Dictionary <String,String> = ["name" : "Tomoe Murakami"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //use datasource in this file
            food.dataSource = self
        
        //to use delegate method (to use delegete function)
        food.delegate = self
        
        //delete line
        food.tableFooterView = UIView()
        
//        let nib = UINib(nibName: "FoodTableViewCell", bundle: Bundle.main)
  //      food.register(nib, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view, typically from a nib.
//        
//        label.text="巴"
//        intxt.delegate=self
//        let ud = UserDefaults.standard
//        ud.set(number, forKey: "Number")
//        ud.synchronize()
//        ud.integer(forKey: "Number")
        }
/*
    //For table view
    //1. How many tables in this view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    //2. Decide data
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! FoodTableViewCell
        
        //Use Dictionary data
//        let imageName = foods[indexPath.row]["imageName"]
        let Name = foods[indexPath.row]["name"]
     //   cell.foodImageView.image = UIImage(named: imageName!)
        cell.foodLabel.text = Name
        
//        let imageview = cell.viewWithTag(1) as! UIImageView
//        let lavels = cell.viewWithTag(2) as! UILabel
        
//        imageview.image = foods_images[indexPath.row]
//        lavels.text = foods[indexPath.row]
//                imageview.image = foods_images[0]
//                lavels.text = foods[0]
//     cell.textLabel?.text = foods[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! newViewController
        let selectedC = food.indexPathForSelectedRow!
        nvc.selectedName = foods[selectedC.row]["name"]!
    }*/
    
    //hiza itai
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        
//        if label.text == intxt.text{
//            let  alert = UIAlertController( title: "OK!!", message: "It is TRUE!!!!!!!!!", preferredStyle: .alert)
//            let okal = UIAlertAction(title: "OK", style: .default, handler: { (action) in
//                       alert.dismiss(animated: true, completion: nil)
//                      })
//            alert.addAction(okal)
//            self.present(alert, animated: true, completion: nil)
//        }else{
//            let  alert = UIAlertController( title: "NONO!!", message: "It is NOT TRUE!!!!!!!!!", preferredStyle: .alert)
//            let okal = UIAlertAction(title: "OK", style: .default, handler: { (action) in
//                alert.dismiss(animated: true, completion: nil)
//            })
//            alert.addAction(okal)
//            self.present(alert, animated: true, completion: nil)
//        }
//        
//        //close field
//        textField.resignFirstResponder()
//        return true
//        //finishi keyboard
//    }
    
//    @IBAction func Alert(){
//        let alert = UIAlertController(title: "Attention!", message: "It will be rain tomorrow!!!!!!!!!", preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default){ (action)
//            in
//            alert.dismiss(animated: true, completion: nil)
//        }
//        
//        let noaction = UIAlertAction(title: "NO", style: .default){ (action)
//            in
//            alert.dismiss(animated: true, completion: nil)
//        }
//
//        alert.addAction(action)
//        alert.addAction(noaction)
//        self.present(alert, animated: true, completion: nil)
//    }
//    override func loadView() {
//        print("Hey")
//    }
//
//    @IBAction func ran(){
//        number = Int(arc4random_uniform(10))
//        let ud = UserDefaults.standard
//        ud.set(number,forKey:"Number")
//        
//        self.performSegue(withIdentifier: "next", sender: nil)
//    }
 
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        //kaerita
//        let nvc =  segue.destination as! newViewController
//        nvc.num = number
//    }
    
}

