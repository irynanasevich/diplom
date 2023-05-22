//
//  LogView.swift
//  moodmoji
//
//  Created by Joel DeSante on 1/29/23.
//

import SwiftUI

struct LogView: View {
    
    @ObservedObject var timeline: Timeline;
    @State private var additionalNotes: String = "";
    @State private var selectedEmotions = Set<String>();
    @State private var currentDate = Date()
    
    var body: some View {
        ScrollView {
            
            VStack {
                Text("Выберите симптомы")
                    .font(.title)
                    .padding();
                MoodGrid(selectedEmotions: $selectedEmotions)
            }
            
            Divider()
            
            VStack {
                Text("Что вы чувствуете?")
                    .font(.title)
                
                TextField("Запишите, что повлияло на ваше здоровье", text: $additionalNotes)
                
            }.padding()
            Divider()
            
            VStack {
                DatePicker("", selection: $currentDate, displayedComponents: [.date, .hourAndMinute])
                            .labelsHidden()
                Button("Добавить") {
                    
                    let log = Log(
                        id: UUID(),
                        emotions: selectedEmotions.joined(separator: ", "),
                        notes: additionalNotes,
                        date: currentDate
                    )
                    
                    timeline.createLog(log: log);
                    
                    // Reset
                    selectedEmotions = Set<String>();
                    additionalNotes = "";
                    currentDate = Date() 
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.bottom,80)
            }
        }
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView(timeline: Timeline())
    }
}
