//
//  TodoListApp.swift
//  TodoList
//
//  Created by Akbarjon Juramirzaev on 08/08/23.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - maanages Models for View
 
 
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
        }
    }
}
