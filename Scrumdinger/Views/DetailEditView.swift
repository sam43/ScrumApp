//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by A S M Sayem on 8/4/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Infomation")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lengthOfTime, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(Int(data.lengthOfTime)) minutes")
                    Spacer()
                    Text("\(Int(data.lengthOfTime)) minutes")
                        .accessibilityHidden(true)
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                    
                }
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee Name", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            data.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle")
                            .accessibilityLabel("Add Attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
