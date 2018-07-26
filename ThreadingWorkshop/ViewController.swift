//
//  ViewController.swift
//  ThreadingWorkshop
//
//  Created by Thomas Catterall on 7/26/18.
//  Copyright © 2018 Wayfair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // wait for fibonacci result
        repeat {
            // do nothing
        } while AppDelegate.fibonacciResult == nil
        updateLabel(decimal: AppDelegate.fibonacciResult!)
    }
    
    func updateLabel(decimal: Decimal) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        formatter.maximumFractionDigits = 5
        
        let string = formatter.string(from: NSDecimalNumber(decimal: decimal))
        self.label.text = string
    }

}

