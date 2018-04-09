//
//  ViewController.swift
//  simple timer
//
//  Created by D7703_04 on 2018. 4. 9..
//  Copyright © 2018년 D7703_04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timerSwitch: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timerSwitch.setOn(false, animated: true)
    }

    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        timeLabel.text = formatter.string(from: date)
    }

    @IBAction func timerStart(_ sender: Any) {
        if timerSwitch.isOn == true {
            
            //closure 사용
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:{(myTimer) in self.updateTime()})
        }   else {
            myTimer.invalidate()
        }
    }
    
}

