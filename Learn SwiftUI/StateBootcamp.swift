//
//  StateBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 24/01/24.
//

import SwiftUI

struct StateBootcamp: View {
    @State var number: Int = 0
    var body: some View {
        ZStack(content: {
            // backgroud
            Color.red.ignoresSafeArea(.all)
            
            VStack(spacing: 20, content: {
                Text("title")
                    .font(.title)
                Text("Count: \(number)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20, content: {
                    Button("Button 1") {
                        number += 1
                    }
                    Button("Button 2") {
                        number -= 1
                    }
                })
            })
            .tint(.white)
            .foregroundStyle(.white)
        })
    }
}

#Preview {
    StateBootcamp()
}
