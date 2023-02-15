//
//  SubtitleText.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct SubtitleText: View {
    var subtitle = ""
    var body: some View {
        Text(subtitle)
            .font(.title)
            .foregroundColor(.gray)
    }
    
    init(_ subtitle: String) {
        self.subtitle = subtitle
    }
}

