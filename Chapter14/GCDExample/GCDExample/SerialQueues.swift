//
//  SerialQueues.swift
//  GCDExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import Foundation

struct SerialQueues {
    
    func example() {
        
        let calculation = DoCalculations()
        
        let squeue = DispatchQueue(label: "squeue.hoffman.jon")
        
        let s = {calculation.performCalculation(100000, tag: "sync1")}
        squeue.async (execute: s)
        
        squeue.async {
            calculation.performCalculation(1000, tag: "sync2")
        }
        squeue.async {
            calculation.performCalculation(100000, tag: "sync3")
        }
        
    }
}
