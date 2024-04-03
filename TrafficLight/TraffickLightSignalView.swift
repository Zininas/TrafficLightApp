//
//  TraffickLightSignalView.swift
//  TrafficLight
//
//  Created by Александр Зинин on 30.03.2024.
//

import SwiftUI

struct TraffickLightSignalView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 5)
    }
}

#Preview {
    TraffickLightSignalView(color: .red, opacity: 0.7)
}
