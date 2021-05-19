//
//  CircleImage.swift
//  CreatingAndCombiningViews
//
//  Created by Diego Montaño on 19/05/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
      Image("turtlerock")
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
