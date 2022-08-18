//
//  DataSource.swift
//  AnimatedVectorTest
//
//  Created by Keith Bromley on 8/17/22.
//

import SwiftUI
import Foundation
import Combine


class DataSource: ObservableObject {

    static let dataSource = DataSource() // This singleton instantiates the DataSource class and runs the init() func
    
    @Published var vector: AnimatableVector = AnimatableVector.zero

    init() {
        vector = generateData()
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            self.vector = self.generateData()
        }
    }

    func generateData() -> AnimatableVector {
        var points = Array.init(repeating: Float.zero, count: 16)
        for i in 0 ..< 16 {
            points[i] = Float.random(in: 0.0 ... 1.0)
        }
        return AnimatableVector(values: points)
    }
}
