//
//  ContentView.swift
//  TrafficLight
//
//  Created by Александр Зинин on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    enum CurrentLight {
        case red, yellow, green
    }
    
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
            
            Button(action: buttonPressed) {
                Text(buttonName)
                    .frame(width: 150, height: 50)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 13)
                         .stroke(Color.white, lineWidth: 3))
                    .shadow(radius: 10)
            }
            .padding()
        }

    private func buttonPressed() {
        
        buttonName = "NEXT"
        
        switch currentLight {
        case .red:
            opacityRed = 1.0
            opacityGreen = 0.4
            currentLight = .yellow
        case .yellow:
            opacityRed = 0.4
            opacityYellow = 1.0
            currentLight = .green
        case .green: 
            opacityYellow = 0.4
            opacityGreen = 1.0
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
