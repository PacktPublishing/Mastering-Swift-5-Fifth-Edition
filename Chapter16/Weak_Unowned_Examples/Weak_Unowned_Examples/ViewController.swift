//
//  ViewController.swift
//  Weak_Unowned_Examples
//
//  Created by Jon Hoffman on 3/23/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let class2 = MyClass2_Unowned(name: "Class2_Unowned")
        let class1: MyClass1_Unowned? = MyClass1_Unowned(name: "class1_Unowned",
                                                         class2: class2)
        class2.class1 = class1
        print("Classes going out of scope")
        
        print("Testing weak reference")
        let class3: MyClass1_Weak? = MyClass1_Weak(name: "Class1_Weak")
        let class4: MyClass2_Weak? = MyClass2_Weak(name: "Class2_Weak")
        
        class3?.class2 = class4
        class4?.class1 = class3
        
        print("Classes going out of scope")
        
    }


}

