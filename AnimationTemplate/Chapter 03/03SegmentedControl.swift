//
//  03SegmentedControl.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/27/23.
//

import SwiftUI

struct _3SegmentedControl: View {
    @State private var segment = 0
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Segmented Control")
            BannerText("Changing a view with a ssegmented picker", backColor: .green)
            Picker("Day & Night", selection: $segment) {
                Text("Day").tag(0)
                Text("Night").tag(1)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            GeometryReader {gp in
                ZStack{
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            Image(systemName: "sun.max.fill")
                            Spacer()
                        }
                        .padding(.top, 24)
                        Text("Day Report")
                            .padding()
                            .background(.thinMaterial)
                            
                        Spacer()
                    }
                    .background(
                        Image("day")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .cornerRadius(20)
                    .offset(x: segment == 0 ? 0 : -400)
                    
                    
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            Image(systemName: "moon.fill")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.top, 24)
                        Text("Night Report")
                            .padding()
                            .background(.thinMaterial)
                            
                        Spacer()
                    }
                    .background(
                        Image("night")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .cornerRadius(20)
                    .offset(x: segment == 1 ? 0 : 400)
                }
                .font(.title)
            }
            .shadow(radius: 6)
            .padding()
            .animation(.linear, value: segment)
            
        }
        
    }
}

struct _3SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        _3SegmentedControl()
    }
}
