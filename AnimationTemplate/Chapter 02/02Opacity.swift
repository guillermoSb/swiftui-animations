//
//  02Opacity.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/20/23.
//

import SwiftUI

struct _2Opacity: View {
    @State var show = false
    var body: some View {
        VStack {
            TitleText("Opacity")
            Button("Show/Hide") {
                show.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                
                .opacity(show ? 1.0 : 0.0)
                .animation(.easeInOut, value: show)
                
                .padding()
                
        }
        
    }
}

struct _2Opacity_Previews: PreviewProvider {
    static var previews: some View {
        _2Opacity()
    }
}
