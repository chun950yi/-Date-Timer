//
//  ViewController.swift
//  TimerTest
//
//  Created by TBCASoft-Bennett on 2022/7/14.
//

import UIKit


class ViewController: UIViewController {

    var Starting = Date()
    var Ending = Date()
    
    let formatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Starting = Date()
//
        formatter.dateFormat = "hh:mm:ss.SSS"
        let StartingStr = formatter.string(from: Starting)

        print("開始時間： " + StartingStr)
        
        
        
    }

    @IBAction func Terminal(_ sender: Any) {
        
        Task{
            Ending = Date()
            let EndingStr = formatter.string(from: Ending)
            print("結束時間： " + EndingStr)
            let result = Ending.timeIntervalSince(Starting)
            let ans = String(format: "%.3f", result)
            print("花費總秒數: \(ans) s")
        }
        
        Task{
            let num = abs(Starting.timeIntervalSinceNow)
            let str = String(format: "%.3f", num)
            print("timeInterval 顯示結果：\(str)")
        }
    }
    
}

