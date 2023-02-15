//
//  ContentView.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Title")
            SubtitleText("Subtitle")
            BannerText("This is a banner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
