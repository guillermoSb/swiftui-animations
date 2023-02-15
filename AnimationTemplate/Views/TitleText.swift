//
//  TitleText.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct TitleText: View {
    var title = ""
    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
    
    init(_ title: String) {
        self.title = title
    }
}

