//
//  moodmojiApp.swift
//  moodmoji
//
//  Created by Joel DeSante on 1/29/23.
//

import SwiftUI
import FirebaseCore

@main
struct moodmojiApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
