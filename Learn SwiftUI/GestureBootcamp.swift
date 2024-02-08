//
//  GestureBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct GestureBootcamp: View {
    
    @State var color: Color = .black
    
    var body: some View {
        VStack(spacing: 40, content: {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(color)
                .frame(height: 200)
                .animation(.easeInOut)
                .onTapGesture {
                    DispatchQueue.main.async {
                        color = .black
                    }
                }
            
            Button(action: {
                DispatchQueue.main.async {
                    color = .blue
                }
            }, label: {
                Text("Change color")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            })
        })
        .padding(.horizontal, 10)
        .ignoresSafeArea()
    }
}

#Preview {
    GestureBootcamp()
}
