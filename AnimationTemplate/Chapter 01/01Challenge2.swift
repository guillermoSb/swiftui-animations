//
//  01Challenge2.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct _1Challenge2: View {
    @State private var toggle = true
    var body: some View {
        VStack {
            TitleText("Challenge 02")
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: 0, y: toggle ? 500 : 0)
                .animation(.easeOut, value: toggle)
                
                
            Spacer()
            Button("Animate") {toggle.toggle()}
        }

    }
}

struct _1Challenge2_Previews: PreviewProvider {
    static var previews: some View {
        _1Challenge2()
    }
}
