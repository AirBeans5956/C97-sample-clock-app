//
//  ViewController.swift
//  Clock
//
//  Created by Kosuke Kuwabara on 2019/11/21.
//  Copyright © 2019 AirBeans5956. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var clockTimer: Timer?

    @IBOutlet weak var clockLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 時間を刻む処理
        clockTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm:ss"
            
            self.clockLabel.text = dateFormatter.string(from: Date())
        })
    }


}

