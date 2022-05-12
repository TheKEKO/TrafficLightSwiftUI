//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Aleksandr F. on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var redLight = 0.4
    @State var yellowLight = 0.4
    @State var greenLight = 0.4
    @State var buttonTitle = "START"
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red).opacity(redLight)
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .padding(.bottom, 10.0)
                ColorCircleView(color: .yellow).opacity(yellowLight)
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .padding(.bottom, 10.0)
                ColorCircleView(color: .green).opacity(greenLight)
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .padding(.bottom, 10.0)
                Spacer()
                Button(action: changeColor) {
                    Text(buttonTitle)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 160, height: 50)
                        .background(Color.blue)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 6))
                        .cornerRadius(10)
                }
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
        }
    }
    
    private func changeColor() {
        buttonTitle = "NEXT"
        
        if redLight == 0.3 && yellowLight == 0.3 && greenLight == 0.3 {
            redLight = 1
        } else if redLight == 1 {
            redLight = 0.3
            yellowLight = 1
        } else if yellowLight == 1 {
            yellowLight = 0.3
            greenLight = 1
        } else {
            greenLight = 0.3
            redLight = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
