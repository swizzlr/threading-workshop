//
//  AppDelegate.swift
//  ThreadingWorkshop
//
//  Created by Thomas Catterall on 7/26/18.
//  Copyright © 2018 Wayfair. All rights reserved.
//

import UIKit

private let aPrettyHeftyAmountOfFibonacciWork = 200000000
var fibonacciResult: Decimal? = nil

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        doTheFibonacci()
        return true
    }
    
    func doTheFibonacci() {
        let thread = FibonacciThread()
        thread.start()
    }

}

// Subclass a thread, implement main
private final class FibonacciThread: Thread {
    override func main() {
        fibonacciResult = fibonacci(n: aPrettyHeftyAmountOfFibonacciWork * 2)
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

