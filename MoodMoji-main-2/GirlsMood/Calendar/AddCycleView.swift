//
//  AddCycleView.swift
//  moodmoji
//
//  Created by Iryna Nasevich on 28.04.23.
//

import SwiftUI
import FirebaseAuth

struct AddCycleView: View {
    @State private var date: Date = Date()
    @AppStorage("uid") var userID = ""

    
    @Environment(\.managedObjectContext) private var viewContext
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                DatePicker(
                    "Начало цикла",
                    selection: $date,
                    in: ...Date(),
                    displayedComponents: [.date]
                )
                Button(action: {
                    let newCycle = Cycle(context: viewContext)
                    newCycle.startDate = date
                    do {
                        try viewContext.save()
                        print("Cycle saved.")
                        presentationMode.wrappedValue.dismiss()
                    } catch {
                        print(error.localizedDescription)
                    }
                }, label: {
                    Text("Добавить")
                })
                }.navigationTitle("Начало цикла")
        }
    }
}

struct AddCycleView_Previews: PreviewProvider {
    static var previews: some View {
        AddCycleView()
    }
}
