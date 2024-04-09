//
//  ContentView.swift
//  TrafficLight
//
//  Created by Александр Зинин on 30.03.2024.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var opacityRed = 0.4
    @State private var opacityYellow = 0.4
    @State private var opacityGreen = 0.4
    
    @State private var currentLight = CurrentLight.red
    
    @State private var buttonName = "START"
    
    var body: some View {
            VStack {
                TraffickLightSignalView(color: .red, opacity: opacityRed)
                TraffickLightSignalView(color: .yellow, opacity: opacityYellow)
                    .padding()
                TraffickLightSignalView(color: .green, opacity: opacityGreen)
            }
            .padding()
        
            Spacer()
        
        StartButtonView(title: buttonName, action: {
            if buttonName == "START" {
                buttonName = "NEXT"
            }
            buttonPressed()
        })
            .padding()
        }

    private func buttonPressed() {
        let ligtIsOn = 1.0
        let ligtIsOff = 0.4
        
        switch currentLight {
        case .red:
            opacityRed = ligtIsOn
            opacityGreen = ligtIsOff
            currentLight = .yellow
        case .yellow:
            opacityRed = ligtIsOff
            opacityYellow = ligtIsOn
            currentLight = .green
        case .green: 
            opacityYellow = ligtIsOff
            opacityGreen = ligtIsOn
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
