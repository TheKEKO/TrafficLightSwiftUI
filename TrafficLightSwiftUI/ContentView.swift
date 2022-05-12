//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Aleksandr F. on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red
                    .opacity(0.40))
                .padding(.bottom, 10.0)
                ColorCircleView(color: .yellow
                    .opacity(0.40))
                .padding(.bottom, 10.0)
                ColorCircleView(color: .green
                    .opacity(0.40))
                .padding(.bottom, 10.0)
                Spacer()
                Button(action: {}) {
                    Text("START")
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
     
    }
}
