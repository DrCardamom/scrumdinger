//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Erika Shimba on 2022/11/14.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums){
                    ScrumStore.save(scrums: store.scrums){ result in
                        if case .failure(let error) = result {
                            fatalError(error.localizedDescription)
                        }
                    }
                }
            }
            .onAppear{
                ScrumStore.load{ result in
                    switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let scrum):
                        store.scrums = scrum
                    }
                }
            }
        }
    }
}
