//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Sayem, Sadat | Sadat | GSSD on 2023/04/07.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthOfTime: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthOfTime: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthOfTime = lengthOfTime
        self.theme = theme
    }
}

