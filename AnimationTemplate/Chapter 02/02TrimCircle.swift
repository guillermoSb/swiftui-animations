//
//  02TrimCircle.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/22/23.
//

import SwiftUI

struct _2TrimCircle: View {
    @State private var change = false
    var circleProgress: CGFloat {change ? 0.25 : 1}
    var body: some View {
        VStack(spacing: 20.0) {
            TitleText("We can animate Corner Radius")
            SubtitleText("Corner Radius")
            Button("Toggle") {change.toggle()}
            Spacer()
            Circle()
                .trim(from: 0, to: circleProgress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round))
                .rotationEffect(Angle.degrees(-90))
                .padding(40)
                .animation(.easeInOut, value: change)
                
        }
    }
}

struct _2TrimCircle_Previews: PreviewProvider {
    static var previews: some View {
        _2TrimCircle()
    }
}
