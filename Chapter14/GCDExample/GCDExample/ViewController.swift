//
//  ViewController.swift
//  GCDExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      //  let cQueueExample = ConcurrentQueues()
      //  cQueueExample.example()
        
       // let sQueueExample = SerialQueues()
       // sQueueExample.example()
        let dAfter = DispatchAfter()
        dAfter.example()
    }


}

