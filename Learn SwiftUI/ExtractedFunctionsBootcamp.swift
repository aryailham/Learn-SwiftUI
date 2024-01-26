//
//  ExtractedFunctionsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 25/01/24.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    func changeColor() {
        backgroundColor = .yellow
    }
    
    var button: some View {
        Button(action: {
            changeColor()
        }, label: {
            Text("PRESS ME")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .cornerRadius(10.0)
        })
    }
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(content: {
                Text("Title")
                    .font(.largeTitle)
                button
            })
        }
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
