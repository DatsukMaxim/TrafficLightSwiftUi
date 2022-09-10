//
//  ColorCircleView.swift
//  TrafficLightSwiftUi
//
//  Created by Maxim Datsuk on 10.09.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var body: some View {
        Circle()
            .foregroundColor(.green)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView()
    }
}
