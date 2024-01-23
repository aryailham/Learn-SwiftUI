//
//  ContentView.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 02/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!".capitalized)
                .font(.system(size: 24, weight: .semibold, design: .serif))
                .padding(.top, 16.0)
                .fontWeight(.semibold)
                .underline(true, pattern: .dot)
                .italic()
                .baselineOffset(10)
                .kerning(1)
                .multilineTextAlignment(.center)
                .frame(width: 200)
            HStack(alignment: .center, spacing: 8, content: {
                Text("left text strikethrough")
                    .font(.caption)
                    .strikethrough()
                Text("right text")
                    .font(.caption)
            })
            Spacer()
            Circle()
//                .fill(.green)
//                .foregroundStyle(.blue)
                .stroke(lineWidth: 20)
            Spacer()
            Rectangle()
                .stroke(.red, lineWidth: 20)
                .foregroundStyle(.red)
            Spacer()
            Button("Push This Button") {
                
            }.padding(.top, 16.0)
        }
        
    }
}

#Preview {
    ContentView()
}
