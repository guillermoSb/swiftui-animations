//
//  03Triggers.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/26/23.
//

import SwiftUI

struct _3ButtonTrigger: View {
    @State private var showButtons = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 20) {
                TitleText("Triggers")
                SubtitleText("Buttons")
                BannerText("Triggering animation with buttons", backColor: .green, textColor: .white)
                Spacer()
            }
            Group {
              
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "bag.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(.green).shadow(radius: 8))
                .offset(x: 0, y: showButtons ?  -120 : 0)
                .opacity(showButtons ? 1 : 0)
                
                
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "gauge.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : -90))
                }
                .background(Circle().fill(.green).shadow(radius: 8))
                .offset(x: showButtons ? -120 : 0, y: showButtons ?  -120 : 0)
                .opacity(showButtons ? 1 : 0)
                
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "calendar.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(.green).shadow(radius: 8))
                .offset(x: showButtons ? -120 : 0, y: 0)
                .opacity(showButtons ? 1 : 0)

                
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 45 : 0))
                        
                }
                .background(Circle().fill(.green).shadow(radius: 8))
                
            }
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .animation(.default, value: showButtons)
            
        }
        
        
    }
}

struct _3ButtonTriggerPreview: PreviewProvider {
    static var previews: some View {
        _3ButtonTrigger()
    }
}
