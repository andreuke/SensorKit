//
//  DatabaseManager.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 08/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

public protocol DatabaseManager {
    var databaseDelegate : DatabaseDelegate {get}
    
    func store(object: Any)
}

public extension DatabaseManager {
    var databaseDelegate : DatabaseDelegate {
        return SimpleDatabaseDelegate()
    }
    
    func store(object: Any) {
        databaseDelegate.store(object: object)
    }
}
