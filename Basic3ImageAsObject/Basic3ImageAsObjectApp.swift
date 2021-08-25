//
//  Basic3ImageAsObjectApp.swift
//  Basic3ImageAsObject
//
//  Created by Daniel Watson on 19/08/2021.
//

import SwiftUI

@main
struct Basic3ImageAsObjectApp: App {
    @StateObject var dataModel = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(dataModel)
        }
    }
}
