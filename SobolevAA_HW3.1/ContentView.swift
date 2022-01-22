//
//  ContentView.swift
//  SobolevAA_HW3.1
//
//  Created by Андрей Соболев on 20.01.2022.
//

import SwiftUI

enum Condition  {
    case red
    case yellow
    case green
}


struct ContentView: View {
    
    @State private var condition: Condition  = Condition.red
    
    private func nextCondition() {
        switch condition {
        case Condition.red :
             condition = Condition.yellow
        case Condition.yellow:
            condition = Condition.green
        default:
            condition = Condition.red
        }
    }
    
    var body: some View {
        
        VStack(){
            VStack{
                CircleColorView(color: .red, opacity: condition    == .red ? 1 : 0.3)
                CircleColorView(color: .yellow, opacity: condition == .yellow ? 1 : 0.3)
                CircleColorView(color: .green, opacity: condition  == .green ? 1 : 0.3)
            }
            .padding(50)
            Button("Next") {
                nextCondition()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

