//
//  ContextMenuBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI thinking")
                .font(.headline)
            Text("context menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            backgroundColor.clipShape(RoundedRectangle(cornerRadius: 16.0))
        )
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })

        }))
    }
}

#Preview {
    ContextMenuBootcamp()
}
