//
//  ContentView.swift
//  TrafficLightSwiftUi
//
//  Created by Maxim Datsuk on 10.09.2022.
//

import SwiftUI

struct ContentView: View {
    let red = Color(.init(red: 1, green: 0, blue: 0, alpha: 0.3))
    let yellow = Color(.init(red: 1, green: 1, blue: 0, alpha: 0.3))
    let green = Color(.init(red: 0, green: 1, blue: 0, alpha: 0.3))
    
    @State private var buttonLabel = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Circle()
                    .foregroundColor(red)
                    .frame(width: 100, height: 100)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(yellow)
                    .frame(width: 100, height: 100)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Circle()
                    .foregroundColor(green)
                    .frame(width: 100, height: 100)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Spacer()
                Button(action: { buttonLabel = "NEXT" }) {
                    Text(buttonLabel)
                        .font(.largeTitle.bold())
                        .frame(width: 130, height: 30)
                        .foregroundColor(.white)
                        .padding(.init(
                            top: 10, leading: 30, bottom: 10, trailing: 30
                        ))
                        .border(.white, width: 4)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 10))
                        .background(.blue)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
