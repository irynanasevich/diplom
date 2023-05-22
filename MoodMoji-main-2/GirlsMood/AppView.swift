//
//  AppView.swift
//  moodmoji
//
//  Created by Iryna Nasevich on 28.04.23.
//

import SwiftUI

struct AppView: View {
    @StateObject var timeline: Timeline = Timeline();
    
    @State var selectTab = "Календарь"
    
    let tabs = ["Советы", "Календарь", "События", "Список"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    let persistenceController = PersistenceController.shared
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            TabView(selection: $selectTab){
            InformationView()
                    .tag("Советы")
             PeriodCycleView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tag("Календарь")
            LogView(timeline: timeline)
                    .tag("События")
            TimelineView(timeline: timeline)
                    .tag("Список")

                
            }
            .opacity(1)
            
            HStack{
                ForEach(tabs, id: \.self){ tab in
                    Spacer()
                    TabBarItem(tab: tab, selected: $selectTab)
                    Spacer()
            }
            }
            .padding(.top, 20)
            .padding(.bottom,5)
            .frame(maxWidth: .infinity)
            .background(Color("Pink"))
            .font(.headline)
            
        }
    }
}

struct TabBarItem: View{
    @State var tab: String
    @Binding var selected: String
    var body: some View{
        ZStack{
            
            Button{
                withAnimation(.spring()){
                    selected = tab}
            } label: {
                HStack{
                    Image(tab)
                        .resizable()
                        .frame(width: 20, height: 20)
                    if selected == tab{
                        Text(tab)
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                }
                    
            }
        }
            
        .opacity(selected == tab ? 1 : 0.7)
        .padding(.vertical,5)
        .padding(.horizontal,15)
        .background(.white)
        .clipShape(Capsule())
    }
 }

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
