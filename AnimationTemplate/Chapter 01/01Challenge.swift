//
//  01Challenge.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct _1Challenge: View {
    @State private var toggle = true
    var body: some View {
        VStack {
            TitleText("Challenge")
            SubtitleText("Move the Circle")
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: toggle ? 100 : -100, y: toggle ? 500 : 0)
                .animation(.easeInOut, value: toggle)
            Spacer()
            Button("Animate") {toggle.toggle()}
        }

    }
}

struct _1Challenge_Previews: PreviewProvider {
    static var previews: some View {
        _1Challenge()
    }
}
