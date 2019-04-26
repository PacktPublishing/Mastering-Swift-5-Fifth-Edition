//
//  ViewController.swift
//  Strong_ref_cycle
//
//  Created by Jon Hoffman on 3/23/19.
//  Copyright © 2019 Jon Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var class1: MyClass1_Strong? = MyClass1_Strong(name: "Class1_Strong")
        var class2: MyClass2_Strong? = MyClass2_Strong(name: "Class2_Strong")
        
        class1?.class2 = class2
        class2?.class1 = class1
        
        print("Setting classes to nil")
        class2 = nil
        class1 = nil
        
    }


}

