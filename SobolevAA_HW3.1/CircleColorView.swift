//
//  CircleColorView.swift
//  SobolevAA_HW3.1
//
//  Created by Андрей Соболев on 22.01.2022.
//

import SwiftUI

struct CircleColorView: View {
    let color: Color
    let opacity : Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
 
    }
}

struct CircleColorView_Previews: PreviewProvider {
    static var previews: some View {
        //let opacity : Double
        CircleColorView(color: .red, opacity: 1)
    }
}
