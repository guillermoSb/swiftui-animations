//
//  02TextAnimation.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/22/23.
//

import SwiftUI

struct _2TextAnimation: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20.0) {
            TitleText("We can animate Corner Radius")
            SubtitleText("Corner Radius")
            Button("Toggle") {change.toggle()}
            Spacer()
            // The trick is to scale the text large and then scale it down
            Text("Hello")
                .font(.system(size: 80))
                .scaleEffect(change ? 1 : 0.25)
                .animation(.easeInOut, value: change)
            Spacer()
        }
    }
}

struct _2TextAnimation_Previews: PreviewProvider {
    static var previews: some View {
        _2TextAnimation()
    }
}
