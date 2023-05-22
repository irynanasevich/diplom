//
//  SettingsView.swift
//  moodmoji
//
//  Created by Iryna Nasevich on 28.04.23.
//

import SwiftUI
import FirebaseAuth

struct SettingsView: View {
    @AppStorage("uid") var userID = ""
    
    @State private var cycleLength = "\(UserDefaults.standard.object(forKey: "cycleLength") as? Int ?? 28)"
    @State private var periodLength = "\(UserDefaults.standard.object(forKey: "periodLength") as? Int ?? 5)"
    
    @FetchRequest(entity: Cycle.entity(), sortDescriptors: [
                    NSSortDescriptor(keyPath: \Cycle.startDate, ascending: false),])
    var cycles: FetchedResults<Cycle>
    
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Длина цикла и критических дней")) {
                    TextField("Длина цикла", text: $cycleLength, onEditingChanged: {_ in
                        UserDefaults.standard.set(Int(cycleLength) ?? 28, forKey: "cycleLength")
                        
                    })
                    .keyboardType(.numberPad)
                    TextField("Длина критических дней", text: $periodLength, onEditingChanged: {_ in
                        UserDefaults.standard.set(Int(periodLength) ?? 5, forKey: "periodLength")
                    })
                    .keyboardType(.numberPad)
                }
                Section(header: Text("Дата начала вашего цикла; свайпните, чтобы удалить")) {
                    List {
                        ForEach(cycles) { cycle -> Text in
                            let dateFormatter = DateFormatter()
                            dateFormatter.dateFormat = "d MMM y"
                            return Text(dateFormatter.string(from:cycle.startDate!))
                        }.onDelete { indexSet in
                            for index in indexSet {
                                viewContext.delete(cycles[index])
                            }
                            do {
                                try viewContext.save()
                            } catch {
                                print(error.localizedDescription)
                            }
                        }
                    }
                }
            }.navigationTitle("Настройки")
            
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

