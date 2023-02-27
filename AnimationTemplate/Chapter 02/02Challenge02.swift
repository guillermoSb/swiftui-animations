//
//  02Challenge02.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/25/23.
//

import SwiftUI

struct _2Challenge02: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Challenge 02")
            SubtitleText("Show a menu")
            Button("Show the menu") {change.toggle()}
            
            Spacer()
            VStack(spacing: 20) {
                Image(systemName: "line.3.horizontal")
                Text("My menu")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: 190,
                  alignment: .top
            )
            .background(.blue)
            .cornerRadius(24)
            .padding()
            .opacity(change ? 1 : 0)
            .offset(x: 0, y: change ? 0 : 240)
            .scaleEffect(change ? 1 : 0, anchor: .bottom)
            .animation(.easeIn(duration: 0.2), value: change)
          
  
        }
    }
}

struct _2Challenge02_Previews: PreviewProvider {
    static var previews: some View {
        _2Challenge02()
    }
}
