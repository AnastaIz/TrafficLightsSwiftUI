//
//  ColorCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Anastasia Izmaylova on 15.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color

    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 130, height: 130)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red)
    }
}
