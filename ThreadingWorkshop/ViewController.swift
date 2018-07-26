//
//  ViewController.swift
//  ThreadingWorkshop
//
//  Created by Thomas Catterall on 7/26/18.
//  Copyright © 2018 Wayfair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static var shared: ViewController? = nil

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewController.shared = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // maybe we should do something here...?
        
    }
    
    func updateLabel(decimal: Decimal) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        formatter.maximumFractionDigits = 5
        
        let string = formatter.string(from: NSDecimalNumber(decimal: decimal))
        self.label.text = string
    }

}

