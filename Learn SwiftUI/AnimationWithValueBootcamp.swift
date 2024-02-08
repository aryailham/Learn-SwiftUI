//
//  AnimationWithValueBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 08/02/24.
//

import SwiftUI

struct AnimationWithValueBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Action 1") {
                animate1.toggle()
            }
            
            Button("Action 2") {
                animate2.toggle()
            }
            
            ZStack(content: {
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                    .background(.green)
                    .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                    .background(.orange)
                    .animation(.easeIn, value: animate1)
                    .animation(.bouncy, value: animate2)
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
        }
    }
}

#Preview {
    AnimationWithValueBootcamp()
}
