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
                    .opacity(0.55))
                ColorCircleView(color: .yellow
                    .opacity(0.55))
                ColorCircleView(color: .green
                    .opacity(0.55))
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
