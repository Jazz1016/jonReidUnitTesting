//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by James Lea on 4/13/22.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("<< Launching with testing app delegate")
        return true
    }
}
