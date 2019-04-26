//
//  BlockOperationTest.swift
//  OperationsExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import Foundation

struct BlockOperationTest{
    
    func example() {
        
        let calculation = DoCalculations()
        
        let blockOperation1: BlockOperation = BlockOperation.init(
            block: {
                calculation.performCalculation(10000000, tag: "Operation 1")
        }
        )
        
        blockOperation1.addExecutionBlock(
            {
                calculation.performCalculation(10000, tag: "Operation 2")
            }
        )
        
        blockOperation1.addExecutionBlock(
            {
                calculation.performCalculation(1000000, tag: "Operation 3")
            }
        )
        
        let operationQueue = OperationQueue()
        
        //  operationQueue.maxConcurrentOperationCount = 1
        operationQueue.addOperation(blockOperation1)
        
        print("Finished Block Operation")
    }
    
}
