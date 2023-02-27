//
//  02CornerRadius.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/22/23.
//

import SwiftUI

struct _2CornerRadius: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20.0) {
            TitleText("We can animate Corner Radius")
            SubtitleText("Corner Radius")
            Button("Toggle") {change.toggle()}
            RoundedRectangle(cornerRadius: change ? 20 : 50)
                .foregroundColor(.blue)
                .padding()
                .animation(.easeInOut, value: change)
            
            Text("On modifier also")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(change ? 20: 50)
                .animation(.easeInOut, value: change)
            
            
                
                
                
            
            
            
        }
    }
}

struct _2CornerRadius_Previews: PreviewProvider {
    static var previews: some View {
        _2CornerRadius()
    }
}
