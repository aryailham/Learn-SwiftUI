//
//  StackBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct StackBootcamp: View {
    // Vstack -> vertical
    // Hstack -> horizontal
    // Zstack -> zIndex
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                Rectangle()
                    .fill(.red)
                .frame(maxWidth: .infinity, maxHeight: 100)
                Rectangle()
                    .fill(.blue)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                Rectangle()
                    .fill(.green)
                    .frame(maxWidth: .infinity, maxHeight: 100)
            }
            Rectangle()
                .fill(.blue)
                .frame(maxWidth: .infinity, maxHeight: 100)
            Rectangle()
                .fill(.green)
                .frame(maxWidth: .infinity, maxHeight: 100)
        }
    }
}

#Preview {
    StackBootcamp()
}
