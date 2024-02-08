//
//  ButtonStyleBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            Button("Button Title") {
                
            }
            .frame(height: 85)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button Title") {
                
            }
            .frame(height: 85)
            .frame(maxWidth: .infinity)
//            .controlSize(.large)
            .buttonStyle(.bordered)
            
            Button("Button Title") {
                
            }
            .frame(height: 85)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 85)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
        }
        .padding()
    }
}

#Preview {
    ButtonStyleBootcamp()
}
