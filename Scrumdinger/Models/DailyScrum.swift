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
    var attendees: [Attendee]
    var lengthOfTime: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthOfTime: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthOfTime = lengthOfTime
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthOfTime: 10, theme: .bubblegum),
        DailyScrum(title: "Android App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .buttercup),
        DailyScrum(title: "Web Dev", attendees: ["Daisy", "Simon", "Jonathan", "Aga", "Chad", "Jenn", "Sarah"], lengthOfTime: 5, theme: .poppy),
        DailyScrum(title: "Manager", attendees: ["Chella", "Chris", "Sarah"], lengthOfTime: 10, theme: .bubblegum),
        DailyScrum(title: "iOS App Dev", attendees: ["Lindsey", "Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .buttercup),
        DailyScrum(title: "SQA Lead", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthOfTime: 10, theme: .periwinkle),
        DailyScrum(title: "UX Designer", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey"], lengthOfTime: 20, theme: .seafoam),
        DailyScrum(title: "React App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .lavender),
        DailyScrum(title: "Backend Dev", attendees: ["Christina", "Eden", "Lindsey", "Aga", "Chad", "Jenn"], lengthOfTime: 15, theme: .oxblood),
        DailyScrum(title: "Vice President", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthOfTime: 15, theme: .orange),
        DailyScrum(title: "Software Architect", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .navy),
        DailyScrum(title: "Dev Ops", attendees: ["Chella", "Chris", "Christina", "Eden", "Chad", "Jenn", "Sarah"], lengthOfTime: 25, theme: .magenta)
    ]
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthOfTime: Double = 5
        var theme: Theme = .seafoam
    }
    
    var data: Data {
        Data(title: title, attendees: attendees, lengthOfTime: Double(lengthOfTime), theme: theme)
    }
}




