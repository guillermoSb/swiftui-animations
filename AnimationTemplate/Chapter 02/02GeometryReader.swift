//
//  02GeometryReader.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/20/23.
//

import SwiftUI

struct _2GeometryReader: View {
    @State var change = false
    var body: some View {
        VStack(spacing: 20){
            TitleText("Geometry Reader")
            SubtitleText("Animate views inside geometry reader")
            GeometryReader { gp in
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(x: change ? gp.size.width - 50 : 50, y: change ? gp.size.height - 50 : 50)
                    .animation(.linear, value: change)
            }
            Button("Change!") {
                change.toggle()
            }
        }
    }
}

struct _2GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        _2GeometryReader()
    }
}
