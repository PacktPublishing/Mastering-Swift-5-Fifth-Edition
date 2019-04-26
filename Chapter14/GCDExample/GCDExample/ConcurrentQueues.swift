//
//  ConcurrentQueues.swift
//  GCDExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import Foundation

struct ConcurrentQueues {
    func example() {
        let calculation = DoCalculations()
        
        let cqueue = DispatchQueue(label: "cqueue.hoffman.jon", attributes: .concurrent)
        
        let c = {calculation.performCalculation(100000000, tag: "async1")}
        cqueue.async(execute: c)
        
        cqueue.async {
            calculation.performCalculation(10000, tag: "async2")
        }
        cqueue.async {
            calculation.performCalculation(1000000, tag: "async3")
        }
        
    }
}
