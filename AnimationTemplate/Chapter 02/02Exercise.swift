//
//  02Exercise.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/22/23.
//

import SwiftUI

struct _2Exercise: View {
    @State private var change = false
    let offset: CGFloat = 200
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Exercise")
            Spacer()
            // Logo composition
            VStack(spacing: 1) {
                HStack(alignment: .bottom,spacing: 1) {
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: change ? 0 : -offset)
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: change ? 0 : -offset)
                        
                }
                .offset(x: -18)
                HStack(alignment: .top,spacing: 1) {
                    Rectangle()
                        .frame(width: 36, height: 72)
                        .offset(y: change ? 0 : offset)
                        
                    Rectangle()
                        .frame(width: 72, height: 36)
                        .offset(x: change ? 0 : offset)
                        
                }
                .offset(x: 18, y: 0)
            }
            .rotationEffect(Angle.degrees(change ? 0: -90))
            .opacity(change ? 1: 0)
            .foregroundColor(change ? .red : .orange)
            .animation(.easeInOut, value: change)
            Spacer()
            Button("Toggle") {change.toggle()}
        }
    }
}

struct _2Exercise_Previews: PreviewProvider {
    static var previews: some View {
        _2Exercise()
    }
}
