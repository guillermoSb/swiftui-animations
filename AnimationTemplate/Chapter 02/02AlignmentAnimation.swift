//
//  02AlignmentAnimation.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct _2AlignmentAnimation: View {
    @State private var toggle = true
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            BannerText("Animating alignment inside a view", backColor: .blue, textColor: .white)
            VStack(alignment: toggle ? .leading : .trailing) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: toggle)
                HStack {
                    Spacer()
                }
                .background(.red)
            }
            BannerText("Inside HStack Too", backColor: .blue, textColor: .white)
            HStack(alignment: toggle ? .top : .bottom) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .animation(.default, value: toggle)
                VStack {
                    Spacer()
                }
                .background(.red)
                .background(.red)
            }
            
            Button("Animate") {toggle.toggle()}
        }

    }
}

struct _2AlignmentAnimation_Previews: PreviewProvider {
    static var previews: some View {
        _2AlignmentAnimation()
    }
}
