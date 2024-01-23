//
//  PaddingAndSpacerBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20.0)
            Text("this is the description of what we will do on this screen, it is mutiple lines and we will align the text to the leading edge")
        }
        .padding()
        .padding(.vertical, 10.0)
        .background(
            Color.white
                .presentationCornerRadius(10.0)
                .shadow(color: .black.opacity(0.3), 
                        radius: 19,
                        x: 0.0,
                        y: 10.0)
        )
        .padding(.horizontal, 10.0)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
