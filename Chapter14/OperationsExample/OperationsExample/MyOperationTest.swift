//
//  MyOperationTest.swift
//  OperationsExample
//
//  Created by Jon Hoffman on 3/16/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import Foundation

struct MyOperationTest {
    func example() {
        
        let operationQueue = OperationQueue()
        //   operationQueue.maxConcurrentOperationCount = 1
        operationQueue.addOperation(MyOperation(iterations: 10000000, tag: "Operation 1"))
        operationQueue.addOperation(MyOperation(iterations: 10000, tag: "Operation 2"))
        operationQueue.addOperation(MyOperation(iterations: 1000000, tag: "Operation 3"))
        
        print("Finished")
    }
}
