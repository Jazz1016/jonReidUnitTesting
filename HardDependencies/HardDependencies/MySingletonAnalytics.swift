//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by James Lea on 4/13/22.
//

import Foundation

class MysingletonAnalytics {
    private static let instance = MysingletonAnalytics()
    
    #if DEBUG
    static var stubbedInstance: MysingletonAnalytics?
    #endif
    
    static var shared: MysingletonAnalytics {
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        return instance
    }
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MysingletonAnalytics.shared {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
