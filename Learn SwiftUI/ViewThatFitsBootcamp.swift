//
//  ViewThatFitsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 08/02/24.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits(in: .horizontal) {
                Text("This is some text that i would like to display to the user!")
                Text("This is some text that i would like to display")
            }
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
