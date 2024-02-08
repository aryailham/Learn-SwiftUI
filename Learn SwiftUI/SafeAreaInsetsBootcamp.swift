//
//  SafeAreaInsetsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 08/02/24.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
//            .overlay(alignment: .bottom) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//
//            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .padding()
//                    .frame(maxWidth: .infinity)
                    .background(.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
