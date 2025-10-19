//
//  Item.swift
//  JournalApp
//
//  Created by Raghad Hamdan Alsuhaim on 27/04/1447 AH.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
