//
//  CardView.swift
//  Scrumdinger
//
//  Created by Joshua Baker on 4/30/22.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        let numberOfAttendees = scrum.attendees.count
        let meetingLength = scrum.lengthInMinutes
        
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            
            Spacer()
            
            HStack {
                Label("\(numberOfAttendees)", systemImage: "person.3")
                    .accessibilityLabel("\(numberOfAttendees) attendees")
                
                Spacer()
                
                Label("\(meetingLength)", systemImage: "clock")
                    .accessibilityLabel("\(meetingLength) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
