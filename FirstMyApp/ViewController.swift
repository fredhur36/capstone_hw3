//
//  ViewController.swift
//  FirstMyApp
//
//  Created by Release on 2018. 3. 21..
//  Copyright © 2018년 Joon Hyung Hur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
  //  label.adjustsFontSizeToFitWidth = true
    let messageArray = ["May the force be with you","Live long and prosepr", "To infinitny and beynod","Space is big. You just won't believe how vastly, hugely, mindbogglinly big it is",10] as [Any]
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButtonTab(_ sender: UIButton) {
        print("Button touched")
        if let nextString = self.messageArray[index] as? String {// if let var as? == if then else statement
            self.messageLabel.text = nextString
           // self.messageLabel.adjustsFontSizeToFitWidth = true
        }
        index = index + 1
        index %= self.messageArray.count
    }
    
}

