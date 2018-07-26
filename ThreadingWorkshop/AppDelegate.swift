//
//  AppDelegate.swift
//  ThreadingWorkshop
//
//  Created by Thomas Catterall on 7/26/18.
//  Copyright © 2018 Wayfair. All rights reserved.
//

import UIKit

private let aPrettyHeftyAmountOfFibonacciWork = 200000000
private let aManageableAmountOfFibonacciWork = 100

func wait(_ seconds: Int) {
    sleep(UInt32(seconds))
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    static var fibonacciResult: Decimal? = nil
    
    static var fibonacciCalc1Done = false
    static var fibonacciCalc2Done = false
    static var fibonacciCalc3Done = false
    static var fibonacciCalc4Done = false


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        doTheFibonacci()
        return true
    }
    
    func doTheFibonacci() {
        let work1 = { () -> Void in
            wait(1)
            AppDelegate.fibonacciResult = fibonacci(n: aManageableAmountOfFibonacciWork)
            AppDelegate.fibonacciCalc1Done = true
        }
        
        let work2 = { () -> Void in
            wait(2)
            AppDelegate.fibonacciResult = fibonacci(n: aManageableAmountOfFibonacciWork)
            AppDelegate.fibonacciCalc1Done = true
        }
        
        let work3 = { () -> Void in
            wait(3)
            AppDelegate.fibonacciResult = fibonacci(n: aManageableAmountOfFibonacciWork)
            AppDelegate.fibonacciCalc1Done = true
        }
        
        let work4 = { () -> Void in
            wait(4)
            AppDelegate.fibonacciResult = fibonacci(n: aManageableAmountOfFibonacciWork)
            AppDelegate.fibonacciCalc1Done = true
        }
        // define the fibonacci code!
        DispatchQueue.global().async(execute: work1)
        DispatchQueue.global().async(execute: work2)
        DispatchQueue.global().async(execute: work3)
        DispatchQueue.global().async(execute: work4)
    }

}

/// Prints the nth number in the fibonacci sequence
private func fibonacci(n: Int) -> Decimal {
    var num1: Decimal = 0
    var num2: Decimal = 1
    
    for _ in 0 ..< n {
        
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    
    return num2
}

