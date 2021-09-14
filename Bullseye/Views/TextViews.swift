//
//  SwiftUIView.swift
//  Bullseye
//
//  Created by manukant tyagi on 13/09/21.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .font(.footnote)
            .lineSpacing(4.0)
            
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View{
        
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(-1.0)
            .fontWeight(.black)
            .font(.largeTitle)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35)
        
    }
}


struct LabelText: View {
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯🎯\n Put the bullseye as close as you can to")
            BigNumberText(text: "999")
            SliderLabelText(text: "99")
            LabelText(text: "999")
        }
        
    }
}
