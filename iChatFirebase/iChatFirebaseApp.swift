//
//  iChatFirebaseApp.swift
//  iChatFirebase
//
//  Created by Patrick Alves on 13/08/23.
//

import SwiftUI
import Firebase

@main
struct iChatFirebaseApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
