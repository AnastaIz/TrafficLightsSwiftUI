//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Anastasia Izmaylova on 15.02.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var redLight = Color.red.opacity(0.4)
    @State private var yellowLight = Color.yellow.opacity(0.4)
    @State private var greenLight = Color.green.opacity(0.4)
    @State private var buttonTitle = "START"
    
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                VStack(spacing: 100){
                            VStack(spacing: 20) {
                                ColorCircle(color: redLight)
                                ColorCircle(color: yellowLight)
                                ColorCircle(color: greenLight)
                            }
                            Button(action: changeColor) {
                                        Text(buttonTitle)
                                            .font(.title)
                                    }
                                    .tint(.blue)
                                    .buttonStyle(.borderedProminent)
                                    .buttonBorderShape(.automatic)
                                    .controlSize(.large)
                        })
    }
    
    private func changeColor() {
        buttonTitle = "NEXT"
        
        switch currentLight {
        case .red:
            redLight = .red
            yellowLight = .yellow.opacity(0.4)
            greenLight = .green.opacity(0.4)
            currentLight = .yellow
        case .yellow:
            redLight = .red.opacity(0.4)
            yellowLight = .yellow
            currentLight = .green
        case .green:
            yellowLight = .yellow.opacity(0.4)
            greenLight = .green
            currentLight = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
