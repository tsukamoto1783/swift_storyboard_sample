//
//  ViewController.swift
//  FirstXcode
//
//  Created by Tsukamoto Yuto on 2024/01/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myLabel: UILabel!
    @IBAction func buttonTapped(sender: UIButton){
        myLabel.text = "Hello World!"
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

