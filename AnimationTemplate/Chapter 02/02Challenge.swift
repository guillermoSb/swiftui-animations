//
//  02Challenge.swift
//  AnimationTemplate
//
//  Created by Guillermo Santos Barrios on 2/25/23.
//

import SwiftUI

struct _2Challenge: View {
    @State private var change = false
    @State private var field1 = ""
    var body: some View {
        VStack() {
            TitleText("Challenge 02")
            SubtitleText("Show Login")
                .padding(.top)
            
            Spacer()
                .frame(height: 80)
            
            Text("Already Have an account")
                .font(.title)
            Button("Login") { change.toggle() }
                .padding(.top, 10)
            
            VStack {
                Image(systemName: "face.smiling")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
                TextField("Username", text: $field1)
                    .padding(12)
                    .background(.white)
                    .cornerRadius(12)
                
                TextField("Password", text: $field1)
                    .padding(12)
                    .background(.white)
                    .cornerRadius(12)
            
            }
            .padding([.leading, .trailing], 24)
            .offset(x: change ? 0 : -400, y: 0)
            .animation(.easeIn(duration: 0.2), value: change)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .background(.cyan.opacity(0.1))
        
    }

        
}

struct _2Challenge_Previews: PreviewProvider {
    static var previews: some View {
        _2Challenge()
    }
}
