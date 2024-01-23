//
//  InitializerBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct InitializerBootcamp: View {
    var backgroundColor: Color = .red
    var number: Int = 10
    var name: String = "Apples"
    
    init(backgroundColor: Color, number: Int, name: String) {
        self.backgroundColor = backgroundColor
        self.number = number
        self.name = name
    }
    
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(name)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .presentationCornerRadius(15)
        .background(backgroundColor)
//        .cornerRadius(15.0)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)))
    }
}

#Preview {
//    InitializerBootcamp()
    HStack {
        InitializerBootcamp(backgroundColor: .red, number: 5, name: "Apples")
//        InitializerBootcamp(backgroundColor: .orange, number: 55, name: "Oranges")
    }
}
