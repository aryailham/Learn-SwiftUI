//
//  ScrollviewBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct ScrollviewBootcamp: View {
    var data : [String] = [
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
        "Hi",
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack { // Lazy is used for lazy loading
                ForEach(data.indices) { index in
                    RoundedRectangle(cornerSize: CGSize(width: 15, height: 15))
                        .fill(.white)
                        .frame(width: 200, height: 150)
                        .shadow(color: .black.opacity(0.3), radius: 15, x: 0.0, y: 10.0)
                        .overlay {
                            Text(data[index])
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ScrollviewBootcamp()
}
