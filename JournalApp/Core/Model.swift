//My Data Will Be In This File
//  Modle.swift
//  JournalApp
//  Created by Raghad Hamdan Alsuhaim on 27/04/1447 AH.
//struct SplashModel {}

import Foundation

struct JournalEntry: Identifiable, Codable, Equatable {
    let id: UUID
    var title: String
    var content: String
    var date: Date

    init(id: UUID = UUID(), title: String, content: String, date: Date = .now) {
        self.id = id
        self.title = title
        self.content = content
        self.date = date
    }
}
