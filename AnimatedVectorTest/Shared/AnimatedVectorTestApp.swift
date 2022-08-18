//
//  AnimatedVectorTestApp.swift
//  Shared
//
//  Created by Keith Bromley on 8/16/22.
//

import SwiftUI

@main
struct AnimatedVectorTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataSource.dataSource)
                .frame( minWidth:  100.0, idealWidth:  800.0, maxWidth:  .infinity,
                        minHeight: 100.0, idealHeight: 800.0, maxHeight: .infinity, alignment: .center)
        }
    }
}
