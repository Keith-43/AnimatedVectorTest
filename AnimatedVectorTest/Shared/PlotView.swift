//
//  PlotView.swift
//  AnimatedVectorTest
//
//  Advanced SwiftUI Animations Parts 1-5 by javier
//  https://swiftui-lab.com/category/animations/
//  https://gist.github.com/swiftui-lab/e5901123101ffad6d39020cc7a810798
//
//  Created by Keith Bromley on 8/17/22.
//

import SwiftUI

struct PlotView: View {
    @EnvironmentObject var dataSource: DataSource  // Observe the instance of DataSource passed from ContentView
    
    var animatableData: AnimatableVector {
        get { return dataSource.vector }
        set { dataSource.vector = newValue }
    }
    
    
    var body: some View {
        Canvas { context, size in

            let width: Double  = size.width
            let height: Double = size.height

            var x: Double = 0.0         // The drawing origin is in the upper left corner.
            var y: Double = 0.0         // The drawing origin is in the upper left corner.
            
            var path = Path()
            path.move(to: CGPoint( x: 0.0, y: height - height * Double(animatableData[0]) ) )

            for i in 1 ..< 16 {
                x = width * Double(i) / Double(15)
                y = height - height * Double( animatableData[i] )
                path.addLine(to: CGPoint(x: x, y: y))
            }

            context.stroke( path,
                            with: .color( Color(red: 1.0, green: 0.0, blue: 0.0) ),
                            lineWidth: 2.0 )
        }
        .animation(.easeInOut(duration: 0.2), value: animatableData)
    }
}
