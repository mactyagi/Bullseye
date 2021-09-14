//
//  Shapes.swift
//  Bullseye
//
//  Created by manukant tyagi on 14/09/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            Circle()
//                .fill(Color.blue)
                .strokeBorder(Color.blue, lineWidth: 20)
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 10)
            Capsule()
            Ellipse()
        }
        .background(Color.green)
            }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
