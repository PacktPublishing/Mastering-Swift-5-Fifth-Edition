//
//  MyOperation.swift
//  OperationsExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import Foundation

class MyOperation: Operation {
    let iterations: Int
    let tag: String
    
    init(iterations: Int, tag: String) {
        self.iterations = iterations
        self.tag = tag
    }
    
    override func main() {
        performCalculation()
    }
    
    func performCalculation() {
        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0 ..< iterations {
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
}
