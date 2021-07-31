//
//  ViewController.swift
//  Timer
//
//  Created by 游舜宇 on 2021/7/31.
//

import UIKit

class ViewController: UIViewController {
    var time : Int = 0
    var timer = Timer()
    var isStart = false
    @IBOutlet weak var labelTimer: UILabel!
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
        isStart = false
    }
    @IBAction func play(_ sender: Any) {
        if !isStart{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            timer.fire()
            isStart = true
        }else{
            timer.invalidate()
            isStart = false
        }
        
    }
    @IBAction func replay(_ sender: Any) {
        timer.invalidate()
        isStart = false
        labelTimer.text = "0"
        time = 0
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @objc func updateTimer(){
        time = time + 1
        labelTimer.text = String(time)
    }


}

