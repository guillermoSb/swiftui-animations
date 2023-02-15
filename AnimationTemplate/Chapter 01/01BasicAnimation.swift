//
//  01BasicAnimation.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct _1BasicAnimation: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Example")
            BannerText("Changing the Shape Position. When the variable value changes.")
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: 0, y: change ? 300 : 0)
                .animation(Animation.easeInOut, value: change)
            Spacer()
            Button("Change") {
                change.toggle()
            }
            .padding(.bottom)
        }
        .font(.title)
    }
}

struct _1BasicAnimation_Previews: PreviewProvider {
    static var previews: some View {
        _1BasicAnimation()
    }
}
