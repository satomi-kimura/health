//
//  ViewController.swift
//  count
//
//  Created by nttr on 2017/07/12.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MAKE USE DATA
    var number: Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(){
        number += 1
        label.text = String(number)
        
        if number==2{
            imageView.image = UIImage(named: "neko.jpeg")
            
        }else{
            imageView.image = UIImage(named: "kimuko.jpg")
        }
    }
    @IBAction func minus() {
        number -= 1
        label.text = String(number)
        if number==2{
            imageView.image = UIImage(named: "neko.jpeg")
            
        }else{
            imageView.image = UIImage(named: "kimuko.jpg")
        }
    }
    @IBAction func times(){
        number=number*number
        label.text = String(number)
        if number==2{
            imageView.image = UIImage(named: "neko.jpeg")
            
        }else{
            imageView.image = UIImage(named: "kimuko.jpg")
        }
    }
    @IBAction func reset(){
        number = 0
        label.text = String(number)
        imageView.image = UIImage(named: "kimuko.jpg")
    }
    @IBAction func changeIMG(){
        label.text="にゃー"
        imageView.image = UIImage(named: "neko.jpeg")
    }
}

