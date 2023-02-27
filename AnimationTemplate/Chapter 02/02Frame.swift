//
//  02Frame.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/21/23.
//

import SwiftUI

struct _2Frame: View {
    @State var animate = false
    var body: some View {
        
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Frame")
            BannerText("We can animate the width and height properties of a view's frame. However this changes the layout. it is better to use a scale effect", backColor: .blue ,textColor: .white)
            Button("Toggle") {animate.toggle()}
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: animate ? 100 : 300, height: animate ? 80 : 220)
                .animation(.easeInOut, value: animate)
            
        }
    }
}

struct _2Frame_Previews: PreviewProvider {
    static var previews: some View {
        _2Frame()
    }
}
