//
//  ButtonBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 24/01/24.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "this is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press Me") {
                self.title = "i am pressed"
            }
            .tint(.red)
            Button(action: {
                self.title = "i am pressed by button two"
            }, label: {
                Rectangle()
                    .fill(.green)
                    .overlay(content: {
                        Text("this is a button")
                            .foregroundStyle(.white)
                    })
                    .frame(width: 100, height: 100, alignment: .center)
            })
        }
    }
}

#Preview {
    ButtonBootcamp()
}
