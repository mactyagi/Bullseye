//
//  ContentView.swift
//  Bullseye
//
//  Created by manukant Tyagi on 06/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 10.0
    @State private var game = Game()
    var body: some View {
        VStack {
            Text("🎯🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .font(.footnote)
                .lineSpacing(4.0)
                .padding()
            Text(String(game.target))
                .bold()
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
            HStack {
                Text("1")
                    .bold()
                
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            

            Button(action: {
                print("Hello SwiftUI!")
                alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(sliderValue.rounded())
                return Alert(title: Text("Hello there"), message: Text("The slider value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) point in this round."), dismissButton: .default(Text("Awesome")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        ContentView()
//        .previewLayout(.fixed(width: 568, height: 320))
    }
}
