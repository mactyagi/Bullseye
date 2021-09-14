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
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                InstructionView(game: $game)
                sliderView(sliderValue: $sliderValue)
                HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
    }
}

struct InstructionView: View{
    @Binding var game: Game
    var body: some View{
        VStack{
            InstructionText(text: "🎯🎯🎯🎯\n Put the bullseye as close as you can to")
                .padding(.leading, 30)
                .padding(.trailing, 30)
            BigNumberText(text: String(game.target))
        }
    }
}


struct sliderView: View{
    @Binding var sliderValue: Double
    var body: some View{
        HStack {
            SliderLabelText(text: "1")
            
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButtonView: View {
    @Binding var alertIsVisible : Bool
    @Binding var sliderValue : Double
    @Binding var game : Game
    var body: some View{
        Button(action: {
            print("Hello SwiftUI!")
            alertIsVisible = true
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
            
        }
        .padding(20.0)
        .background(ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
        })
        
        .foregroundColor(.white)
        .cornerRadius(21)
        
         
        .alert(isPresented: $alertIsVisible, content: {
            let roundedValue = Int(sliderValue.rounded())
            return Alert(title: Text("Hello there"), message: Text("The slider value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) point in this round."), dismissButton: .default(Text("Awesome")))
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
//        ContentView()
//        .previewLayout(.fixed(width: 568, height: 320))
    }
}
