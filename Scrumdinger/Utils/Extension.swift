//
//  Extension.swift
//  Scrumdinger
//
//  Created by Sayem, Sadat | Sadat | GSSD on 2023/04/07.
//

import Foundation

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthOfTime: 10, theme: .bubblegum),
        DailyScrum(title: "Android App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .buttercup),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthOfTime: 5, theme: .poppy),
        DailyScrum(title: "Manager", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthOfTime: 10, theme: .bubblegum),
        DailyScrum(title: "iOS App Dev", attendees: ["Christina", "Eden", "Karla", "Lindsey", "Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .buttercup),
        DailyScrum(title: "SQA Lead", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthOfTime: 10, theme: .periwinkle),
        DailyScrum(title: "UX Designer", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthOfTime: 20, theme: .seafoam),
        DailyScrum(title: "React App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .lavender),
        DailyScrum(title: "Backend Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthOfTime: 15, theme: .oxblood),
        DailyScrum(title: "Vice President", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthOfTime: 15, theme: .orange),
        DailyScrum(title: "Software Architect", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthOfTime: 5, theme: .navy),
        DailyScrum(title: "Dev Ops", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthOfTime: 25, theme: .magenta)
    ]
    
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}

