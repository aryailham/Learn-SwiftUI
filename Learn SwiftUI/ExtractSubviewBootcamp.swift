//
//  ExtractSubviewBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 25/01/24.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack(content: {
            Color(.blue)
                .ignoresSafeArea()
            MyItem(title: "orange", count: 2, color: .orange)
        })
    }
}

#Preview {
    ExtractSubviewBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack(content: {
            Text("\(count)")
            Text("\(title)")
        })
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
