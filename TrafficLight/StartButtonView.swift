//
//  StartButtonView.swift
//  TrafficLight
//
//  Created by Александр Зинин on 09.04.2024.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {

        Button(action: action) {
            Text(title)
                .fontWeight(.heavy)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 50)
        .background(Color.blue)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
             .stroke(Color.white, lineWidth: 5))
        .shadow(radius: 10)
    }
}

#Preview {
    StartButtonView(title: "START", action: {})
}
