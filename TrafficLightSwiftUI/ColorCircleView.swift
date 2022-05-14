//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Aleksandr F. on 12.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 80, height: 80)
            .shadow(radius: 1)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .black)
    }
}
