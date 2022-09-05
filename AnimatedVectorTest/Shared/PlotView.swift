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

struct WaveShape: Shape {
    let height: Double
    let width: Double
    var animatableData: AnimatableVector
    
    func path(in rect: CGRect) -> Path {
        var x: Double = 0.0
        var y: Double = 0.0
        var path = Path()
        path.move(to: CGPoint( x: 0.0, y: height - height * Double(animatableData[0]) ) )
        for i in 1 ..< 16 {
            x = width * Double(i) / Double(15)
            y = height - height * Double( animatableData[i] )
            path.addLine(to: CGPoint(x: x, y: y))
        }
        return path
    }
}

struct PlotView: View {
    @EnvironmentObject var dataSource: DataSource
    
    var body: some View {
        GeometryReader { proxy in
            WaveShape(
                height: proxy.size.height,
                width: proxy.size.width,
                animatableData: dataSource.vector
            )
            .stroke(Color.red, lineWidth: 5)
            .animation(.linear(duration: 0.5), value: dataSource.vector)
        }
    }
}
