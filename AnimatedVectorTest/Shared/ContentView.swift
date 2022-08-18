//
//  ContentView.swift
//  Shared
//
//  Created by Keith Bromley on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataSource: DataSource

    var body: some View {
        PlotView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
