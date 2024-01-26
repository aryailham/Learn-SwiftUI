//
//  BindingBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 26/01/24.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"

    var body: some View {
        ZStack(content: {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        })
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button(action: {
            backgroundColor = .red
            buttonColor = .green
            title = "Clicked"
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(12)
        })
    }
}
