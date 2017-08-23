//
//  resultViewController.swift
//  gatya
//
//  Created by nttr on 2017/07/13.
//  Copyright © 2017年 nttr.inc. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    var passednumber: Int = 0
    // How can I set UIImage to
    let curry_SR =  [ ["name":" SHISHI!!!! ","img":"sushi.jpeg"],["name":"SSR  スープカレー","img":"soup.jpeg"],["name":"SR ナンカレー","img":"nan.jpg"]]
   let curry_R = [["name": " R   カレー粉 ", "img":"powder.jpg"],["name": " R   ポケモンカレー ", "img":"pokemon.gif"],["name": "R   COCO壱 ", "img":"coco.jpg"],["name": " R   カレーうどん", "img":"udon.jpg"]]
    
    //money
    var number: Int = 0
    @IBOutlet var money: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        number  = ud.integer(forKey: "Money")
        money.text = "所持金: "+String(number) + "円"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back(){
        //rerurn
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buy(){
        result()
        let ud = UserDefaults.standard
        number  = ud.integer(forKey: "Money")
        number = number - 300
        ud.set(number, forKey: "Money")
        ud.synchronize()
        money.text = "所持金: "+String(number) + "円"
    }
    
    @IBAction func result(){

        switch (Int) (arc4random_uniform(100)) {
        case 1:
            imageView.image = UIImage(named: curry_SR[0]["img"])
            label.text = curry_SR[0]["name"]
        case 2 :
            imageView.image = UIImage(named: "soup.jpeg")
            label.text = "SSR   スープカレー"
        case 3...12:
            imageView.image = UIImage(named: "nan.jpg")
            label.text = "SR   ナンカレー"
        case  85...99:
            imageView.image = UIImage(named: "powder.jpg")
            label.text = "R   カレー粉"

        default:
            switch (Int) (arc4random_uniform(3)) {
            case 0:
                imageView.image = UIImage(named: "pokemon.gif")
                label.text = "R   ポケモンカレー"
            case 1:
            imageView.image = UIImage(named: "coco.jpg")
            label.text = "R   COCO壱"
            default:
                imageView.image = UIImage(named: "udon.jpg")
                label.text = "R   カレーうどん"

            }
        }
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
