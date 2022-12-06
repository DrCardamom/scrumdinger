//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Erika Shimba on 2022/11/14.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.theme.mainColor)
            
            VStack {

                Circle().strokeBorder(lineWidth: 24)
                HStack() {
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action:{}){
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("next speaker")
                }
            }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor )
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
