//
//  02RotationEffect.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/21/23.
//

import SwiftUI

struct _2RotationEffect: View {
    @State var animate = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Rotation Effect")
            Button("Change") {animate.toggle()}
            Spacer()
            RoundedRectangle(cornerRadius: 14)
                .foregroundColor(.blue)
                .frame(width: 300, height: 200)
                .overlay(Image(systemName: "arrow.right"))
                .rotationEffect(Angle.degrees(animate ? 240 : 0))
                .animation(.easeInOut, value: animate)
                .font(.title)
            
            
            Spacer()
            
        }
        
    }
        
}

struct _2RotationEffect_Previews: PreviewProvider {
    static var previews: some View {
        _2RotationEffect()
    }
}
