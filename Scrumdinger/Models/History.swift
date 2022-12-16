//
//  History.swift
//  Scrumdinger
//
//  Created by Erika Shimba on 2022/12/16.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var lengthInMinutes: Int
    
    init(id: ID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee], lengthInMinutes: Int) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
    }
}
