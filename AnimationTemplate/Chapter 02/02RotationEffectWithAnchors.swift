//
//  02RotationEffectWithAnchors.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/21/23.
//

import SwiftUI

struct _2RotationEffectWithAnchors: View {
    @State private var animate = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Rotation effect with anchors")
            BannerText("Specify the rotation point with the anchor option on the rotation effect", backColor: .blue, textColor: .white)
            
            Button("Switch!") {animate.toggle()}
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .shadow(radius: 8)
                .overlay(Text("Top left").foregroundColor(.white))
                .frame(width: 300, height: 200)
                .rotationEffect(Angle.degrees(animate ? 220 : 0), anchor: .topLeading)
                .animation(.easeInOut, value: animate)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .shadow(radius: 8)
                .overlay(Text("Top left").foregroundColor(.white))
                .frame(width: 300, height: 200)
                .rotationEffect(Angle.degrees(animate ? 220 : 0), anchor: .bottomTrailing)
                .animation(.easeInOut, value: animate)

        }
        .font(.title)
    }
}

struct _2RotationEffectWithAnchors_Previews: PreviewProvider {
    static var previews: some View {
        _2RotationEffectWithAnchors()
    }
}
