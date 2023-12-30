//
//  Empty_FailApp.swift
//  Empty&Fail
//
//  Created by Abdul Ahad on 30.12.23.
//

import SwiftUI

@main
struct Empty_FailApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView() {
                FailContentView().tabItem {
                         Text("FailContentView")
                    }.tag(0)
                EmptyContentView().tabItem {
                         Text("EmptyContentView")
                    }.tag(1)
                }
            
        }
    }
}
