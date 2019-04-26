//
//  DoCalculations.swift
//  OperationsExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import Foundation

struct DoCalculations {
    func performCalculation(_ iterations: Int, tag: String) {
        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0..<iterations {
            self.doCalc()
        }
        let end = CFAbsoluteTimeGetCurrent()
        print("time for \(tag):  \(end-start)")
    }
    
    func doCalc() {
        let x=100
        let y = x*x
        _ = y/x
    }
    
    func getFibonacci(_ num: Int64) -> Int64 {
        if num == 0 || num == 1 {
            return num
        } else {
            return getFibonacci(num - 1) + getFibonacci(num - 2)
        }
    }
}
