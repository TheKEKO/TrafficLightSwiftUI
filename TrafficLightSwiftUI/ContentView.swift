//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Aleksandr F. on 12.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var redLight = 0.4
    @State private var yellowLight = 0.4
    @State private var greenLight = 0.4
    
    @State private var buttonTitle = "START"
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            currentLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            currentLight = .red
            greenLight = lightIsOn
            yellowLight = lightIsOff
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorCircleView(color: .red, opacity: redLight)
                ColorCircleView(color: .yellow, opacity: yellowLight)
                ColorCircleView(color: .green, opacity: greenLight)
                
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

