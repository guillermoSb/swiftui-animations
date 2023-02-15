//
//  BannerText.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct BannerText: View {
    var text: String
    var textColor: Color
    var backColor: Color
    
    var body: some View {
        Text(text)
            .font(.title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backColor)
            .foregroundColor(textColor)
    }
    
    init(_ text: String, backColor: Color = Color.orange, textColor: Color = Color.primary) {
        self.text = text
        self.backColor = backColor
        self.textColor = textColor
    }
}
