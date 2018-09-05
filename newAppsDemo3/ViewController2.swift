//
//  ViewController2.swift
//  newAppsDemo3
//
//  Created by CaoQian on 2018/09/03.
//  Copyright © 2018 CaoQian. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var tapBtn: UIButton!
    var count = 0
    let image0 = UIImage(named:"sample.image8")
    let image1 = UIImage(named:"sample.image8.1")
    let image2 = UIImage(named:"sample.image8.2")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func tapBtn(_ sender: UIButton) {
        count += 1
        if(count%3 == 0){
            sender.setImage(image0, for : UIControlState())
        }else if(count%3 == 1){
            sender.setImage(image1, for : UIControlState())
        }else if(count%3 == 2){
            sender.setImage(image2, for : UIControlState())
        }
    }
    
}


