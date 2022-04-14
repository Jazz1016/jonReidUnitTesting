//
//  Analytics.swift
//  HardDependencies
//
//  Created by James Lea on 4/13/22.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        
        if self !== Analytics.shared {
            print(">> ...Not the Analytics singleton")
        }
    }
}
