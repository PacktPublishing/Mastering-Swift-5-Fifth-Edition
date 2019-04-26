//
//  OperationWithBlockTest.swift
//  OperationsExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import Foundation

struct OperationWithBlockTest {
    
    func example() {
        let operationQueue = OperationQueue()
        operationQueue.maxConcurrentOperationCount = 1
        let calculation = DoCalculations()
        
        operationQueue.addOperation() {
            calculation.performCalculation(10000000, tag: "Operation1")
        }
        
        operationQueue.addOperation() {
            calculation.performCalculation(10000, tag: "Operation2")
        }
        
        operationQueue.addOperation() {
            calculation.performCalculation(1000000, tag: "Operation3")
        }
    }
    
}
