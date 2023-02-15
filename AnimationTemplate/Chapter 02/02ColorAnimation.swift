//
//  02ColorAnimation.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct _2ColorAnimation: View {
    @State private var toggle = true
    var body: some View {
        VStack {
            TitleText("Animatable Properties")
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(toggle ? .orange : .blue)
                .animation(.easeInOut, value: toggle)
                .frame(width: 200, height: 100)
                .padding()
            Spacer()
            
            
            Button("Animate") {toggle.toggle()}
        }

    }
}

struct _2ColorAnimation_Previews: PreviewProvider {
    static var previews: some View {
        _2ColorAnimation()
    }
}
