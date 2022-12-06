//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Erika Shimba on 2022/11/14.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
